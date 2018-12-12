package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Tour;

public interface RankingDao {
    List<Tour> getListTourBest(String baseDt);
    List<Tour> getListThemeBest(Map<String,Object> params);
    List<Tour> getListLocalBest(Map<String,Object> params);
    
    void delete();
    int insert(Map <String, Object> param);
    
    List<Tour> getExecutorTourBest();
    List<Tour> getExecutorThemeBest(int loc);
    List<Tour> getExecutorLocalBest(int loc);
   
    
}