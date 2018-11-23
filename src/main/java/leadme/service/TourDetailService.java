package leadme.service;

import java.util.Map;

public interface TourDetailService {
  Map<String,Object> getTour(int tno);
  Map<String,Object> getGuide(int mno);
}
