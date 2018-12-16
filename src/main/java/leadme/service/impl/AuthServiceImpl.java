package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.dao.AuthDao;
import leadme.domain.Guide;
import leadme.domain.Member;
import leadme.service.AuthService;
import leadme.service.RankingService;

@Service
public class AuthServiceImpl implements AuthService {

  @Autowired AuthDao authDao;
  
  @Autowired JavaMailSender mailSender;

  @Autowired RankingService rankingService;
  

  @Override
  public Member login(Member member) throws Exception {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("email", member.getEmail());
    param.put("password", member.getPassword());
    
    member = authDao.login(param);
    
    if(member == null) {
      throw new Exception("db안에 일치하는 회원 정보 없음");
    }
    return member;
  }
  
  @Override
  public void loginPass(HttpSession session ,Member member) {
    
    System.out.println("loginPass() member : " + member);
    
    if(member.getMtype().equals("G")) {
      System.out.println("가이드닷!!");
      System.out.println("가이드 확인용 : " + authDao.findGuide(member));
      session.setAttribute("guideInfo", authDao.findGuide(member));
    }
    
    session.setAttribute("memberInfo", member);
    
    System.out.println("session에 회원 정보 저장");
  }
  
  @Override
  public Member socialLogin(Member member) throws Exception {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("email", member.getEmail());
    
    Member loginMember = new Member();
    
    loginMember = authDao.socialLogin(param);
    if(loginMember == null) {
      throw new Exception("db안에 일치하는 social회원 정보 없음");
    }
    return loginMember;
  }
  
  @Override
  public Member createSocialUser(Member member) {
    
    member.setPassword(String.valueOf(System.currentTimeMillis()));
    member.setCert_email("Y");
    member.setMtype("U");
    member.setActive("N");
    
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("name", member.getName());
    param.put("password", member.getPassword());
    param.put("cert_email", member.getCert_email());
    param.put("email", member.getEmail());
    if(member.getPhoto() == null) {
      param.put("photo", "default.jpeg");
    }
    param.put("photo", member.getPhoto());
    param.put("mtype", member.getMtype());
    param.put("path", member.getPath());
    param.put("active", member.getActive());
    
    authDao.createSocialUser(param);
    
    return member;
  }

  @Override
  public Member getFacebookMember(String accessToken, String memberType) {
    
    RestTemplate restTemplate = new RestTemplate();
    
    @SuppressWarnings("rawtypes")
    Map response = restTemplate.getForObject(
        "https://graph.facebook.com/v3.2/me?access_token={v1}&fields={v2}", 
        Map.class,
        accessToken,
        "id,name,email,picture{url}");
    System.out.println(response.get("id"));
    System.out.println(response.get("name"));
    System.out.println(response.get("email"));
    System.out.println(response.get("picture.data.url"));
    
    Member facebookMember = new Member();
    facebookMember.setName(response.get("name").toString());
    facebookMember.setEmail(response.get("email").toString());
    facebookMember.setPhoto("https://graph.facebook.com/v3.2/" + response.get("id").toString() + "/picture");
    
    return facebookMember;
  }
  
  @Transactional
  @Override
  public void createUser(Member member) throws Exception{
    
    System.out.println(member.getEmail());
    System.out.println(member.getName());
    System.out.println(member.getPassword());
    
    member.setCert_email("N");
    member.setMtype("U");
    member.setActive("N");
    member.setPath("leadme");
    member.setLang("ko");
    member.setPhoto("default.jpeg");
    
    System.out.println(authDao.createUser(member));
    authDao.createTmemb(member);
    
  }
  
  @Override
  public AuthServiceImpl findUser(Member member) throws Exception{
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("member", member);
    
    Member findmember = new Member();
    
        findmember = authDao.findUser(map);
    System.out.println(findmember);
    if(findmember == null) {
      throw new Exception("일치하는 정보가 없습니다");
    }
    
    return this;
  }
  
  @Override
  public AuthServiceImpl updatePw(Member member) throws Exception{
    
    String tempPw = ramdomText();
    System.out.println(tempPw);
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("email", member.getEmail());
    map.put("password", tempPw);
    
    authDao.updatePw(map);
    
    member.setPassword(tempPw);
    
    return this;
  }

  private String ramdomText() {
    String tempPw="";
    String words[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","!","@","#","$","%","^","&","*"};
    
    Random random = new Random();
    for(int i=1; i<=12; i++) {
         
        tempPw+=words[random.nextInt(70)];
         
    }
    return tempPw;
  }
  
  
  @Override
  public AuthServiceImpl mailSender(Member member) throws MessagingException{
    
    
    MimeMessage message = mailSender.createMimeMessage(); 
    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    
    System.out.println(member);
    
    String msg = 
        "    <img src=\"https://d2ur7st6jjikze.cloudfront.net/themes/413_mobile_medium_1531300354.jpg?1531300354\" alt=\"logo\"/>\r\n" + 
        "    <div style=\"width: 540px; height: 400px; padding: 30px 10px;\">\r\n" + 
        "      <h1 style=\"font-size: 55px;\">고객님, 임시 비밀번호를 안내해드립니다.</h1><hr>\r\n" + 
        "             \r\n" + 
        "              <h2>임시 비밀번호 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;" + member.getPassword() + "</h2>\r\n" + 
        "     <p style=\"font-size: 90%\"><br>\r\n" + 
        "      고객님의 요청으로 발급된 임시 비밀번호입니다.<br>\r\n" + 
        "      임시 비밀번호를 통해 로그인 하신 후 <span style=\"color: red\">새로운 비밀번호를 설정</span>해 주시기 바랍니다.<br>\r\n" + 
        "       </p>\r\n" + 
        "    </div>";
    
    
    
    messageHelper.setTo(member.getEmail()); 
    messageHelper.setText(msg);
    messageHelper.setFrom("leadme504@gmail.com"); 
    messageHelper.setSubject("LEADME 임시 비밀번호 입니다.");
    message.setContent(msg, "text/html; charset=utf-8");
    
    mailSender.send(message);
    
    return this;
  }
  

  @Transactional(
      transactionManager="transactionManager",
      propagation=Propagation.REQUIRED,
      rollbackFor=Exception.class)
  @Override
  public void createGuide(String guideInfo) {
    
    Map<String, Object> data = parseJsonData(guideInfo);
    
    System.out.println("넘어 옵니까??");
    
    Member member = new Member();
    Guide guide = new Guide();
    
    System.out.println((String)data.get("name"));
    
    member.setName((String)data.get("name"));
    member.setEmail((String)data.get("email"));
    member.setPassword((String)data.get("password"));
    member.setCert_email("N");
    member.setPhoto("default.jpeg");
    member.setMtype("G");
    member.setActive("N");
    member.setPath("leadme");
    
    int mno = authDao.createUser(member);
    
    System.out.println("회원 번호 : " + mno);
    System.out.println("제발제발");
    System.out.println("member 끝");
    
    guide.setMno(member.getNo());
    guide.setA_acc((String)data.get("a_aac"));
    guide.setTel((String)data.get("tel"));
    guide.setBirth((String)data.get("birth"));
    guide.setBnk_cd((String)data.get("bnk_cd"));
    guide.setOwner(member.getName());
    
    guide.setIntro("잘 부탁 드립니다");
    guide.setCash(0);
    
    int aaa =  authDao.createGuideUser(guide);
    
    System.out.println(aaa);
    
    
  }
  
  @Override
  public void certificateEmail(String mno) throws Exception {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", mno);
    int ok = authDao.certificateEmail(params);
    if(ok <= 0) {
      throw new Exception("해당하는 회원이 없습니다!!");
    }
  }
  
  
  private Map<String, Object> parseJsonData(String jsonData) {
    
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    try {
        map = mapper.readValue(jsonData, new TypeReference<Map<String, String>>(){});
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return map;
  }
  
  
  
  @Override
  public void goodbye(Member member) throws Exception {
    
    Map<String, Object> param = new HashMap<>();
    param.put("mno", member.getNo());
    param.put("pwd", member.getPassword());
    param.put("email", ramdomText());
    param.put("byePwd", System.currentTimeMillis());
    
    int a = authDao.goodbye(param);
    System.out.println(a);
    
    if(a <= 0) {
      throw new Exception("회원 정보 ");
    }
    
    
  }
  
  

}