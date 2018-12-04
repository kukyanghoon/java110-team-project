package leadme.web.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import leadme.domain.Member;

public class GuideInterCepter implements HandlerInterceptor{
    
    @Override
    public boolean preHandle(
            HttpServletRequest request, 
            HttpServletResponse response, 
            Object handler)
            throws Exception {
        
        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("memberInfo");
        if(member != null && member.getMtype().equals("G")) {
            response.sendRedirect("/app/guide/profile/my?"); // 가이드 마이페이지로 이동
            return false; // 페이지 컨트롤러의 request handler를 실행하지 말라
        }
        return true;
        
    }
    
}
