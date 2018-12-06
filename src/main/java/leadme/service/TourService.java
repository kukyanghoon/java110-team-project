package leadme.service;

import java.util.List;
import leadme.domain.Comment;
import leadme.domain.Tour;

public interface TourService {
  /*tourList 부분에 Exception처리를 굳이 해야 할지 고민....*/  
  List<Tour> tourList(String catNo) throws Exception;
  List<Tour> categoryList(String catNo);
  List<Tour> locList(List<String> locList, String cat_no) throws Exception;
  Tour tourSelect(String tno);
  void enrollmentComment(Comment comment) throws Exception;
}
