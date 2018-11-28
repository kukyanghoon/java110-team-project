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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import leadme.dao.UserDao;
import leadme.domain.Member;
import leadme.service.UserService;

@Service
public class UserServiceImpl implements UserService {

  @Autowired UserDao userDao;
  HttpSession session;
  Member loginMember;

  @Override
  public void userProfileModify(Map<String, Object> map) {

  }

  @Override
  public UserServiceImpl makePhotoFile(MultipartHttpServletRequest multi, HttpSession session) 
      throws IllegalStateException, IOException {
    
    this.session = session;
    
    String root = multi.getSession().getServletContext().getRealPath("/");
    String path = root+"resources/img/";

    String newFileName = "";

    File dir = new File(path);
    if(!dir.isDirectory()){
      dir.mkdir();
    }

    Iterator<String> files = multi.getFileNames();

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
        userPhotoModify(newFileName);

    }
    
    return this;
  }
  
  @Override
  public Member callBackUser() {
    Member user = userDao.callBackUser(this.loginMember.getNo());
    System.out.println(user);
    this.session.setAttribute("memberInfo", user);
    System.out.println("바뀐 session : " + this.session.getAttribute("memberInfo"));
    return user;
  }
  
  
  

  private void userPhotoModify(String photoName) {

    System.out.println(photoName);
    System.out.println(this.session.getAttribute("memberInfo"));
    this.loginMember = (Member) this.session.getAttribute("memberInfo");
    
    Map<String,Object> param = new HashMap<String, Object>();
    param.put("no", loginMember.getNo());
    param.put("photo", photoName);

    userDao.photoModify(param);
  }





}










