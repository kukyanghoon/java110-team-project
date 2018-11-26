package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import leadme.dao.AuthDao;
import leadme.domain.Member;
import leadme.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {

  @Autowired AuthDao authDao;
  
  private Member member;

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
    
    System.out.println("회원 가입 성공 !! : " + authDao.createUser(member));
  }
  
  @Override
  public Member findUser(Member member) throws Exception{
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("member", member);
    
    this.member = authDao.findUser(map);
    System.out.println(this.member);
    if(this.member == null) {
      throw new Exception("일치하는 정보가 없습니다");
    }
    
    return this.member;
  }
  
  @Override
  public Member updatePw(Member member) throws Exception{
    
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
    
    return this.member;
  }
  
  
  
  
  public void mailSender() throws AddressException, MessagingException { 
    // 네이버일 경우 smtp.naver.com 을 입력합니다. // Google일 경우 smtp.gmail.com 을 입력합니다. 
    String host = "smtp.gmail.com"; 
    final String username = "leadme504"; //네이버 아이디를 입력해주세요. @nave.com은 입력하지 마시구요. 
    final String password = "flemal123"; //네이버 이메일 비밀번호를 입력해주세요. 
    int port=587; //포트번호 
    
    // 메일 내용 
    String recipient = "floyd9999999@gmail.com"; //받는 사람의 메일주소를 입력해주세요. 
    String subject = "메일테스트"; //메일 제목 입력해주세요. 
    String body = username+"님으로 부터 메일을 받았습니다."; //메일 내용 입력해주세요. 
    Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 // SMTP 서버 정보 설정 
    props.put("mail.smtp.host", host); 
    props.put("mail.smtp.port", port); 
    props.put("mail.smtp.auth", "true"); 
    props.put("mail.smtp.ssl.enable", "true"); 
    props.put("mail.smtp.ssl.trust", host); //Session 생성 
    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
      String un=username; 
      String pw=password; 
      protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
        return new javax.mail.PasswordAuthentication(un, pw); 
        } 
      }); 
    session.setDebug(true); //for debug 
    Message mimeMessage = new MimeMessage(session); //MimeMessage 생성 
    mimeMessage.setFrom(new InternetAddress("leadme504@gmail.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
    mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
    mimeMessage.setSubject(subject); //제목셋팅 
    mimeMessage.setText(body); //내용셋팅 
    Transport.send(mimeMessage); //javax.mail.Transport.send() 이용
    }
  

  
  
  

}