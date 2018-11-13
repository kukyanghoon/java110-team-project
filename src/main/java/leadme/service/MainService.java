package leadme.service;

import java.util.List;
import leadme.domain.Tour;

public interface MainService {
    List<Tour> getListTourBest(String baseDt);
    List<Tour> getListThemeBest(String baseDt,String rnk_item);
    List<Tour> getListLocalBest(String baseDt,String rnk_item);
}
