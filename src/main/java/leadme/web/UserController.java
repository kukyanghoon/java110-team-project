package leadme.web;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

  @Autowired UserService userService;

  @RequestMapping(value="profile")
  public String login() {
    return "/user/profile";
  }

  @RequestMapping(value="changepw")
  public String changePw() {
    return "/user/changePw";
  }
  
  @RequestMapping(value = "/userProfileModify.do",method=RequestMethod.POST)
  @ResponseBody
  public Map<String, Object> userProfileModify(@RequestBody String userInfo, HttpSession session) {

    System.out.println(userInfo);

    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 

    try {
      map = mapper.readValue(userInfo, new TypeReference<Map<String, String>>(){});
      userService.userProfileModify(map, session);
      return map;
    } catch (Exception e) {
      System.out.println(e);
      return null;
    } 
  }

  @RequestMapping(value = "/userFile.do")
  @ResponseBody
  public Map<String, Object> userFile(MultipartHttpServletRequest multi, HttpSession session) {

    System.out.println("넘어오나?");

    Map<String, Object> map = new HashMap<>();
    try {

      map.put("image", userService.makePhotoFile(multi, session).getPhoto());
      return map;

    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }

  }
  
  @RequestMapping(value = "/pwChange.do", method=RequestMethod.POST)
  @ResponseBody
  public Map<String, Object> pwChange(@RequestBody String pw, HttpSession session) {
    
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    try {
      map = mapper.readValue(pw, new TypeReference<Map<String, String>>(){});
      System.out.println(map.get("mno"));
      System.out.println(map.get("oldPw"));
      System.out.println(map.get("newPw"));
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    Map<String, Object> map2 = new HashMap<String, Object>(); 
    try {
      userService.pwCheck(map, session);
      userService.pwModify(map);
      map2.put("aaa", "권형은");
      return map2;
    } catch (Exception e) {
      System.out.println(e);
      return null;
    }
    
    
    
    
    
  }
}
