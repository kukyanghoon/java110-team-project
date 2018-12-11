package leadme.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import leadme.domain.RealName;
import leadme.service.KftcService;

@Service
public class KftcServiceImpl implements KftcService {

  private static final String CLIENT_ID = "l7xxd19bee30de034dcaa0ddf7ec3fe11792";
  private static final String CLIENT_SECRET = "90aca2eab4f04ee28f68ef4d8f1105fa";
  private static final String SCOPE = "oob";
  private static final String GRANT_TYPE = "client_credentials";
  private static final String URL = "https://testapi.open-platform.or.kr";


  @Override
  public String requestToken() {

    MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();

    params.add("client_id", CLIENT_ID);
    params.add("client_secret", CLIENT_SECRET);
    params.add("scope", SCOPE);
    params.add("grant_type", GRANT_TYPE);

    RestTemplate restTemplate = new RestTemplate();

    String returnData = restTemplate.postForObject(URL+"/oauth/2.0/token", params, String.class);

    String token =  getValue(returnData,"access_token");
    System.out.println("token 저장 완료" + token);

    return token;

  }

  @Override
  public void realName(RealName realName, String token) throws Exception {

    RestTemplate restTemplate = new RestTemplate();

    HttpHeaders headers = new HttpHeaders();
    headers.setContentType(MediaType.APPLICATION_JSON);
    headers.setBearerAuth(token);

    HttpEntity<String> request = new HttpEntity<>(realJson(realName),headers);

    ResponseEntity<String> response = restTemplate.postForEntity(URL + "/v1.0/inquiry/real_name", request, String.class);

    System.out.println("응답값 : " + response.getBody());

    if(!(getValue(response.getBody(), "rsp_code").equals("A0000"))) {
      throw new Exception("유효하지 않은 계좌번호");
    }

  }

  private String realJson(RealName realName) {

    SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
    String tran_dtime = format.format(new Date());

    Gson gson = new Gson();
    JsonObject jsonObject = new JsonObject();

    jsonObject.addProperty("bank_code_std", realName.getBank_code_std());
    jsonObject.addProperty("account_num", realName.getAccount_num());
    jsonObject.addProperty("account_holder_info_type", " ");
    jsonObject.addProperty("account_holder_info", realName.getAccount_holder_info());
    jsonObject.addProperty("tran_dtime", tran_dtime);

    String data = gson.toJson(jsonObject);
    System.out.println("data : " + data);

    return data;

  }

  private String getValue(String returnData, String target) {
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 

    try {
      map = mapper.readValue(returnData, new TypeReference<Map<String, String>>(){});
    } catch (Exception e) {
      e.printStackTrace();
    }

    return (String) map.get(target);

  }


}