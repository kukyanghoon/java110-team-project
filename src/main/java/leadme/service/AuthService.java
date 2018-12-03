package leadme.service;

import javax.mail.MessagingException;
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
    
    AuthService findUser(Member member) throws Exception;
    
    AuthService updatePw(Member member) throws Exception;
    
    AuthService mailSender() throws MessagingException;
    
    void createGuide(String guideInfo);
}
