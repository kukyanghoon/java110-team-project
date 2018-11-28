package leadme.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.TourDao;
import leadme.domain.Tour;
import leadme.service.TourService;

@Service
public class TourServiceImpl implements TourService {

  @Autowired TourDao tourDao;
  
  @Override
  public List<Tour> tourList() {
    
    List<Tour> tourList = tourDao.tourList();
    return tourList;
  }


}