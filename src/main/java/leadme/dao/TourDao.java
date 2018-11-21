package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Tour;

public interface TourDao {
  List<Tour> tourList(Map<String,Object> params);
  List<Tour> categoryList(Map<String,Object> params);
  List<Tour> tourAllList(Map<String,Object> params);
}
