package leadme.service;

import javax.servlet.http.HttpSession;
import leadme.domain.Member;

public interface AuthService {
    Member login(Member member);
    void loginPass(Member member, HttpSession session);
}
