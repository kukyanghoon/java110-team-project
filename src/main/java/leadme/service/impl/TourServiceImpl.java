package leadme.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.TourDao;
import leadme.domain.Comment;
import leadme.domain.Tour;
import leadme.service.TourService;

@Service
public class TourServiceImpl implements TourService {

  @Autowired TourDao tourDao;
  
  @Override
  public List<Tour> tourList(String catNo) throws Exception {
    System.out.println("tourList  catNO : " + catNo);
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("catNo", catNo);
    System.out.println(param.get("catNo"));
    List<Tour> tourList = tourDao.tourList(param);
    
    if(tourList.isEmpty()) {
      throw new Exception("해당 자료가 없습니다");
    }
    
    return tourList;
  }

  @Override
  public List<Tour> categoryList(String catNo) {
    
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("catNo", catNo);
    
    List<Tour> categoryList = tourDao.categoryList(param);
    
    return categoryList;
  }
  
  @Override
  public List<Tour> locList(List<String> locList, String catNo) throws Exception {
    
    for (String s : locList) {
      System.out.print(s+",");
    }
    System.out.println(catNo);
    
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("catNo", catNo);
    param.put("locList", locList);
    
    List<Tour> list = tourDao.locList(param);
    
    
    
    if(list.isEmpty()) {
      throw new Exception("해당 자료가 없습니다");
    }
    
    return list; 
    
  }
  
  @Override
  public Tour tourSelect(String tno) {
    Map<String, Object> map = new HashMap<>();
    map.put("tno", tno);
    System.out.println(tno);
    
    return tourDao.tourSelect(map);
    
  }
  
  @Override
  public void enrollmentComment(Comment comment) throws Exception  {
    
    Comment check = tourDao.commentCheck(comment);
    if(check != null) {
      throw new Exception("이미 작성하신 후기가 있습니다! 욕심쟁이!!!");
    }
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date nowDate = new Date();
    comment.setDel_yn("N");
    comment.setCont_dt(format.format(nowDate));
    comment.setUp_cmt_no(1);
    System.out.println(comment);
    
    int num = tourDao.enrollmentComment(comment);
    System.out.println(num);
  }

}