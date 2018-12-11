package leadme.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import leadme.dao.UserDao;
import leadme.domain.Member;
import leadme.service.UserService;

@Service
public class UserServiceImpl implements UserService {

  @Autowired UserDao userDao;

  
  @Transactional(
      transactionManager="transactionManager",
      propagation=Propagation.REQUIRED,
      rollbackFor=Exception.class)
  @Override
  public Member userProfileModify(Map<String, Object> map, HttpSession session) {
    
    System.out.println(map.get("no"));
    System.out.println(map.get("name"));
    System.out.println(map.get("email"));
    System.out.println(map.get("lang"));
    
    Member loginMember = (Member) session.getAttribute("memberInfo");
    
    userDao.userProfileModify(map);
    userDao.userLangModify(map);
    
    callBackUser(loginMember, session);
    
    return loginMember;
  }
  
/*  private void changeSession(Map<String, Object> map) {
    this.loginMember = (Member) this.session.getAttribute("memberInfo");
    this.loginMember.setName((String)map.get("name"));
    this.loginMember.setEmail((String)map.get("email"));
    this.session.setAttribute("memberInfo", loginMember);
    System.out.println("바뀐 session : " + this.session.getAttribute("memberInfo"));
  }*/
  
  @Override
  public Member makePhotoFile(MultipartHttpServletRequest multi, HttpSession session) 
      throws IllegalStateException, IOException {
    
    String root = multi.getSession().getServletContext().getRealPath("/");
    String path = root+"resources/img/";

    String newFileName = "";

    File dir = new File(path);
    if(!dir.isDirectory()){
      dir.mkdir();
    }

    Iterator<String> files = multi.getFileNames();

    Member loginMember = new Member();
    
    while(files.hasNext()){
      String uploadFile = files.next();

      MultipartFile mFile = multi.getFile(uploadFile);
      String fileName = mFile.getOriginalFilename();
      if(fileName.isEmpty()) {
        fileName = "default.png";

      }

      System.out.println("실제 파일 이름 : " +fileName);
      if(fileName.equals("default.png")) {
        newFileName = fileName;
      }else {
        newFileName = UUID.randomUUID().toString();
      }

      System.out.println("저장될 파일 이름 : " +newFileName);

        mFile.transferTo(new File(path+newFileName));
        loginMember = userPhotoModify(newFileName ,session);

    }
    
    return callBackUser(loginMember, session);
  }
  
  private Member callBackUser(Member loginMember, HttpSession session) {
    Member user = userDao.callBackUser(loginMember.getNo());
    System.out.println(user);
    session.setAttribute("memberInfo", user);
    System.out.println("바뀐 session : " + session.getAttribute("memberInfo"));
    return user;
  }
  
  
  

  private Member userPhotoModify(String photoName, HttpSession session) {

    System.out.println(photoName);
    System.out.println(session.getAttribute("memberInfo"));
    Member loginMember = (Member)session.getAttribute("memberInfo");
    
    Map<String,Object> param = new HashMap<String, Object>();
    param.put("no", loginMember.getNo());
    param.put("photo", photoName);

    userDao.photoModify(param);
    
    return loginMember;
  }
  
  @Override
  public void pwCheck(Map<String, Object> param, HttpSession session) throws Exception {
    
    Member member = (Member)session.getAttribute("memberInfo");
    
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("no", member.getNo());
    map.put("pwd", param.get("oldPw"));
    Member checkMember = userDao.pwCheck(map);
    System.out.println(checkMember);
    if(checkMember == null) {
      throw new Exception();
    }
  }

  @Override
  public void pwModify(Map<String, Object> param) throws Exception {
    
    int num = userDao.pwModify(param);
    
    if(num <= 0) {
      throw new Exception();
    }
    
    
  }

}










