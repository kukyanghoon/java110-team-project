package leadme.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.TourDao;
import leadme.domain.Tour;
import leadme.service.TourService;

@Service
public class TourServiceImpl implements TourService {

  @Autowired TourDao tourDao;
  
  @Override
  public List<Tour> tourList(String catNo) {
    System.out.println("tourList  catNO : " + catNo);
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("catNo", catNo);
    System.out.println(param.get("catNo"));
    List<Tour> tourList = tourDao.tourList(param);
    
    return tourList;
  }
  
  @Override
  public List<Tour> tourAllList(String catNo) {
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("catNo", catNo);
    List<Tour> tourList = tourDao.tourAllList(param);
    return tourList;
  }
  

  @Override
  public List<Tour> categoryList(String catNo) {
    
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("catNo", catNo);
    
    List<Tour> categoryList = tourDao.categoryList(param);
    
    return categoryList;
  }


}