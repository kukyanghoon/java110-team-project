package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Tour;
import leadme.domain.TourReq;

public interface GuideTourListDao {
  
  List<TourReq> myTravelStatus(Map<String,Object> params);
  List<TourReq> cancelTravelStatus(Map<String,Object> params);
  List<TourReq> goneTravelStatus(Map<String,Object> params);
  List<Tour> myTravelList(Map<String,Object> params);
  int addLink(Map<String, Object> params);
}
