package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Tour;

public interface SearchDao {

  List<Tour> search(Map<String,Object> params);

}
