package leadme.dao;

import java.util.Map;
import leadme.domain.Member;

public interface GuideDao {
  Member guideFindByGno(Map<String, Object> param);
}
