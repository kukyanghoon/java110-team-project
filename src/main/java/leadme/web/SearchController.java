package leadme.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import leadme.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController{
  
  @Autowired SearchService searchService;

/*  @RequestMapping(value="search.do",method=RequestMethod.POST)
  public String search(@RequestBody String searchWord) {
    
    System.out.println(searchWord);
    
    searchService.searchData(searchWord);
    
    return "/search";
    
  }*/

  @RequestMapping(value="/{searchWord}")
  public String search(@PathVariable String searchWord,Model model) {
    
    System.out.println(searchWord);
    
    model.addAttribute("searchList", searchService.searchData(searchWord));
    
    return "/search";
  }
}
