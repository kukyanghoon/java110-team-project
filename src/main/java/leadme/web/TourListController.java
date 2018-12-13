package leadme.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import leadme.domain.Tour;
import leadme.service.TourService;

@Controller
@RequestMapping("/tour")
public class TourListController{

  @Autowired TourService tourService;
  @Autowired SessionLocaleResolver sessionLocaleResolver;
  
  public static final String LANG_EN = "en";
    /*
    public TourListController(TourService tourService) {
        this.tourService = tourService;
    }*/
    
    @RequestMapping("list")
    public String list(Locale locale,
                       HttpServletRequest request,
                       @RequestParam(defaultValue="10") String catNo,
                       Model model) 
                           throws Exception {
      
      if(!LANG_EN.equals(locale.toString()))
        locale = sessionLocaleResolver.resolveLocale(request);
      
      model.addAttribute("catNo", 1);
      model.addAttribute("tourList" , tourService.tourList(null));
      request.setAttribute("lang", locale.toString());
      
      return "/tour/list";
    }
    
    
    @GetMapping("list/{catNo}")
    public String list2(Locale locale,
                        HttpServletRequest request,
                        @PathVariable String catNo, 
                        Model model){
      
      System.out.println("list2");
      System.out.println(catNo);
      model.addAttribute("catNo", catNo);
      
      if(!LANG_EN.equals(locale.toString()))
        locale = sessionLocaleResolver.resolveLocale(request);
      
      try {
        model.addAttribute("tourList" , tourService.tourList(catNo));
        request.setAttribute("lang", locale.toString());
      } catch (Exception e) {
        model.addAttribute("tourList" , null);
      }
      model.addAttribute("categoryList" , tourService.categoryList(catNo));
      
      return "/tour/list";
    }
    
    
    
    @RequestMapping("list.do")
    @ResponseBody
    public List<Tour> printList(@RequestBody String catno){
      ObjectMapper mapper = new ObjectMapper();
      Map<String, Object> map = new HashMap<String, Object>(); 
      try {
        map = mapper.readValue(catno, new TypeReference<Map<String, String>>(){});
      } catch (Exception e) {
        e.printStackTrace();
      }
      
      System.out.println("printList.catno : " + map.get("cat_no"));
      
      List<Tour> list;
      try {
        list = tourService.tourList((map.get("cat_no")).toString());
        for (Tour tour : list) {
          System.out.println(tour);
        }
        
        return list;
      } catch (Exception e) {
        System.out.println(e);
        return null;
      }
     
    }

    @RequestMapping("loclist.do")
    @ResponseBody
    public List<Tour> test(@RequestBody String a){
      
      System.out.println(a);
      
      JsonParser jsonParser = new JsonParser();
      JsonArray jsonArray = (JsonArray) jsonParser.parse(a);
      
      List<String> locList = new ArrayList<>();
      String catNo = "";
      
      for (int i = 0; i < jsonArray.size(); i++) {
        JsonObject object = (JsonObject) jsonArray.get(i);
        String loc = object.get("loc").getAsString();
        catNo = object.get("cat_no").getAsString();
        locList.add(loc);
      }
      
      try {
        return tourService.locList(locList, catNo);
      } catch (Exception e) {
        System.out.println(e);
        return null;
      }
      
    }
    
    
}
