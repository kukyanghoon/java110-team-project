package leadme.service;

import javax.mail.MessagingException;
import leadme.domain.Member;

public interface EmailService {

  void mailAuth(Member member) throws MessagingException;

}
