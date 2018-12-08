package leadme.web;

import java.util.Locale;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import leadme.service.TourDetailService;


@Controller
public class TourDetailController { 

    public static final String LANG_EN = "en";
    @Autowired TourDetailService tourDetailService;
    @Autowired ServletContext sc;
    @Autowired SessionLocaleResolver localeResolver;
    @Autowired MessageSource messageSource;
/*
    public TourDetailController(
            TourDetailService tourDetailService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.tourDetailService = tourDetailService;
        this.localeResolver = localeResolver;
        this.messageSource = messageSource;
        this.sc = sc;
    }*/

    @GetMapping("/tour/detail/{tno}")
    public String detail(
        Locale locale,
        HttpServletRequest request,
        @PathVariable int tno,
        Model model) {

        if(!LANG_EN.equals(locale.toString()))
          locale = localeResolver.resolveLocale(request);
        request.setAttribute("lang", locale.toString());
        
        Map<String,Object> tourMap = tourDetailService.getTour(tno);
        
        model.addAttribute("tour" , tourMap);
        model.addAttribute("guide" , tourDetailService.getGuide((int)tourMap.get("mno")));
        model.addAttribute("courseList" , tourDetailService.getCourse(tno));
        model.addAttribute("commentList" , tourDetailService.getComments(tno));
        return "tour/detail";
    }
    
    @GetMapping("/tour/detail/{tno}/rewviews")
    @ResponseBody
    public String reviews(int page) {
      
      return null;
    }
    
}







