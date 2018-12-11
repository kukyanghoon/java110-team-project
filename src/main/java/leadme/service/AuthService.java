package leadme.service;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import leadme.domain.Member;

public interface AuthService {
    Member login(Member member) throws Exception;
    void loginPass(HttpSession session,Member member);
    Member createSocialUser(Member member);
    Member socialLogin(Member member) throws Exception;
    
    Member getFacebookMember(String accessToken,String memberType);
    
    void createUser(Member member) throws Exception;
    
    AuthService findUser(Member member) throws Exception;
    
    AuthService updatePw(Member member) throws Exception;
    
    AuthService mailSender(Member member) throws MessagingException;
    
    void createGuide(String guideInfo);
    
    void certificateEmail(String mno) throws Exception;
    
    void goodbye(Member member) throws Exception;
}
