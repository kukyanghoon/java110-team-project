package leadme.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.GuideDao;
import leadme.dao.GuideTourListDao;
import leadme.domain.Guide;
import leadme.domain.Member;
import leadme.domain.TourReq;
import leadme.service.GuideService;

@Service
public class GuideServiceImpl implements GuideService {

  @Autowired GuideDao guideDao;
  @Autowired GuideTourListDao guideTourListDao;
  
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
  public void myTravelStatus() {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", "6");
    List<TourReq> list = guideTourListDao.myTravelStatus(params);
    for (TourReq tourReq : list) {
      System.out.println(tourReq);
    }
    
  }
  
  @Override
  public void cancelTravelStatus() {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", "6");
    List<TourReq> list = guideTourListDao.cancelTravelStatus(params);
    for (TourReq tourReq : list) {
      System.out.println(tourReq);
    }
    
  }
  
  @Override
  public void goneTravelStatus() {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", "6");
    List<TourReq> list = guideTourListDao.goneTravelStatus(params);
    for (TourReq tourReq : list) {
      System.out.println(tourReq);
    }
    
  }
  
}










