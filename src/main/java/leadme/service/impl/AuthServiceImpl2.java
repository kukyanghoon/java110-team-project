package leadme.service.impl;

import java.util.Map;
import org.springframework.stereotype.Service;
import leadme.service.UserService;

@Service
public class AuthServiceImpl2 implements UserService {
  
  @Override
  public void userProfileModify(Map<String, Object> map) {
    System.out.println(map.get("name"));
    System.out.println(map.get("email"));
    System.out.println(map.get("lang"));
  }
  
}










