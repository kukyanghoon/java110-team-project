package leadme.service.impl;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.ManagerDao;
import leadme.dao.StudentDao;
import leadme.dao.TeacherDao;
import leadme.domain.Member;
import leadme.service.AuthService2;

@Service
public class AuthServiceImpl2 implements AuthService2 {

  @Autowired ManagerDao managerDao;
  @Autowired TeacherDao teacherDao;
  @Autowired StudentDao studentDao;
  
  @Override
  public Member getMember(
          String email, String password, String memberType) {
      
      HashMap<String,Object> params = new HashMap<>();
      params.put("email", email);
      params.put("password", password);
      
      if (memberType.equals("manager")) {
          return managerDao.findByEmailPassword(params);
          
      } else if (memberType.equals("student")) {
          return studentDao.findByEmailPassword(params);
          
      } else if (memberType.equals("teacher")) {
          return teacherDao.findByEmailPassword(params);
          //프록시 => 인터페이스구현을 대신해주는 
      } else {
          return null;
      }
  }
  
  
  
  
  
  
  
}










