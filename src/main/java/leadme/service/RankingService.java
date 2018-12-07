package leadme.service;

import java.util.List;
import leadme.domain.Ranking;
import leadme.domain.Tour;

public interface RankingService {
  
  List<Tour> getExecutorTourBest();
  List<Tour> getExecutorThemeBest();
  List<Tour> getExecutorLocalBest();
 
  void delete();
  void add();
  //void add(Ranking ranking);    임시저장

}