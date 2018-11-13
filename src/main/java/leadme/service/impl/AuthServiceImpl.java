package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import leadme.dao.AuthDao;
import leadme.domain.Manager;
import leadme.domain.Member;
import leadme.domain.Student;
import leadme.domain.Teacher;
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
    Member loginMember = (Member)session.getAttribute("member");
    
  }

  @Override
  public Member getFacebookMember(String accessToken, String memberType) {
    
    RestTemplate restTemplate = new RestTemplate();
    
    
    @SuppressWarnings("rawtypes")
    Map response = restTemplate.getForObject(
        "https://graph.facebook.com/v3.2/me?access_token={v1}&fields={v2}", 
        Map.class,
        accessToken,
        "id,name,email");
  
    System.out.println(response.get("id"));
    System.out.println(response.get("name"));
    System.out.println(response.get("email"));
    /*
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