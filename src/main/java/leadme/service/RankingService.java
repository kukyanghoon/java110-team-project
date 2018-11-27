package leadme.service;

import java.util.List;
import leadme.domain.Ranking;
import leadme.domain.Tour;

public interface RankingService {
  
  List<Tour> getExecutorTourBest();
  List<Tour> getExecutorThemeBest();
  List<Tour> getExecutorLocalBest();
 
  void executor();
  
  void delete(int no);
  void add(Ranking ranking);

}