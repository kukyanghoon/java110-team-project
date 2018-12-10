package leadme.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.SearchDao;
import leadme.domain.Tour;
import leadme.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {
  
  
  @Autowired SearchDao searchDao;

  @Override
  public List<Tour> searchData(String searchWord) {
    
    
    
    List<String> wordList = new ArrayList<>();
    
    String[] list = searchWord.split(" ");
    for (String s : list) {
      s = "%"+s+"%";
      System.out.println(s);
      wordList.add(s);
    }
    
    
    Map<String,Object> params = new HashMap<>();
    params.put("word", wordList);
    
    List<Tour> searchList = searchDao.search(params);
    for (Tour tour : searchList) {
      System.out.println(tour); 
      
    }
    
    return searchList;
    
  }

/*
  private Object parseJsonData(String jsonData, String key) {
    
    ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    try {
        map = mapper.readValue(jsonData, new TypeReference<Map<String, String>>(){});
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return map.get(key);
  }
*/
}