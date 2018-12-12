package leadme.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import leadme.dao.UserTourDao;
import leadme.domain.TourReq;
import leadme.service.UserTourService;

@Service
public class UserTourServiceImpl implements UserTourService {

  @Autowired UserTourDao userTourDao;
  
  @Override
  public List<TourReq> goneTourList(String data) 
      throws JsonParseException, 
             JsonMappingException, 
             IOException {
    
    List<TourReq> list = userTourDao.goneTourList(jsonDataParse(data));
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date nowDate = new Date();
    for (TourReq tourReq : list) {
      tourReq.setTday(format.format(tourReq.getTour_dt()));
      tourReq.setdDay(String.valueOf((tourReq.getTour_dt().getTime() - nowDate.getTime())/ (24 * 60 * 60 * 1000)));
      
      
      /*if(tourReq.gettourAvail().getTour_albm() == null) {
        tourReq.gettourAvail().setTour_albm("1");
      }*/
      
      
    }
    
    return list;
  }

  @Override
  public List<TourReq> comingTourList(String data) throws JsonParseException, JsonMappingException, IOException {
    
    List<TourReq> list = userTourDao.comingTourList(jsonDataParse(data));
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date nowDate = new Date();
    for (TourReq tourReq : list) {
      tourReq.setTday(format.format(tourReq.getTour_dt()));
      tourReq.setdDay(String.valueOf(((tourReq.getTour_dt().getTime() - nowDate.getTime())/ (24 * 60 * 60 * 1000))+1));
    }
    
    return list;
  }
  
  @Override
  public List<TourReq> cancelTourList(String data) throws JsonParseException, JsonMappingException, IOException {
    
    List<TourReq> list = userTourDao.cancelTourList(jsonDataParse(data));
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date nowDate = new Date();
    for (TourReq tourReq : list) {
      tourReq.setTday(format.format(tourReq.getTour_dt()));
      tourReq.setdDay(String.valueOf((tourReq.getTour_dt().getTime() - nowDate.getTime())/ (24 * 60 * 60 * 1000)));
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










