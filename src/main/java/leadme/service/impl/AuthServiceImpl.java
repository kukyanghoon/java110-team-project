package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
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
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("member", member);
    
    this.member = authDao.updatePw(map);
    System.out.println(this.member);
    if(this.member == null) {
      throw new Exception("일치하는 정보가 없습니다");
    }
    
    return this.member;
  }

}