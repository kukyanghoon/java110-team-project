package leadme.web;

import java.util.HashMap;
import java.util.Map;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.domain.Member;
import leadme.service.AuthService;
import leadme.service.EmailService;

@Controller
@RequestMapping("/auth")
public class AuthController{

  @Autowired AuthService authService;
  @Autowired EmailService emailService;

  @RequestMapping(value="guideSignup")
  public String guideSignup() {
    return "/auth/guideSignup";
  }

  @RequestMapping(value="guideSignup.do", method=RequestMethod.POST)
  @ResponseBody
  public Map<String ,Object> guideSignup(@RequestBody String guideInfo) {

    System.out.println(guideInfo);

    Map<String ,Object> message = new HashMap<String, Object>();

    try {
      authService.createGuide(guideInfo);
      message.put("message", true);
    } catch (Exception e) {
      System.out.println(e);
      return null;
    }
    return message;

  }



  @RequestMapping(value="login")
  public String login(HttpSession session, HttpServletRequest request) {
    return "/auth/login";
  }

  @RequestMapping(value="loginCheck.do", method=RequestMethod.POST)
  @ResponseBody
  public Map<String ,Object> loginCheck(@RequestBody Member member, HttpSession session, HttpServletRequest request) {
    Map<String ,Object> message = new HashMap<String, Object>();
    try {
      authService.loginPass(session,authService.login(member));
      System.out.println("session에 아이디값 저장");
      System.out.println(((Member)session.getAttribute("memberInfo")).toString());
      message.put("message", true);
      message.put("url", request.getHeader("referer"));
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
      authService.loginPass(session,authService.socialLogin(member));
      message.put("message", "로그인 성공");
      System.out.println("기존 google 아이디로 로그인 성공");
    } catch (Exception e) {
      member.setPath("google");
      authService.loginPass(session,authService.createSocialUser(member));
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
      authService.loginPass(session,authService.socialLogin(loginUser));
      System.out.println("기존회원");
    } catch (Exception e) {
      loginUser.setPath("facebook");
      authService.loginPass(session,authService.createSocialUser(loginUser));
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
      System.out.println(e);
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

  @RequestMapping(value = "findPw.do")
  @ResponseBody
  public Map<String,Object> find_pw_form(@RequestBody Member member ) {

    System.out.println(member.getEmail());

    Map<String,Object> message = new HashMap<>();

    try {
      authService.findUser(member).updatePw(member).mailSender(member);
      message.put("message", "회원확인 성공!");

      return message;
    } catch (Exception e) {
      System.out.println(e);
      return null;
    }
  }

  @GetMapping("emailAuth/{mno}")
  public String list2(@PathVariable String mno, Model model){
    System.out.println("emailAuth");
    System.out.println(mno);
    
    try {
      authService.certificateEmail(mno);
      System.out.println("이메일 인증 처리 완료!!");
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    return "redirect:/app/main";
  }

  @RequestMapping(value="emailAuthTest")
  public String emailAuthTest() {
    return "/auth/emailAuthTest";
  }

  @RequestMapping(value = "emailAuth.do")
  @ResponseBody
  public Map<String,Object> emailAuth(HttpSession session) {
    
    Member member = (Member)session.getAttribute("memberInfo");
    System.out.println(member);
    System.out.println("할렐루이야");
    try {
      emailService.mailAuth(member);
      System.out.println("끼룩끼룩");
    } catch (MessagingException e) {
      e.printStackTrace();
    }
    
    return null;
  }

}
