package leadme.service;

import java.util.Map;
import leadme.domain.TourReq;

public interface PaymentService {
    Map<String,Object> select(int reqno);
    void insert(TourReq req);
    void update(Map<String,Object> params);
}
