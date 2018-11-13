package leadme.dao;

import java.util.Map;
import leadme.domain.Member;

public interface AuthDao {
    Member login(Map<String,Object> params);
    int createUser(Map<String,Object> params);
    Member socialLogin(Map<String,Object> params);
    
}
