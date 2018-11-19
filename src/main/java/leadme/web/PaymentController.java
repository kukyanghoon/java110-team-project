package leadme.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Details;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import leadme.domain.TourReq;
import leadme.service.PaymentService;

@Controller
public class PaymentController { 
    
    PaymentService paymentService;
    ServletContext sc;
    SessionLocaleResolver localeResolver;
    MessageSource messageSource;
    final String clientId = "ASu4NkjdYEK4qZyScOddfVEttM9AAdfycvGErAa_XKEUnQc6CxMmx1kF6x80sznU-7jU6C1tyLjT64qx";
    final String clientSecret = "EF-VzW5PTS-nvhGSjBrt9bddqBCaIJsmapgeWGu5AetzTa_EhvDwGjy69WtQlfvf1hCbr1kkU1k1ijwp";
    APIContext context;

    public PaymentController(
            PaymentService paymentService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.paymentService = paymentService;
        this.localeResolver = localeResolver;
        this.messageSource = messageSource;
        this.sc = sc;
        context = new APIContext(clientId, clientSecret, "sandbox");
    }

    
    @GetMapping("payment")
    public String payment(
        Locale locale,
        HttpServletRequest request,
        @RequestParam(defaultValue="20")  String rnk_item,
        HttpSession session,
        Model model) {

      /* JAVA locale test
      System.out.println("Locale==>"+locale);
      System.out.println(localeResolver.resolveLocale(request));
      System.out.println(messageSource.getMessage("site.title", null, "default text", locale));
      */
      return "payment/payment";
    }
    
    @PostMapping("payment")
    public String payment(
        int tno,
        String tour_dt,
        int mno,
        int req_cnt,
        double tot_pay,
        String pay_type
        ) {
     

      // Define payment
      Payer payer = new Payer();
      payer.setPaymentMethod("paypal");

      RedirectUrls redirectUrls = new RedirectUrls();
      redirectUrls.setCancelUrl("http://localhost:8888/app/main");
      redirectUrls.setReturnUrl("http://localhost:8888/app/process");

      // Set payment details
      Details details = new Details();
      details.setShipping("0");
      
      Double tax = (double) (Math.round(tot_pay/100) / 100);
      
      details.setSubtotal(String.format("%.2f", tot_pay-tax));
      details.setTax(String.format("%2.f", tax));

      // Payment amount
      Amount amount = new Amount();
      amount.setCurrency("USD");
      amount.setTotal(String.format("%.2f", tot_pay));
      amount.setDetails(details);


      Transaction transaction = new Transaction();
      transaction.setAmount(amount);
      transaction
        .setDescription("LEADME :: Real trip with local friends");

      List<Transaction> transactions = new ArrayList<Transaction>();
      transactions.add(transaction);

      Payment payment = new Payment();
      payment.setIntent("sale");
      payment.setPayer(payer);
      payment.setRedirectUrls(redirectUrls);
      payment.setTransactions(transactions);
      
      
      try {
        Payment createdPayment = payment.create(context);

        Iterator<Links> links = createdPayment.getLinks().iterator();
        
        while (links.hasNext()) {
          Links link = links.next();
          if (link.getRel().equalsIgnoreCase("approval_url")) {
            paymentService.insert(setTourReq(tno, tour_dt, mno, req_cnt, tot_pay, pay_type));
            
            return "redirect:"+link.getHref();
          }
        }
      } catch (PayPalRESTException e) {
          System.err.println(e.getDetails());
      }
      
      return null;
    }


    private TourReq setTourReq(int tno, String tour_dt, int mno, int req_cnt, double tot_pay,
        String pay_type) {
      TourReq req = new TourReq();
      req.setTno(tno);
      req.setTour_dt(tour_dt);
      req.setMno(mno);
      req.setT_dt(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setReq_cnt(req_cnt);
      req.setTot_pay(tot_pay);
      req.setPay_type(pay_type);
      req.setPay_stat("REQUEST");
      req.setCur_cd("USD");
      req.setReq_stat("PENDING");
      
      return req;
    }
    
    
    @RequestMapping("process")
    public String process(HttpServletRequest request) {
      
      // Execute Payment
      Payment payment = new Payment();
      payment.setId(request.getParameter("paymentId"));

      PaymentExecution paymentExecution = new PaymentExecution();
      paymentExecution.setPayerId(request.getParameter("PayerID"));
      try {
        Payment createdPayment = payment.execute(context, paymentExecution);
        System.out.println(createdPayment);
        
        /*
        Iterator<Links> links = createdPayment.getLinks().iterator();
        while (links.hasNext()) {
          Links link = links.next();
          if (link.getRel().equalsIgnoreCase("refund")) {
            System.out.println("refund==>"+link.getHref());
          }
        }  set refund url or request again and refund?
        */
        
        List<Transaction> transactions = createdPayment.getTransactions();
        
        Iterator<Links> links = 
            transactions.get(0).getRelatedResources().get(0).getSale()
            .getLinks().iterator();
        
        while (links.hasNext()) {
          Links link = links.next();
          if (link.getRel().equalsIgnoreCase("refund")) {
            System.out.println("refund==>"+link.getHref());
          }
        }
        
        System.out.println("state==>"+createdPayment.getState());
        System.out.println("failureReason==>"+createdPayment.getFailureReason());
        System.out.println("ID==>"+createdPayment.getId());
        System.out.println("paymentID==>"+request.getParameter("paymentId"));
        System.out.println("createTime==>"+createdPayment.getCreateTime());
        System.out.println("updateTime==>"+createdPayment.getUpdateTime());
        
        
      } catch (PayPalRESTException e) {
        System.err.println(e.getDetails());
      }
      return "redirect:payment/payment-complete";
    }
        
}







