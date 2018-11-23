package leadme.web;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import leadme.domain.Guide;
import leadme.service.TourDetailService;


@Controller
public class TourDetailController { 

    public static final String LANG_EN = "en";
    TourDetailService tourDetailService;
    ServletContext sc;
    SessionLocaleResolver localeResolver;
    MessageSource messageSource;

    public TourDetailController(
            TourDetailService tourDetailService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.tourDetailService = tourDetailService;
        this.localeResolver = localeResolver;
        this.messageSource = messageSource;
        this.sc = sc;
    }

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
        
        
        return "tour/detail";
    }
}







