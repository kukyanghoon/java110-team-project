package leadme.dao;

import java.util.Map;
import leadme.domain.Member;

public interface UserDao {
  int photoModify(Map<String,Object> param);
  Member callBackUser(int no);
}
