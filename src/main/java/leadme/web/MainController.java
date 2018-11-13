package leadme.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.domain.Tour;
import leadme.service.MainService;

@Controller //managerListController
public class MainController { 
    
    MainService mainService;
    ServletContext sc;
    
    public MainController(
            MainService mainService, 
            ServletContext sc) {
        this.mainService = mainService;
        this.sc = sc;
    }

    
    @GetMapping("main")
    public void main(
            @RequestParam(defaultValue="kor") String lang,
            @RequestParam(defaultValue="20")  String rnk_item,
            Model model) {
      
        
        List<Tour> list1 = mainService.getListThemeBest("2018-11-12", rnk_item);
        List<Tour> list2 = mainService.getListLocalBest("2018-11-12", "01");
        
        model.addAttribute("themeList", list1);
        model.addAttribute("localList", list2);
    }
    
    @RequestMapping(value="main/theme", produces="application/json;charset=UTF-8")
    @ResponseBody
    public List<Tour> theme(String rnk_item) {
      return mainService.getListThemeBest("2018-11-12", rnk_item);
    }
    
    @RequestMapping(value="main/local", produces="application/json;charset=UTF-8")
    @ResponseBody
    public List<Tour> local(String rnk_item) {
      return mainService.getListLocalBest("2018-11-12", rnk_item);
    }
}







