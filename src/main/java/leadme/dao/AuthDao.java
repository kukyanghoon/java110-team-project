package leadme.dao;

import java.util.Map;
import leadme.domain.Guide;
import leadme.domain.Member;

public interface AuthDao {
    Member login(Map<String,Object> params);
    int createSocialUser(Map<String,Object> params);
    Member socialLogin(Map<String,Object> params);
    Integer createUser(Member member);
    Member findUser(Map<String,Object> params);
    int updatePw(Map<String,Object> params);
    int createGuideUser(Guide guide);
    
}
