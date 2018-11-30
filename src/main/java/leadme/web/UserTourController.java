package leadme.web;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import leadme.domain.TourReq;
import leadme.service.UserTourService;

@Controller
@RequestMapping("/mypage")
public class UserTourController {

  @Autowired UserTourService userTourService;

  @RequestMapping("/coming")
  public String coming() {
    /*try {
      List<TourReq> list = userTourService.comingTourList("1");
      System.out.println(list.size());
      for (TourReq tour : list) {
        System.out.println(tour);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }*/
    return "/mypage/coming";
  }
  
  @RequestMapping("/test")
  public String test() {
    return "/mypage/test";
  }
  @RequestMapping("/test2")
  public String test2() {
    return "/mypage/test2";
  }
  
  
  //@CrossOrigin 서버단에서 CrossOrigin 해결하기 위해
  @RequestMapping("/accountTest")
  public String accountTest() {
    
    return "/mypage/accountTest";
  }
  
  @RequestMapping("requestToken.do")
  @ResponseBody
  public void requestToken(@RequestBody String obj){
 
    System.out.println(obj);
    
    Gson gson = new Gson();
    JsonObject jsonObject = new JsonObject();
    
    jsonObject.addProperty("client_id", "l7xxd19bee30de034dcaa0ddf7ec3fe11792");
    jsonObject.addProperty("client_secret", "90aca2eab4f04ee28f68ef4d8f1105fa");
    jsonObject.addProperty("scope", "oob");
    jsonObject.addProperty("grant_type", "client_credentials");
    
    String data = gson.toJson(jsonObject);
    System.out.println(data);
    
    RestTemplate restTemplate = new RestTemplate();
    
    Map returnData = restTemplate.postForObject("https://openapi.open-platform.or.kr/oauth/2.0/token", data, Map.class);
    
    /*https://testapi.open-platform.or.kr/oauth/2.0/token*/    
    
    /*https://openapi.open-platform.or.kr/oauth/2.0/token*/    
    
    /*ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    map = mapper.readValue(data, new TypeReference<Map<String, String>>(){});*/
    
    System.out.println(returnData);
    System.out.println(returnData.get("access_token"));
    System.out.println(returnData.get("token_type"));
    
    
  
  }
  
  
  
  @RequestMapping("/gone")
  public String gone() {
    /*try {
      List<TourReq> list = userTourService.goneTourList("1");
      System.out.println(list.size());
      for (TourReq tour : list) {
        System.out.println(tour);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }*/
    return "/mypage/gone";
  }
  
  
  @RequestMapping("coming.do")
  @ResponseBody
  public List<TourReq> comingList(@RequestBody String mno){
    System.out.println("aaa");
    System.out.println(mno);
    try {
      List<TourReq> list = userTourService.comingTourList(mno);
      System.out.println(list.size());
      for (TourReq tour : list) {
        System.out.println(tour);
      }
      return list;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  
  }
  
  @RequestMapping("gone.do")
  @ResponseBody
  public List<TourReq> gone(@RequestBody String mno){
    System.out.println("aaa");
    System.out.println(mno);
    try {
      List<TourReq> list = userTourService.goneTourList(mno);
      System.out.println(list.size());
      for (TourReq tour : list) {
        System.out.println(tour);
      }
      return list;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  
  
  }
  
  @RequestMapping("cancel.do")
  @ResponseBody
  public List<TourReq> cancelList(@RequestBody String mno){
    System.out.println("aaa");
    System.out.println(mno);
    try {
      List<TourReq> list = userTourService.cancelTourList(mno);
      System.out.println(list.size());
      for (TourReq tour : list) {
        System.out.println(tour);
      }
      return list;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  
  }
  
  
  
  
}
