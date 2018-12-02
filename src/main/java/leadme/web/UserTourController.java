package leadme.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import leadme.domain.TourReq;
import leadme.service.KftcService;
import leadme.service.UserTourService;

@Controller
@RequestMapping("/mypage")
public class UserTourController {

  @Autowired UserTourService userTourService;
  @Autowired KftcService kftcService;

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
 /*
  * 
  * json 으로 요청 할 수는 없을까...?????
  * 
    System.out.println(obj);
    
    Gson gson = new Gson();
    JsonObject jsonObject = new JsonObject();
    
    jsonObject.addProperty("client_id", "l7xxd19bee30de034dcaa0ddf7ec3fe11792");
    jsonObject.addProperty("client_secret", "90aca2eab4f04ee28f68ef4d8f1105fa");
    jsonObject.addProperty("scope", "oob");
    jsonObject.addProperty("grant_type", "client_credentials");
    
    String data = gson.toJson(jsonObject);
    System.out.println(data);
  */  
    System.out.println();
    
    
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    try {
        map = mapper.readValue(kftcService.requestToken(), new TypeReference<Map<String, String>>(){});
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    String token = (String) map.get("access_token");
    System.out.println("token : " + token);
    
    SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
    String tran_dtime = format.format(new Date());
    
    Gson gson = new Gson();
    JsonObject jsonObject = new JsonObject();
    
    /*
     *  테스트 데이터로만 조회 가능
    */
    jsonObject.addProperty("bank_code_std", "002");
    jsonObject.addProperty("account_num", "1234567890123456");
    jsonObject.addProperty("account_holder_info_type", " ");
    jsonObject.addProperty("account_holder_info", "880101");
    jsonObject.addProperty("tran_dtime", tran_dtime);

    String data = gson.toJson(jsonObject);
    System.out.println("data : " + data);
    
    kftcService.realName(token, data);
  
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
