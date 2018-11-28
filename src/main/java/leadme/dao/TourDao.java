package leadme.dao;

import java.util.List;
import leadme.domain.Tour;

public interface TourDao {
  List<Tour> tourList();

void insert(Tour tour);
}
