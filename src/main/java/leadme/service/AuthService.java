package leadme.service;

import javax.servlet.http.HttpSession;
import leadme.domain.Member;
import leadme.service.impl.AuthServiceImpl;

public interface AuthService {
    AuthService login(Member member) throws Exception;
    void loginPass(HttpSession session);
    AuthServiceImpl createSocialUser(Member member);
    AuthServiceImpl socialLogin(Member member) throws Exception;
    
    Member getFacebookMember(String accessToken,String memberType);
    
    void createUser(Member member) throws Exception;
    
    Member findUser(Member member) throws Exception;
}
