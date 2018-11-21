package leadme.web;

import java.util.List;
import java.util.Locale;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import leadme.domain.Tour;
import leadme.service.MainService;

@RequestMapping("/main")
@Controller
public class MainController { 

    public static final String LANG_EN = "en";
    MainService mainService;
    ServletContext sc;
    SessionLocaleResolver localeResolver;
    MessageSource messageSource;

    public MainController(
            MainService mainService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.mainService = mainService;
        this.localeResolver = localeResolver;
        this.messageSource = messageSource;
        this.sc = sc;
    }

    
    @GetMapping
    public void main(
        Locale locale,
        HttpServletRequest request,
        @RequestParam(defaultValue="10")  String rnk_item,
        Model model) {

      /* JAVA locale test
      System.out.println("Locale==>"+locale);
      System.out.println(localeResolver.resolveLocale(request));
      System.out.println(messageSource.getMessage("site.title", null, "default text", locale));
      */
      
        if(!LANG_EN.equals(locale.toString()))
          locale = localeResolver.resolveLocale(request);
      
        model.addAttribute("tourList" , mainService.getListTourBest("2018-11-12"));
        model.addAttribute("themeList", mainService.getListThemeBest("2018-11-12", rnk_item));
        model.addAttribute("localList", mainService.getListLocalBest("2018-11-12", "01"));
        request.setAttribute("lang", locale.toString());
    }
    
    @RequestMapping(value="theme/{rnk_item}", 
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public List<Tour> theme(@PathVariable String rnk_item) {
      return mainService.getListThemeBest("2018-11-12", rnk_item);
    }
    
    @RequestMapping(value="local/{rnk_item}", 
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public List<Tour> local(@PathVariable String rnk_item) {
      return mainService.getListLocalBest("2018-11-12", rnk_item);
    }
    
    @RequestMapping(value="locale", 
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object locale(Locale locale) {
      return locale;
    }
}







