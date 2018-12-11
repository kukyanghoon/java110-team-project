package leadme.web;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.domain.Member;
import leadme.service.AuthService;

@RestController
@RequestMapping("/goodbye")
public class GoodByeController{
  @Autowired AuthService authService;

  @RequestMapping(value="recapchaRequest.do")
  public String recapchaRequest(@RequestBody String response) {

    
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    try {
        map = mapper.readValue(response, new TypeReference<Map<String, String>>(){});
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    
    MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
    
    params.add("secret", "6LdhbXkUAAAAAJ0GIYB_H7x2eP9HETEbt_9nSypb");
    params.add("response", (String)map.get("response"));
    params.add("remoteip", "localhost");
    
    RestTemplate restTemplate = new RestTemplate();
    
    String returnData = restTemplate.postForObject("https://www.google.com/recaptcha/api/siteverify", params, String.class);
    
    System.out.println(returnData);
    
    try {
      map = mapper.readValue(returnData, new TypeReference<Map<String, String>>(){});
  } catch (Exception e) {
      e.printStackTrace();
  }
    
    
    System.out.println((String)map.get("success"));
    if(((String)map.get("success")).equals("true")) {
    return (String)map.get("success");
    }else {
      return null;
    }
  }

  @RequestMapping(value="goodBye.do")
  public Map<String, Object> goodBye(@RequestBody Member member, HttpSession sessoin) {
    
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    System.out.println(member);
    try {
      authService.goodbye(member);
      sessoin.invalidate();
      map.put("message", "success");
      return map;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
    
  }
  
  
}
