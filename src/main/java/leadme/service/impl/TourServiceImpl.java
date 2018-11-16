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
    for (Tour tour : tourList) {
      System.out.println(tour);
      System.out.println(tour.getTitl());
      System.out.println(tour.getLoc());
      System.out.println(tour.getStar());
      System.out.println(tour.getCmt_cnt());
      System.out.println(tour.getAmt());
      System.out.println(tour.getCategory().getCat_name());
      System.out.println(tour.getMember().getName());
    }
    
    return null;
  }

  
  

}