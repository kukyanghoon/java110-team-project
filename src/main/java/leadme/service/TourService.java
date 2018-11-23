package leadme.service;

import java.util.List;
import leadme.domain.Tour;

public interface TourService {
  List<Tour> tourList(String catNo);
  List<Tour> categoryList(String catNo);
  List<Tour> tourAllList(String catNo);
}
