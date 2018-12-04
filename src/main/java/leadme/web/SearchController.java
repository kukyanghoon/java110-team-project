package leadme.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController{
  
  @Autowired SearchService searchService;

  @RequestMapping(value="search.do",method=RequestMethod.POST)
  @ResponseBody
  public void search(@RequestBody String searchWord) {
    
    System.out.println(searchWord);
    
    searchService.searchData(searchWord);
    
  }
  
  
}
