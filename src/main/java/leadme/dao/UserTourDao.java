package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.TourReq;

public interface UserTourDao {
  
  List<TourReq> goneTourList(Map<String,Object> params);
  List<TourReq> comingTourList(Map<String,Object> params);
  List<TourReq> cancelTourList(Map<String,Object> params);
  
}
