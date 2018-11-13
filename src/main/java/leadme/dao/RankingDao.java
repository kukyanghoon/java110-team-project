package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Tour;

public interface RankingDao {
    List<Tour> getListTourBest(String baseDt);
    List<Tour> getListThemeBest(Map<String,Object> params);
    List<Tour> getListLocalBest(Map<String,Object> params);
}
