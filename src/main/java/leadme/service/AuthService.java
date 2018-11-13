package leadme.service;

import javax.servlet.http.HttpSession;
import leadme.domain.Member;

public interface AuthService {
    AuthService login(Member member) throws Exception;
    void loginPass(HttpSession session);
}
