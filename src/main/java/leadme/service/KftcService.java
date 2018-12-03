package leadme.service;

import leadme.domain.RealName;

public interface KftcService {

    KftcService requestToken();
    void realName(RealName realName) throws Exception;
}
