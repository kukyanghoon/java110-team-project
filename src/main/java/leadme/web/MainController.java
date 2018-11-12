package leadme.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller //managerListController
//@RequestMapping("/main")
public class MainController { 
    
//    MainService mainService;
    ServletContext sc;
    
    public MainController(
//            MainService mainService, 
            ServletContext sc) {
//        this.mainService = mainService;
        this.sc = sc;
    }

    @GetMapping("/main")
    public void main(
            @RequestParam(defaultValue="kor") String lang,
            Model model){
        
      /*
            if (pageNo < 1)
                pageNo = 1;
            
            if (pageSize < 3 || pageSize > 10)
                pageSize = 3;
        
        List<Manager> list = managerService.list(pageNo, pageSize);
        model.addAttribute("list", list);
      */
        
    }
    
}







