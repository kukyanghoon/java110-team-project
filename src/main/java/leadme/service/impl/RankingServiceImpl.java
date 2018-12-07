package leadme.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import leadme.dao.RankingDao;
import leadme.domain.Ranking;
import leadme.domain.Tour;
import leadme.service.RankingService;

@Service
public class RankingServiceImpl implements RankingService {

  @Autowired RankingDao rankingDao; 
  //@Autowired Ranking ranking;
  @Autowired RankingService rankingService;


  @Transactional(
      // 트랜젝션 관리자의 이름이 transactionManager라면 다음 속성은 생략해도 된다
      transactionManager="transactionManager",
      
      // 이 메서드를 호출하는 쪽에 이미 트랜젝션이 있으면 그 트랜젝션에 소속되게 하고,
      // 없으면 새 트랜잭션을 만들어 수행한다
      // 기본 값은 propagation=Propagation.REQUIRED 이다
      propagation=Propagation.REQUIRED,
      
      // 매서드를 실행하는 중에 Exception 예외가 발생하면 rollBack을 수행한다
      // 기본값
      rollbackFor=Exception.class)

  


  @Override
  public List<Tour> getExecutorTourBest() {
    return  rankingDao.getExecutorTourBest();
  }

  @Override
  public List<Tour> getExecutorThemeBest() {
    return rankingDao.getExecutorThemeBest();
  }

  @Override
  public List<Tour> getExecutorLocalBest() {
    return  rankingDao.getExecutorLocalBest();
  }


  @Override
  public void add() {

    //로직 구성
    List<Tour> executor1 = rankingService.getExecutorTourBest(); 
    List<Tour> executor2 = rankingService.getExecutorThemeBest();
    List<Tour> executor3 = rankingService.getExecutorLocalBest();
    // insert가 아니라 추출(select)이기 때문에  파라미터값  ( List <Tour> d ) 넣어주지 않는다

    System.out.println("------executor1----------");
    List<Ranking> rank = new ArrayList<>();
//    Ranking r = new Ranking();
    
    int rankNum=1;
    for (Tour t : executor1) {
      Ranking r = new Ranking();
      r.setRnk_type("01");
      r.setRnk_item("00");
      r.setTno(t.getTno());
      r.setRnk(rankNum);
      
      rank.add(r);
      rankNum++;
    }
    
    rankNum=1;
    for (Tour t : executor2) {
        Ranking r = new Ranking();
        r.setRnk_type("02");
        r.setRnk_item(Integer.toString(t.getCat_no()));
        r.setTno(t.getTno());
        r.setRnk(rankNum);
      
      rank.add(r);
      rankNum++;
    }
    
    rankNum=1;
    for (Tour t : executor3) {
        Ranking r = new Ranking();
        r.setRnk_type("03");
        r.setRnk_item(t.getLoc());
        r.setTno(t.getTno());
        r.setRnk(rankNum);
     
      rank.add(r);
      rankNum++;
    }
    
    
    HashMap<String,Object> params = new HashMap<>();
    params.put("data", rank);
    
    System.err.println("insert전");
    System.out.println(params.get("data").toString());
    rankingDao.insert(params);
    
    System.out.println("insert후");
    
  }




  @Override
  public void delete() {
    System.err.println("삭제전");
    rankingDao.delete();
    System.err.println("삭제후");
  }



  /*  //임시저장
  @Override
  public void add(Ranking ranking) {

    //로직 구성
    List<Tour> executor1 = rankingService.getExecutorTourBest();
    List<Tour> executor2 = rankingService.getExecutorThemeBest();
    List<Tour> executor3 = rankingService.getExecutorLocalBest();
    // insert가 아니라 추출(select)이기 때문에  파라미터값  ( List <Tour> d ) 넣어주지 않는다

      ArrayList<Ranking> list = new ArrayList<>();


      Ranking r = new Ranking();

      System.out.println("------executor1----------");
      int i=1;
      for (Tour t : executor1 ) {
        r.setTno(t.getTno());
        r.setRnk(i);
        r.setRnk_dt(Calendar.getInstance().getTime());
        r.setRnk_item("00");
        r.setRnk_type("01");

        System.out.println(r.toString());
        i++;

        list.add(r);
      }

      //executor1.put(lists);
      int j=1;
      System.out.println("-----executor2-------");
      for (Tour t : executor2 ) {
        r.setTno(t.getTno());
        r.setRnk(j);
        r.setRnk_dt(Calendar.getInstance().getTime());
        r.setRnk_item(Integer.toString(t.getCat_no()));//? r.setRak_item(t.getCat_no) 안돼네  -> 형변환
        r.setRnk_type("02");

        System.out.println(r.toString());
        j++;

        list.add(r);
      }
      int y=1;
      System.out.println("---------executor3-----------");
      for (Tour t : executor3 ) {

        r.setTno(t.getTno());
        r.setRnk(y);
        r.setRnk_dt(Calendar.getInstance().getTime());
        r.setRnk_item(t.getLoc());
        r.setRnk_type("03");

        System.out.println(r.toString());
        y++;

        list.add(r);

      }
      rankingDao.insert(list);
      //executor1.toArray();

      //rankingDao.insert(lists);

      //lists.add((Ranking) executor1);

  }
   */





}