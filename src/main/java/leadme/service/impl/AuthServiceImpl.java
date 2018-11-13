package leadme.service.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.dao.AuthDao;
import leadme.domain.Member;
import leadme.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {

  @Autowired AuthDao authDao;
  
  Member member;
  
  @Override
  public AuthServiceImpl login(Member member) throws Exception {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("email", member.getEmail());
    param.put("password", member.getPassword());
    
    this.member = authDao.login(param);
    
    if(this.member == null) {
      throw new Exception("db안에 일치흐는 회원 정보 없음");
    }
    return this;
  }
  
  @Override
  public void loginPass(HttpSession session) {
    session.setAttribute("member", this.member);
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
  public AuthServiceImpl createUser(Member member) {
    
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
    
    authDao.createUser(param);
    
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
  /*
    System.out.println(response.get("id"));
    System.out.println(response.get("name"));
    System.out.println(response.get("email"));
    System.out.println(response.get("picture"));
    
    String a = String.valueOf(response.get("picture"));
    System.out.println(a);
    
    ObjectMapper mapper = new ObjectMapper();
    mapper.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
 
    
    Map<String, Object> map = new HashMap<String, Object>();
    try {
      map = mapper.readValue(a, new TypeReference<Map<String, String>>(){});
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    
    System.out.println(map);
    System.out.println(map.get("data"));
    System.out.println(map.get("url"));
    
    
    // Facebook 사용자의 이메일로 현재 서버의 사용자 정보를 찾는다.
    Member member = null;
    if (type.equals("manager")) {
        member = managerDao.findByEmail(response.get("email").toString());
    } else if (type.equals("student")) {
        member = studentDao.findByEmail(response.get("email").toString());
    } else if (type.equals("teacher")) {
        member = teacherDao.findByEmail(response.get("email").toString());
    }
    
    // 해당 회원을 현재 서버에서 찾았으면 그 정보를 리턴한다.
    if (member != null)
      return member;
    
    // 현재 서버에 가입한 사용자가 아니라면, 
    // 페이스북 기본 정보를 가지고 자동으로 회원 등록한다.
    //
    
    Member newbie = createMember(type, 
        response.get("name").toString(),
        response.get("email").toString(),
        "1111");
    
    memberDao.insert(newbie);
    
    if (type.equals("manager")) {
      ((Manager)newbie).setPosition("미정");
      
      managerDao.insert((Manager)newbie);
      
    } else if (type.equals("student")) {
      ((Student)newbie).setSchool("미정");
      ((Student)newbie).setWorking(false);
      studentDao.insert((Student)newbie);
      
    } else if (type.equals("teacher")) {
      ((Teacher)newbie).setPay(0);
      ((Teacher)newbie).setSubjects("미정");
      teacherDao.insert((Teacher)newbie);
    }
    
    return newbie;
    */
    return null;
  }

}