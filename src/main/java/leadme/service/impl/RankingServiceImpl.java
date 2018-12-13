package leadme.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import leadme.dao.RankingDao;
import leadme.domain.Ranking;
import leadme.domain.Tour;
import leadme.service.RankingService;

@Service
public class RankingServiceImpl implements RankingService {

  @Autowired RankingDao rankingDao; 
  @Autowired RankingService rankingService;

  private List<Tour> getExecutorTourBest() {
    return  rankingDao.getExecutorTourBest();
  }

  private List<List<Tour>> getExecutorThemeBest() {

    List<List<Tour>> themeTourList = new ArrayList<>();
    System.out.println("태마별 랭킹 자료");
    for (int i = 10; i <= 50; i = i+10 ) {
      themeTourList.add(rankingDao.getExecutorThemeBest(i));
    }

    return themeTourList;
  }

  private List<List<Tour>> getExecutorLocalBest() {

    List<List<Tour>> locTourList = new ArrayList<>();

    System.out.println("지역별 랭킹 자료");
    for (int i = 1; i <= 17; i++) {
      locTourList.add(rankingDao.getExecutorLocalBest(i));
    }
    return  locTourList;
  }


  @Override
  public void add() {

    List<Tour> tourList = getExecutorTourBest();
    List<List<Tour>> themeTourList = getExecutorThemeBest();
    List<List<Tour>> locTourList = getExecutorLocalBest();


    List<Ranking> rank = new ArrayList<>();

    int rankNum=1;
    for (Tour t : tourList) {
      Ranking r = new Ranking();
      r.setRnk_type("01");
      r.setRnk_item("00");
      r.setTno(t.getTno());
      r.setRnk(rankNum);
      rank.add(r);
      rankNum++;
    }

    for (List<Tour> themelist : themeTourList) {
      rankNum=1;
      for (Tour t : themelist) {
        Ranking r = new Ranking();
        r.setRnk_type("02");
        r.setRnk_item(Integer.toString(t.getCat_no()));
        r.setTno(t.getTno());
        r.setRnk(rankNum);
        rank.add(r);
        rankNum++;
      }
    }

    for (List<Tour> loclist : locTourList) {
      rankNum=1;
      for (Tour t : loclist) {
        Ranking r = new Ranking();
        r.setRnk_type("03");
        r.setRnk_item(t.getLoc());
        r.setTno(t.getTno());
        r.setRnk(rankNum);
        rank.add(r);
        rankNum++;
      }
    }

    System.out.println("랭킹 최종 확인");

    for (Ranking r: rank) {
      System.out.println(r);
    }

    Map<String,Object> params = new HashMap<>();
    params.put("data", rank);

    System.out.println("insert전");

    int num = rankingDao.insert(params);

    System.out.println("몇개 됐나요~~??? : " + num);
    System.out.println("insert후");

  }

  @Override
  public void delete() {
    System.err.println("삭제전");
    rankingDao.delete();
    System.err.println("삭제후");
  }

}