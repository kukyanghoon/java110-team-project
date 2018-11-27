package leadme.service.impl;

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
  public void executor() {
    System.out.println("하하하하하하");
    //로직 구성
    
  }

  @Override
  public void delete(int no) {
    if (rankingDao.delete(no) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다.");
    }
    rankingDao.delete(no);
    
  }

  @Override
  public void add(Ranking ranking) {
    rankingDao.insert(ranking);
    
  }
  
      
}