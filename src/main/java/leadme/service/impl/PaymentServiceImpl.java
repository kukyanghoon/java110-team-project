package leadme.service.impl;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import leadme.dao.PaymentDao;
import leadme.domain.TourReq;
import leadme.service.PaymentService;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired PaymentDao paymentDao;

    
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
    public void insert(TourReq req) {
        paymentDao.insert(req);
    }


    @Override
    public void update(Map<String,Object> params) {
        paymentDao.update(params);
    }


    @Override
    public Map<String, Object> select(int reqno) {
        return paymentDao.select(reqno);
    }


}


