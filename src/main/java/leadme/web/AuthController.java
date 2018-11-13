package leadme.web;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
    
    
    @GetMapping("login")
    public void login() {}
    
    /*
    @RequestMapping(value="loginCheck.do", method=RequestMethod.POST)
    @ResponseBody
    public void loginCheck(@RequestBody Member member, HttpSession session) {
        
      try {
        authService.login(member).loginPass(session);
      } catch (Exception e) {
        System.out.println(e);
      }
    }
    */
    
    @RequestMapping("fblogin")
    public String fblogin(
            String accessToken,
            HttpSession session) {
        
        try {
          Member loginUser = authService.getFacebookMember(accessToken, "N"); // "N": 일반회원 하드코딩 test
          
          // 회원 정보를 세션에 보관한다.
          /*
          session.setAttribute("loginUser", loginUser);
          String redirectUrl = null;
          
          switch (type) {
          case "student":
              redirectUrl = "../student/list";
              break;
          case "teacher":
              redirectUrl = "../teacher/list";
              break; 
          case "manager":
              redirectUrl = "../manager/list";
              break; 
          }
          return "redirect:" + redirectUrl;
           */
          return "redirect:../main";
          
        } catch (Exception e) {
            e.printStackTrace();
            session.invalidate();
            return "redirect:form";
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
