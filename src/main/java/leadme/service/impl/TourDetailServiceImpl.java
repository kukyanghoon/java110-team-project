package leadme.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import leadme.dao.TourDetailDao;
import leadme.service.TourDetailService;

@Service
public class TourDetailServiceImpl implements TourDetailService {

    @Autowired TourDetailDao tourDetailDao;

    
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
    public Map<String,Object> getTour(int tno) {
      return tourDetailDao.getTour(tno);
    }


    @Override
    public Map<String,Object> getGuide(int mno) {
      return tourDetailDao.getGuide(mno);
    }


	@Override
	public List<Map<String, Object>> getCourse(int tno) {
		return tourDetailDao.getCourse(tno);
	}


	@Override
	public List<Map<String, Object>> getComments(int tno) {
		return tourDetailDao.getComments(tno);
	}

}


