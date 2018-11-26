package leadme;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


// 스프링 Ioc 컨테이너에게 이 클래스가 컨테이너를 위한 설정정보를 담고있는 
// 클래스라는 것을 알려주기 위해 디음 애노테이션을 추가한다
@ComponentScan
@Configuration
public class AppConfig2 {/*
    
    public AppConfig2() {
        System.out.println("AppConfig2() 호출됨!");
    }
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
*/}
