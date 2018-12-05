package leadme.service;

import leadme.domain.Guide;
import leadme.domain.Member;

public interface GuideService {
  Member guideFindByGno(Guide guide) throws Exception;
  void myTravelStatus();
  void cancelTravelStatus();
  void goneTravelStatus();
}
