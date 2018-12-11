package leadme.service;

import java.io.IOException;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import leadme.domain.Member;

public interface UserService {
  Member userProfileModify(Map<String, Object> map, HttpSession session);
  Member makePhotoFile(MultipartHttpServletRequest multi, HttpSession session) 
      throws IllegalStateException, IOException ;
  void pwCheck(Map<String, Object> param, HttpSession session) throws Exception;
  void pwModify(Map<String, Object> param) throws Exception;
}
