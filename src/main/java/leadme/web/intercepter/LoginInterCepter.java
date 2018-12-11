package leadme.web.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import leadme.domain.Member;

public class LoginInterCepter implements HandlerInterceptor{
    
    @Override
    public boolean preHandle(
            HttpServletRequest request, 
            HttpServletResponse response, 
            Object handler)
            throws Exception {
      System.out.println("LoginInterCepter");
      
        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("memberInfo");
        if( member != null) {
            response.sendRedirect("/app/main"); // 결로를 브라우저에게 전달
            return false; // 페이지 컨트롤러의 request handler를 실행하지 말라
        }
        return true;
        
    }
    
}
