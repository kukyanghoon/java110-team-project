package leadme.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.domain.Tour;
import leadme.service.TourService;

@Controller
@RequestMapping("/tour")
public class TourListController{

    TourService tourService;
    
    public TourListController(TourService tourService) {
        this.tourService = tourService;
    }
    
    @RequestMapping("list")
    public String list() {
      return "/tour/list";
    }
    
    @RequestMapping("list.do")
    @ResponseBody
    public List<Tour> printList(){
      
      List<Tour> list = tourService.tourList();
      for (Tour tour : list) {
        System.out.println(tour);
        System.out.println(tour.getTitl());
        System.out.println(tour.getLoc());
        System.out.println(tour.getStar());
        System.out.println(tour.getCmt_cnt());
        System.out.println(tour.getAmt());
        System.out.println(tour.getCategory().getCat_name());
        System.out.println(tour.getMember().getName());
      }
      return list;
    }
    
}
