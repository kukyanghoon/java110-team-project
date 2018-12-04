package leadme.dao;

import java.util.Map;
import leadme.domain.Member;

public interface UserDao {
  int userProfileModify(Map<String,Object> param);
  int userLangModify(Map<String,Object> param);
  int photoModify(Map<String,Object> param);
  Member callBackUser(int no);
  Member pwCheck(Map<String,Object> param);
  int pwModify(Map<String,Object> param);
}
