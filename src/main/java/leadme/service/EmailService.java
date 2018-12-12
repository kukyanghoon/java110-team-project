package leadme.service;

import javax.mail.MessagingException;
import leadme.domain.Member;
import leadme.domain.TourReq;

public interface EmailService {

  void mailAuth(Member member) throws MessagingException;
  void tourCancelMail(TourReq tour ,Member member) throws MessagingException;
}
