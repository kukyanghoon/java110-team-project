package leadme.service;

import java.util.Map;
import leadme.domain.TourReq;

public interface PaymentService {
    void insert(TourReq req);
    void update(Map<String,Object> params);
}
