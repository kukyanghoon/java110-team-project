package leadme.service;

import java.io.IOException;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import leadme.domain.Member;

public interface UserService {
  void userProfileModify(Map<String, Object> map);
  UserService makePhotoFile(MultipartHttpServletRequest multi, HttpSession session) 
      throws IllegalStateException, IOException ;
  Member callBackUser();
  
}
