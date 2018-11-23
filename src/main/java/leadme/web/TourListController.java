package leadme.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
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
    public String list(@RequestParam(defaultValue="10") String catNo, Model model) {
      System.out.println(catNo);
      model.addAttribute("catNo", catNo);
      model.addAttribute("tourList" , tourService.tourAllList(catNo));
      model.addAttribute("categoryList" , tourService.categoryList(catNo));
      
      return "/tour/list";
    }
    
    
    @GetMapping("list2/{catNo}")
    public String list2(@PathVariable String catNo, Model model) {
      System.out.println("list2");
      System.out.println(catNo);
      model.addAttribute("catNo", catNo);
      model.addAttribute("tourList" , tourService.tourAllList(catNo));
      model.addAttribute("categoryList" , tourService.categoryList(catNo));
      
      return "/tour/list";
    }
    
    
    
    @RequestMapping("list.do")
    @ResponseBody
    public List<Tour> printList(@RequestBody String catno){
      System.out.println("printList");
      ObjectMapper mapper = new ObjectMapper();
      Map<String, Object> map = new HashMap<String, Object>(); 
      try {
        map = mapper.readValue(catno, new TypeReference<Map<String, String>>(){});
      } catch (Exception e) {
        e.printStackTrace();
      }
      
      System.out.println("printList.catno : " + map.get("cat_no"));
      
      List<Tour> list = tourService.tourList((map.get("cat_no")).toString());
      for (Tour tour : list) {
        System.out.println(tour);
        System.out.println(tour.getTitl());
        System.out.println(tour.getLoc());
        System.out.println(tour.getStar());
        System.out.println(tour.getCmt_cnt());
        System.out.println(tour.getAmt());
        System.out.println(tour.getHits());
        System.out.println(tour.getMember().getName());
        
      }
      
      return list;
    }
    
    @RequestMapping("listAll.do")
    @ResponseBody
    public List<Tour> printAllList(@RequestBody String catno){
      
      ObjectMapper mapper = new ObjectMapper();
      Map<String, Object> map = new HashMap<String, Object>(); 
      try {
        map = mapper.readValue(catno, new TypeReference<Map<String, String>>(){});
      } catch (Exception e) {
        e.printStackTrace();
      }
      
      System.out.println("printList.catno : " + map.get("cat_no"));
      
      List<Tour> list = tourService.tourAllList((map.get("cat_no")).toString());
      
      return list;
    }
    
    @RequestMapping("test.do")
    @ResponseBody
    public List<Tour> test(@RequestBody List<String> a){
      
      for (String s : a) {
        System.out.println(s);
      }
      
      return null;
    }
    
    
    
    
}
