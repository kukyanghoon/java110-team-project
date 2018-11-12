package leadme.dao;

import java.util.List;
import leadme.domain.Tour;

public interface RankingDao {
    List<Tour> getListTourBest(String baseDt);
    List<Tour> getListThemeBest(String baseDt);
    List<Tour> getListLocalBest(String baseDt);
}
