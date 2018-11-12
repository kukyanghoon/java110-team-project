package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.AuthDao;
import leadme.domain.Member;
import leadme.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {

  @Autowired AuthDao authDao;
  
  
  @Override
  public Member login(Member member) {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("email", member.getEmail());
    param.put("password", member.getPassword());
    
    return authDao.login(param);
  }
  
  @Override
  public void loginPass(Member member, HttpSession session) {
    
    session.setAttribute("member", member);
    
    Member loginMember = (Member)session.getAttribute("member");
    System.out.println("loginPass");
    System.out.println(loginMember.getEmail());
    System.out.println(loginMember.getName());
    System.out.println(loginMember.getPhoto());
    System.out.println(loginMember.getPath());
  }



}










