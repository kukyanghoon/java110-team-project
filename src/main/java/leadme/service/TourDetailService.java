package leadme.service;

import java.util.List;
import java.util.Map;

public interface TourDetailService {
  Map<String,Object> getTour(int tno);
  Map<String,Object> getGuide(int mno);
  List<Map<String, Object>> getCourse(int tno);
  List<Map<String, Object>> getComments(int tno);
}
