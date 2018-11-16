package leadme.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import leadme.service.TourService;

@Controller
@RequestMapping("/list")
public class TourListController{

    TourService tourService;
    
    public TourListController(TourService tourService) {
        this.tourService = tourService;
    }
    
    @RequestMapping("list")
    public void list() {
      tourService.tourList();
    }
    
}
