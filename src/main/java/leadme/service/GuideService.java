package leadme.service;

import java.util.Map;
import leadme.domain.Guide;
import leadme.domain.Member;

public interface GuideService {
  Member guideFindByGno(Guide guide) throws Exception;
  void profileModify(Map<String, Object> param) throws Exception;
  void profileModify2(Map<String, Object> param) throws Exception;
  void myTravelStatus();
  void cancelTravelStatus();
  void goneTravelStatus();
}
