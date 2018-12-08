package leadme.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.domain.Deposit;
import leadme.domain.DepositRequest;
import leadme.domain.RealName;
import leadme.service.MainService;

@RequestMapping("/kftc")
@Controller
public class KftcController { 

    public static final String BASE_API_URI = "https://testapi.open-platform.or.kr";
    public static final String CLIENT_ID = "l7xx5272bd04ff3547c7ad56e581a10ab444";
    public static final String CLIENT_SECRET = "3161bda5303743aaafc61cfbcc854bec";
    public static final String RETURN_URL = "http://localhost:8888/app/kftc/authorize_res";
    public static final String ACCESS_TOKEN = "d810b708-68a7-4c81-893e-a9a038fdc929";
    public static final String LANG_EN = "en";
    /*MainService mainService;
    ServletContext sc;
    SessionLocaleResolver localeResolver;
    MessageSource messageSource;
*/
    
    @Autowired MainService mainService;
    @Autowired SessionLocaleResolver localeResolver;
    @Autowired MessageSource messageSource;
    @Autowired ServletContext sc;
    
    
    /*public KftcController(
            MainService mainService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.mainService = mainService;
        this.localeResolver = localeResolver;
        this.messageSource = messageSource;
        this.sc = sc;
    }*/

    
    @GetMapping("authorize")
    public String authorize(
        Locale locale,
        HttpServletRequest request,
        HttpServletResponse response,
        @RequestParam(defaultValue="10")  String rnk_item,
        Model model) {

    /*
     * JAVA locale test System.out.println("Locale==>"+locale);
     * System.out.println(localeResolver.resolveLocale(request));
     * System.out.println(messageSource.getMessage("site.title", null, "default text", locale));
     */

    if (!LANG_EN.equals(locale.toString()))
      locale = localeResolver.resolveLocale(request);

    request.setAttribute("lang", locale.toString());


    return "redirect:" + BASE_API_URI + "/oauth/2.0/authorize2?response_type=code&client_id="
        + CLIENT_ID + "&redirect_uri=" + RETURN_URL + "&scope=login+transfer"; 
        
    }
    
    @GetMapping("token")
    public void token(String code) {
//      System.out.println("authrize code==>"+code);
//      System.out.println("callback!!!!");
      
      String url = BASE_API_URI + "/oauth/2.0/token";
      RestTemplate restTemplate = new RestTemplate();
      
      HttpHeaders headers = new HttpHeaders();
//      headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

      MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
      map.add("client_id", CLIENT_ID);
      map.add("client_secret", CLIENT_SECRET);
      map.add("scope", "oob");
      map.add("grant_type", "client_credentials");
      
      HttpEntity<MultiValueMap<String, String>> request = 
          new HttpEntity<MultiValueMap<String, String>>(map, headers);

      ResponseEntity<String> response = restTemplate.postForEntity( url, request , String.class );
      System.out.println(response.toString());
      
      
/* response
<200,{
  "access_token":"d810b708-68a7-4c81-893e-a9a038fdc929",
  "token_type":"Bearer",
  "expires_in":7776000,
  "scope":"oob",
  "client_use_code":"2018003000"
}
,{Pragma=[no-cache], Access-Control-Allow-Origin=[*], Content-Type=[application/json;charset=UTF-8], Content-Length=[160], Date=[Thu, 22 Nov 2018 06:09:55 GMT], Server=[]}>       
*/
      
      
    }
    
    /*
     * 계좌번호 이용 입금이체  >> PostMapping 으로 수정할 것
     * http://localhost:8888/app/kftc/deposit2?bank_code_std=023&account_num=10020123456&account_holder_name=%EC%95%88%EC%A7%84%ED%98%B8&tran_amt=18000 
     */
    @RequestMapping(value="deposit2",
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public String deposit2(
        String bank_code_std,
        String account_num,
        String account_holder_name,
        @RequestParam(defaultValue="가이드수익정산") String print_content,
        String tran_amt) throws JsonProcessingException {
      
      String url = BASE_API_URI + "/v1.0/transfer/deposit2";
      
      
      Deposit deposit = new Deposit();
      deposit.setWd_pass_phrase("NONE");
      deposit.setWd_print_content(account_holder_name); /* 출금적요 */
      deposit.setName_check_option("off");
      deposit.setReq_cnt(1);
          
      List<DepositRequest> list = new ArrayList<DepositRequest>();
      list.add(new DepositRequest("1",bank_code_std,account_num,account_holder_name.trim(),print_content,tran_amt));
      /* 예금주명 최대10자 */

      deposit.setReq_list(list);
      
      SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
      String dtime = format.format(new Date());
      deposit.setTran_dtime(dtime);
      
      return executePostApiCall(url,deposit);
    }
    
    /*
     * 계좌실명조회     차후에 PostMapping 으로 수정할것  민감정보 있음.
     * http://localhost:8888/app/kftc/realname?bank_code_std=023&account_num=10020123456&birth=901205
     */
    @RequestMapping(value="realname",
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public String realname(String bank_code_std, String account_num, String birth) throws JsonProcessingException{
      String url = BASE_API_URI + "/v1.0/inquiry/real_name";
      
      
      RealName realName = new RealName();
      realName.setBank_code_std(bank_code_std);
      realName.setAccount_num(account_num);
      realName.setAccount_holder_info_type(" ");
      realName.setAccount_holder_info(birth);
      
      SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
      String tran_dtime = format.format(new Date());
      
      realName.setTran_dtime(tran_dtime);
      
      
      return executePostApiCall(url, realName);
    }
    
    
    public String executePostApiCall(String url, Object obj) throws JsonProcessingException {
      
      RestTemplate restTemplate = new RestTemplate();
      
      HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
      headers.setBearerAuth(ACCESS_TOKEN);
      
      String jsonInString = new ObjectMapper().writeValueAsString(obj);
      System.out.println("json==>"+jsonInString);
      
      HttpEntity<String> request = 
          new HttpEntity<String>(jsonInString, headers);

      ResponseEntity<String> response = restTemplate.postForEntity( url, request , String.class );
      System.out.println(response.getBody());
      return response.getBody();
    }
}







