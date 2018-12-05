package leadme.service.impl;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.GuideDao;
import leadme.domain.Guide;
import leadme.domain.Member;
import leadme.service.GuideService;

@Service
public class GuideServiceImpl implements GuideService {

  @Autowired GuideDao guideDao;
  
  @Override
  public Member guideFindByGno(Guide guide) throws Exception {
    System.out.println("guideProfile : aaaa" + guide.getMno());
    
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("mno",guide.getMno());
    
    Member findGuide = guideDao.guideFindByGno(param);
    if(findGuide == null) {
      throw new Exception();
    }
    
    System.out.println(findGuide);
    
    return findGuide;
  }
  
  @Override
  public void profileModify(Map<String, Object> param) throws Exception {
    
    int num = guideDao.profileModify(param);
    if(num <= 0) {
      throw new Exception();
    }
    
  }
  
  @Override
  public void profileModify2(Map<String, Object> param) throws Exception {
    
    int num = guideDao.profileModify2(param);
    if(num <= 0) {
      throw new Exception();
    }
    
  }
  
}










