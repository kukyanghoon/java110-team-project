// Spring WebMVC 설정을 다루는 클래스
package leadme.web;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import leadme.web.intercepter.AuthInterCepter;
import leadme.web.intercepter.GuideInterCepter;

// 이 클래스가 IoC컨테이너가 사용해야할 설정 정보를 담고있는 클래스임을
// 프론트 컨트롤러에게 알려주기위해서는 다음 애노테이션을 반드시 붙여야 한다
@Configuration
//다음 애노테이션을 붙이면 <mvc:annotation-driven/> 와 같은의미이다
// 즉 MVC 설정을 활성화 시킨다
@EnableWebMvc
public class WebConfig 
    // 만약 MVC설정을 좀더 세밀하게 제어하고 싶다면 다음 인터페이스를 구현하라
    implements WebMvcConfigurer {
    
    public WebConfig() {
        System.out.println("WebConfig 호출됨");
    }
    
    
    // 인터페이스의 모든 메서드를 당장 구현할 필요가 없다
    // 설정하고싶은 메서드만 찾아서 구현하라
    
    // 인터셉터를 설정하고 싶다면 다음 메서드를 구현하라
    // => 이 메서드를 프론트 컨트롤러가 호출하여 인터셉터를 관리할 것이다
    
    
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
      System.out.println("addInterceptors()");
        // 추가하고픈 인터셉터를 등록기(registry)에 추가하라
        registry.addInterceptor(new AuthInterCepter()).addPathPatterns("/**/payment");
        
        registry.addInterceptor(new GuideInterCepter())
                .addPathPatterns("/**/myInfo");
    }
    
}
