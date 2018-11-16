package leadme.web;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.domain.Member;
import leadme.service.AuthService;

@Controller
@RequestMapping("/auth")
public class AuthController{

    AuthService authService;
    
    public AuthController(AuthService authService) {
        this.authService = authService;
    }
    
    @RequestMapping(value="login")
    public String login() {
      return "/auth/login";
    }
    
    @RequestMapping(value="loginCheck.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<String ,Object> loginCheck(@RequestBody Member member, HttpSession session) {
      Map<String ,Object> message = new HashMap<String, Object>();
      try {
        authService.login(member).loginPass(session);
        System.out.println("session에 아이디값 저장");
        System.out.println(((Member)session.getAttribute("memberInfo")).toString());
        message.put("message", true);
      } catch (Exception e) {
        System.out.println(e);
        return null;
      }
      return message;
    }
    
    @RequestMapping(value="googleLoginCheck.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<String ,Object> googleLoginCheck(@RequestBody Member member, HttpSession session) {
      Map<String ,Object> message = new HashMap<String, Object>();
        try {
          authService.socialLogin(member).loginPass(session);
          message.put("message", "로그인 성공");
          System.out.println("기존 google 아이디로 로그인 성공");
        } catch (Exception e) {
          member.setPath("google");
          authService.createSocialUser(member).loginPass(session);
          message.put("message", "자동 회원 가입 후 로그인 성공");
          System.out.println("google 아이디 자동 가입 후  로그인 성공");
        }
        System.out.println(((Member)session.getAttribute("memberInfo")).toString());
        return message;
    }
    
    @RequestMapping("fblogin")
    public String fblogin(
            String accessToken,
            HttpSession session) {
        
      Member loginUser = authService.getFacebookMember(accessToken, "N"); // "N": 일반회원 하드코딩 test
        try {
          authService.socialLogin(loginUser).loginPass(session);
          System.out.println("기존회원");
        } catch (Exception e) {
          loginUser.setPath("facebook");
          authService.createSocialUser(loginUser).loginPass(session);
        }
        System.out.println(((Member)session.getAttribute("memberInfo")).toString());
        return "redirect:../main";
    }
    
    @RequestMapping(value="signup")
    public String signUp() {
      return "/auth/signup";
    }
    
    @RequestMapping(value="signup.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<String ,Object> signUp(@RequestBody Member member) {
      Map<String ,Object> message = new HashMap<String, Object>();
      try {
        authService.createUser(member);
        message.put("message", "true");
        return message;
      } catch (Exception e) {
        System.out.println("이미 가입 되어있는 회원");
        return null;
      }
    }
    
    @RequestMapping("logout")
    public String logout(HttpSession session){
      System.out.println("session 초기화");
        session.invalidate();
        return "redirect:../main";
    }
}
