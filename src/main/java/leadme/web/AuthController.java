package leadme.web;

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
    public void loginCheck(@RequestBody Member member, HttpSession session) {
        
      try {
        authService.login(member).loginPass(session);
      } catch (Exception e) {
        System.out.println(e);
      }
      
    }
    
    @RequestMapping(value="signup")
    public String signup() {
      return "/auth/signup";
    }
    
    @RequestMapping(value="join.do", method=RequestMethod.POST)
    @ResponseBody
    public void join(@RequestBody Member member) {
      
      System.out.println(member.getName());
      System.out.println(member.getEmail());
      System.out.println(member.getPassword());
      
      
      
      
    }
    
    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login";
    }
}
