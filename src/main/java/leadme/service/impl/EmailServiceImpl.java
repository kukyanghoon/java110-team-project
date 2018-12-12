package leadme.service.impl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import leadme.domain.Member;
import leadme.domain.TourReq;
import leadme.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

  @Autowired JavaMailSender mailSender;

  @Override
  public void mailAuth(Member member) throws MessagingException{
    
    
    MimeMessage message = mailSender.createMimeMessage(); 
    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    
    System.out.println(member);
    
    String msg = 
        "    <img src=\"https://d2ur7st6jjikze.cloudfront.net/themes/413_mobile_medium_1531300354.jpg?1531300354\" alt=\"logo\"/>\r\n" + 
        "    <div style=\"width: 540px; height: 150px; padding: 30px;\">\r\n" + 
        //"    <img src=\"127.0.0.1:8888/resources/img/logo.png\" alt=\"logo\"/>\r\n" + 
        "    <h1 style>이메일 인증</h1>\r\n" + 
        "    <p>\r\n" + 
        "    안녕하세요. " + member.getName() + " 회원님!<br>\r\n" + 
        "    아래의 버튼을 눌러주세요.\r\n" + 
        "    </p>\r\n" + 
        "    <h2><a href='http://localhost:8888/app/auth/emailAuth/" 
        + member.getNo()  + "'>인증하기</a></h2>\r\n" + 
        "    </div>\r\n";
    
    messageHelper.setTo(member.getEmail()); 
    messageHelper.setText(msg);
    messageHelper.setFrom("leadme504@gmail.com"); 
    messageHelper.setSubject("LEADME 이메일 인증");
    message.setContent(msg, "text/html; charset=utf-8");
    
    mailSender.send(message);
    
  }


  @Override
  public void tourCancelMail(TourReq tour ,Member member) throws MessagingException{
    
    
    MimeMessage message = mailSender.createMimeMessage(); 
    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    
    System.out.println(member);
    
    String msg = 
        "    <img src=\"https://d2ur7st6jjikze.cloudfront.net/themes/413_mobile_medium_1531300354.jpg?1531300354\" alt=\"logo\"/>\r\n" + 
        "    <div style=\"width: 540px; height: 150px; padding: 30px;\">\r\n" + 
        //"    <img src=\"127.0.0.1:8888/resources/img/logo.png\" alt=\"logo\"/>\r\n" + 
        "    <h1 style>이메일 인증</h1>\r\n" + 
        "    <p>\r\n" + 
        "    안녕하세요. " + member.getNo() + "," + member.getName() + " 회원님!<br>\r\n" + 
        "<div>" + tour.getTno() + "</div>" +
        "<div>" + tour.getTday() + "</div>" +
        "    아래의 버튼을 눌러주세요.\r\n" + 
        "    </p>\r\n" + 
        "    <h2><a href='https://docs.spring.io/spring/docs/5.0.9.RELEASE/spring-framework-reference/data-access.html#spring-data-tier" 
        + member.getNo()  + "'>인증하기</a></h2>\r\n" + 
        "    </div>\r\n";
    
    messageHelper.setTo("leadme504@gmail.com"); 
    messageHelper.setText(msg);
    messageHelper.setFrom(member.getEmail()); 
    messageHelper.setSubject("LEADME 이메일 인증");
    message.setContent(msg, "text/html; charset=utf-8");
    
    mailSender.send(message);
    
  }
  
  
}