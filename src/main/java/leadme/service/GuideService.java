package leadme.service;

import java.util.List;
import leadme.domain.Guide;
import leadme.domain.Member;
import leadme.domain.TourReq;

public interface GuideService {
  Member guideFindByGno(Guide guide) throws Exception;
  void profileModify(String jsonData) throws Exception;
  List<TourReq> myTravelStatus();
  List<TourReq> cancelTravelStatus();
  List<TourReq> goneTravelStatus()  throws Exception;
}
