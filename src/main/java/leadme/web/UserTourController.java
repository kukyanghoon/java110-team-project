package leadme.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.domain.RealName;
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
  
  @RequestMapping("/myInfo")
  public String test() {
    return "/mypage/myInfo";
  }
  @RequestMapping("/myTour")
  public String test2() {
    return "/mypage/myTour";
  }
  
  
  //@CrossOrigin 서버단에서 CrossOrigin 해결하기 위해
  @RequestMapping("/accountTest")
  public String accountTest() {
    
    return "/mypage/accountTest";
  }
  
  @RequestMapping("requestToken.do")
  @ResponseBody
  public Map<String, Object> requestToken(@RequestBody RealName realName){
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
    
    Map<String, Object> message = new HashMap<String, Object>();
    
    System.out.println("realName 받아온거 : " +  realName);
    try {
      kftcService.realName(realName,kftcService.requestToken());
      message.put("message", "성공");
      return message;
    } catch (Exception e) {
      System.out.println(e);
      return null;
    }
    
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
  
  @RequestMapping("/guideMyTour")
  public String guideMyTour() {
    return "/mypage/guideMyTour";
  }
  
  
}
