package leadme.service;

import leadme.domain.RealName;

public interface KftcService {

    String requestToken();
    void realName(RealName realName, String token) throws Exception;
}
