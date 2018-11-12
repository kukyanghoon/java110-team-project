package leadme.dao;

import leadme.domain.Member;

public interface MemberDao {
    int insert(Member member);
    int delete(int no);
}
