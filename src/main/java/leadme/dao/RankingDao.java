package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Ranking;
import leadme.domain.Tour;

public interface RankingDao {
    List<Tour> getListTourBest(String baseDt);
    List<Tour> getListThemeBest(Map<String,Object> params);
    List<Tour> getListLocalBest(Map<String,Object> params);
    
    int delete(int no);
    int insert(Ranking ranking);
    // getExecutor
    
    List<Tour> getExecutorTourBest();
    List<Tour> getExecutorThemeBest();
    List<Tour> getExecutorLocalBest();
}