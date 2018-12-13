package leadme.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.dao.GuideDao;
import leadme.dao.GuideTourListDao;
import leadme.domain.Guide;
import leadme.domain.Member;
import leadme.domain.Tour;
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
  
  @Transactional(
      transactionManager="transactionManager",
      propagation=Propagation.REQUIRED,
      rollbackFor=Exception.class)
  @Override
  public void profileModify(String jsonData) throws Exception {
    
    System.out.println(jsonData);

    Map<String, Object> param =  jsonDataParse(jsonData);
    
    if(guideDao.profileModify(param) <= 0 || guideDao.profileModify2(param) <= 0) {
      throw new Exception();
    }
    
    
  }
  @Override
  public List<TourReq> myTravelStatus(Guide guide) {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", guide.getMno());
    List<TourReq> list = guideTourListDao.myTravelStatus(params);
    
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date nowDate = new Date();
    
    for (TourReq tourReq : list) {
      System.out.println(tourReq);
      tourReq.setTday(format.format(tourReq.getTour_dt()));
      tourReq.setdDay(String.valueOf(((tourReq.getTour_dt().getTime() - nowDate.getTime())/ (24 * 60 * 60 * 1000))+1));
      System.out.println(tourReq.getdDay());
    }
    formatToutdt(list);
    return list;
  }
  
  @Override
  public List<TourReq> cancelTravelStatus(Guide guide) {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", guide.getMno());
    List<TourReq> list = guideTourListDao.cancelTravelStatus(params);
    for (TourReq tourReq : list) {
      System.out.println(tourReq);
    }
    formatToutdt(list);
    return list;
  }
  
  @Override
  public List<TourReq> goneTravelStatus(Guide guide) throws Exception {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", guide.getMno());
    List<TourReq> list = guideTourListDao.goneTravelStatus(params);
    String formatDate = "";
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    
    for (TourReq tourReq : list) {
      
      formatDate =  format.format(tourReq.getTour_dt());
      System.out.println(formatDate);
      /*tourReq.setTour_dt(format.parse(formatDate));
      System.out.println("tour_dt 포맷 됐다!!!! : " + tourReq.getTour_dt());*/
      
      //System.out.println(tourReq);
      
      tourReq.setformatToutdt(formatDate);
      
      System.out.println(tourReq.getformatToutdt());

      
    }
    
    return list;
    
  }
  
  @Override
  public List<Tour> myTravelList(Guide guide) throws Exception {
    Map<String,Object> params = new HashMap<>();
    params.put("mno", guide.getMno());
    List<Tour> list = guideTourListDao.myTravelList(params);
    
    for (Tour t : list) {
      System.out.println(t);
    }
    
    return list;
    
  }
  
  
  @Override
  public int addLink(String linkInfo) throws Exception {
    HashMap<String,Object> params = (HashMap<String, Object>) jsonDataParse(linkInfo);
    System.out.println(params.get("date"));
    System.out.println(params.get("tno"));
    System.out.println(params.get("link"));
    
    int num = guideTourListDao.addLink(params);
    
    if(num <= 0) {
      throw new Exception("업데이트 실패!");
    }
    
    return num;
    
  }
  
  
  private List<TourReq> formatToutdt(List<TourReq> list){
      
      String formatDate = "";
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      for (TourReq tourReq : list) {
        
        formatDate =  format.format(tourReq.getTour_dt());
        System.out.println(formatDate);
        tourReq.setformatToutdt(formatDate);
        
      }
      
      return list;
      
  }
  
  private Map<String, Object> jsonDataParse(String data) throws JsonParseException, JsonMappingException, IOException{
    
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    map = mapper.readValue(data, new TypeReference<Map<String, String>>(){});
    
    return map;
    
  }
  
}










