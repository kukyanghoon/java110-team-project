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

}