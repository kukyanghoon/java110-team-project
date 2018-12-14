package leadme.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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
      
        String sdf = nowDateFormatData(rnk_item);
        
        model.addAttribute("tourList" , mainService.getListTourBest(sdf));
        model.addAttribute("themeList", mainService.getListThemeBest(sdf, rnk_item));
        model.addAttribute("localList", mainService.getListLocalBest(sdf, "15"));
        request.setAttribute("lang", locale.toString());
    }


    private String nowDateFormatData(String rnk_item) {
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date today = new Date();
      String sdf = format.format(today);
      System.out.println(sdf);
      System.out.println(rnk_item);
      return sdf;
    }
    
    @RequestMapping(value="theme/{rnk_item}", 
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public List<Tour> theme(@PathVariable String rnk_item) {
      String sdf = nowDateFormatData(rnk_item);
      return mainService.getListThemeBest(sdf, rnk_item);
    }
    
    @RequestMapping(value="local/{rnk_item}", 
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public List<Tour> local(@PathVariable String rnk_item) {
      String sdf = nowDateFormatData(rnk_item);
      return mainService.getListLocalBest(sdf, rnk_item);
    }
    
    @RequestMapping(value="locale", 
        produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object locale(Locale locale) {
      return locale;
    }
    
    
    
    
    
    
}







