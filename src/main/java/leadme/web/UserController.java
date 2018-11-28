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

  @RequestMapping(value = "/userProfileModify.do",method=RequestMethod.POST)
  @ResponseBody
  public void userProfileModify(@RequestBody String userInfo) {

    System.out.println(userInfo);

    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 

    try {
      map = mapper.readValue(userInfo, new TypeReference<Map<String, String>>(){});
    } catch (Exception e) {
      System.out.println(e);
    } 

    userService.userProfileModify(map);

  }

  @RequestMapping(value = "/userFile.do")
  @ResponseBody
  public Map<String, Object> userFile(MultipartHttpServletRequest multi, HttpSession session) {

    System.out.println("넘어오나?");

    Map<String, Object> map = new HashMap<>();
    try {

      map.put("image", userService.makePhotoFile(multi, session).callBackUser().getPhoto());
      return map;

    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }

  }
}
