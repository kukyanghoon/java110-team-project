package leadme.service;

import java.util.List;
import leadme.domain.Tour;

public interface SearchService {

  List<Tour> searchData(String searchWord);

}
