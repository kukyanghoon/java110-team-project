package leadme.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.java110.cms.dao.ManagerDao;
import bitcamp.java110.cms.dao.StudentDao;
import bitcamp.java110.cms.dao.TeacherDao;
import bitcamp.java110.cms.domain.Member;
import bitcamp.java110.cms.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {

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










