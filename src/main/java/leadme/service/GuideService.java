package leadme.service;

import java.util.List;
import leadme.domain.Guide;
import leadme.domain.Member;
import leadme.domain.Tour;
import leadme.domain.TourReq;

public interface GuideService {
  Member guideFindByGno(Guide guide) throws Exception;
  void profileModify(String jsonData) throws Exception;
  List<TourReq> myTravelStatus(Guide guide);
  List<TourReq> cancelTravelStatus(Guide guide);
  List<TourReq> goneTravelStatus(Guide guide)  throws Exception;
  int addLink(String linkInfo) throws Exception;
  List<Tour> myTravelList(Guide guide) throws Exception;
}
