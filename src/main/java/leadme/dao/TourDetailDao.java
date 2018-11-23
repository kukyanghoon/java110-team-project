package leadme.dao;

import java.util.Map;

public interface TourDetailDao {
  Map<String,Object> getTour(int tno);
  Map<String,Object> getGuide(int mno);
}
