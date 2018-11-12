package leadme.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import leadme.domain.Tour;
import leadme.service.MainService;

@Controller //managerListController
//@RequestMapping("/main")
public class MainController { 
    
    MainService mainService;
    ServletContext sc;
    
    public MainController(
            MainService mainService, 
            ServletContext sc) {
        this.mainService = mainService;
        this.sc = sc;
    }

    @GetMapping("/main")
    public void main(
            @RequestParam(defaultValue="kor") String lang,
            Model model){
      
        List<Tour> list = mainService.getListThemeBest("2018-11-12");
        
        for(Tour t:list) {
          System.out.println(t);
        }
        
        model.addAttribute("list", list);
    }
}







