package leadme;

import java.util.Properties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;


// 스프링 Ioc 컨테이너에게 이 클래스가 컨테이너를 위한 설정정보를 담고있는 
// 클래스라는 것을 알려주기 위해 디음 애노테이션을 추가한다
@Configuration
//@ComponentScan
public class AppConfig2 {
  public AppConfig2() {
    System.out.println("AppConfig2() 호출됨!");
  }
  
  
  @Bean
  public JavaMailSender mailSender() {
    
    System.out.println("mailSender 설정 완료");
    
    JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
    
    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.ssl.enable", "true");
    props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
    mailSender.setJavaMailProperties(props);
    
    mailSender.setUsername("leadme504@gmail.com");
    mailSender.setPassword("flemal123");
    mailSender.setHost("smtp.gmail.com");
    mailSender.setPort(465);
    
    System.out.println("여기까지???");
    return mailSender;
  }
  
  
  /*
    
    private static final String SENDER_EMAIL = "leadme504@gmail.com";//change with your sender email

    @Bean
    public MailSender mailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");//Outgoing server requires authentication
        props.put("mail.smtp.starttls.enable", "true");//TLS must be activated
        mailSender.setJavaMailProperties(props);

        mailSender.setUsername(SENDER_EMAIL);
        mailSender.setPassword("flemal123");//change with your sender email password
        mailSender.setHost("smtp.gmail.com"); //Outgoing smtp server - change it to your SMTP server
        mailSender.setPort(587);//Outgoing port
        return mailSender;
    }

    @Bean
    public SimpleMailMessage defaultMessage() {
        SimpleMailMessage smm = new SimpleMailMessage();
        smm.setTo("default@example.com");
        smm.setFrom(SENDER_EMAIL);
        smm.setSubject("Default subject");
        smm.setText("Default text");
        return smm;
    }
*/
  
  @Bean(name = "multipartResolver") 
  public MultipartResolver multipartResolver() { 
    return new CommonsMultipartResolver(); 
    }



}
