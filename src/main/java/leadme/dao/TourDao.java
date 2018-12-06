package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Comment;
import leadme.domain.Tour;

public interface TourDao {
  List<Tour> tourList(Map<String,Object> params);
  List<Tour> categoryList(Map<String,Object> params);
  List<Tour> locList(Map<String,Object> params);
  Tour tourSelect(Map<String,Object> params);
  int enrollmentComment(Comment comment);
  Comment commentCheck(Comment comment);
}
