package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Service;
import leadme.domain.Member;
import leadme.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

  @Override
  public void add(Member member) {
    
    Map<String ,Object> param = new HashMap<String, Object>();
    param.put("name", member.getName());
    param.put("email", member.getEmail());
    param.put("password", member.getPassword());
    
    System.out.println(param.toString());
    
    
    
  }





}


