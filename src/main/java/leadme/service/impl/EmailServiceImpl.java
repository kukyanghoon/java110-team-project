package leadme.service.impl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import leadme.domain.Member;
import leadme.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

  @Autowired JavaMailSender mailSender;

  @Override
  public void mailAuth(Member member) throws MessagingException{
    
    
    MimeMessage message = mailSender.createMimeMessage(); 
    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    
    System.out.println(member);
    
    String msg = "<div><h1>"+ member.getPassword() 
                +"</h1><p><a href='http://localhost:8888/app/auth/emailAuth/" 
                + member.getNo() + "'>인증하기</a></p></div>";
    
    messageHelper.setTo(member.getEmail()); 
    messageHelper.setText(msg);
    messageHelper.setFrom("leadme504@gmail.com"); 
    messageHelper.setSubject("LEADME 인증 배달왔어염!");
    message.setContent(msg, "text/html; charset=utf-8");
    
    mailSender.send(message);
    
  }


}