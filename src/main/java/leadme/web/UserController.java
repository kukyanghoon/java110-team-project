package leadme.web;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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





}
