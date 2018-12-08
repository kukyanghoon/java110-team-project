package leadme.web;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import leadme.domain.Ranking;
import leadme.domain.Tour;
import leadme.service.RankingService;

@RequestMapping("/ex")
@Controller
public class RankingController {
  
  @Autowired RankingService rankingService;
  /*
  public RankingController(RankingService rankingService) {
    this.rankingService=rankingService;
  }*/
  
  @GetMapping("/ex")
  public String executor (@RequestParam(defaultValue="kor") String lang, Model model ) {
    
    List<Tour> executor1 = rankingService.getExecutorTourBest();
    List<Tour> executor2 = rankingService.getExecutorThemeBest();
    List<Tour> executor3 = rankingService.getExecutorLocalBest();
    // insert가 아니라 추출(select)이기 때문에  파라미터값  ( List <Tour> d ) 넣어주지 않는다
    
      ArrayList<Ranking> list = new ArrayList<Ranking>();
      Ranking r = new Ranking();
      int i=1;
      
      
      System.out.println("------executor1----------");
      for (Tour t : executor1 ) {

        r.setTno(t.getTno());
        r.setRnk(i);
        r.setRnk_dt(Calendar.getInstance().getTime());
        r.setRnk_item("00");
        r.setRnk_type("01");
        
        System.out.println(t.toString());
        i++;
      }
      
      
      System.out.println("-----executor2-------");
      for (Tour t : executor2 ) {
        
        r.setTno(t.getTno());
        r.setRnk(i);
        r.setRnk_dt(Calendar.getInstance().getTime());
        r.setRnk_item(Integer.toString(t.getCat_no()));//? r.setRak_item(t.getCat_no) 안돼네  -> 형변환
        r.setRnk_type("02");
        
        System.out.println(t.toString());
        i++;
      }
      
      
      System.out.println("---------executor3-----------");
      for (Tour t : executor3 ) {
        
        r.setTno(t.getTno());
        r.setRnk(i);
        r.setRnk_dt(Calendar.getInstance().getTime());
        r.setRnk_item(t.getLoc());
        r.setRnk_type("03");
        
        System.out.println(t.toString());
        i++;
      }
      
      
      
    /*
      // 페이징 처리
      int pageNo = 1;
      int pageSize = 3;
      
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("pageSize", pageSize);
      
      List<Member> list = memberDao.findAll(params);
      
      for (Member m : list) {
          System.out.printf("%d, %s, %s, %s\n", 
                  m.getNo(), m.getName(), m.getEmail(), m.getTel());
      }
    */
   
    model.addAttribute("tourList", executor1); //("뷰 명", 데이터)
    model.addAttribute("themeList", executor2);
    model.addAttribute("localList", executor3);
    
    return "/ex";
  }
  
  
  
  



  @RequestMapping("delete")
  public String delete(int no)throws Exception{

          rankingService.delete(no);
          return "redirect:list";
  
  }

}