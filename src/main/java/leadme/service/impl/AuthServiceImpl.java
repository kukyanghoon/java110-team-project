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

@Service
public class AuthServiceImpl implements AuthService {

  @Autowired AuthDao authDao;
  
  @Autowired JavaMailSender mailSender;

  
  private Member member;
  private Guide guide;

  @Override
  public AuthServiceImpl login(Member member) throws Exception {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("email", member.getEmail());
    param.put("password", member.getPassword());
    
    this.member = authDao.login(param);
    
    if(this.member == null) {
      throw new Exception("db안에 일치하는 회원 정보 없음");
    }
    return this;
  }
  
  @Override
  public void loginPass(HttpSession session) {
    session.setAttribute("memberInfo", this.member);
    
    System.out.println("session에 회원 정보 저장");
  }
  
  @Override
  public AuthServiceImpl socialLogin(Member member) throws Exception {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("email", member.getEmail());
    
    this.member = authDao.socialLogin(param);
    if(this.member == null) {
      throw new Exception("db안에 일치하는 social회원 정보 없음");
    }
    return this;
  }
  
  @Override
  public AuthServiceImpl createSocialUser(Member member) {
    
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
      param.put("photo", "default.png");
    }
    param.put("photo", member.getPhoto());
    param.put("mtype", member.getMtype());
    param.put("path", member.getPath());
    param.put("active", member.getActive());
    
    this.member = member;
    authDao.createSocialUser(param);
    
    return this;
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
  
  @Override
  public void createUser(Member member) throws Exception{
    
    System.out.println(member.getEmail());
    System.out.println(member.getName());
    System.out.println(member.getPassword());
    
    member.setCert_email("N");
    member.setMtype("U");
    member.setActive("N");
    member.setPath("leadme");
    
    System.out.println(authDao.createUser(member));
  }
  
  @Override
  public AuthServiceImpl findUser(Member member) throws Exception{
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("member", member);
    
    this.member = authDao.findUser(map);
    System.out.println(this.member);
    if(this.member == null) {
      throw new Exception("일치하는 정보가 없습니다");
    }
    
    return this;
  }
  
  @Override
  public AuthServiceImpl updatePw(Member member) throws Exception{
    
    String tempPw="";
    String words[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","!","@","#","$","%","^","&","*"};
    
    Random random = new Random();
    for(int i=1; i<=12; i++) {
         
        tempPw+=words[random.nextInt(70)];
         
    }
    System.out.println(tempPw);
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("email", member.getEmail());
    map.put("password", tempPw);
    
    authDao.updatePw(map);
    
    this.member.setPassword(tempPw);
    
    return this;
  }
  
  
  @Override
  public AuthServiceImpl mailSender() throws MessagingException{
    
    
    MimeMessage message = mailSender.createMimeMessage(); 
    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    
    System.out.println(this.member);
    
    String msg = "<div><h1>"+ this.member.getPassword() +"</h1><p>끝이없는 인생의 긴긴다리...</p></div>";
    
    
    
    messageHelper.setTo(this.member.getEmail()); 
    messageHelper.setText(msg);
    messageHelper.setFrom("leadme504@gmail.com"); 
    messageHelper.setSubject("LEADME 임시 비밀번호 입니다!");
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
    member.setPhoto("default.jpg");
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
    System.out.println("생성된 member : " + this.member);
    System.out.println("생성된 guide : " +this.guide);
    
    
    
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

}