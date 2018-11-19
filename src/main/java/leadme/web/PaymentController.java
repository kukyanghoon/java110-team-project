package leadme.web;

import java.util.ArrayList;
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
import leadme.service.MainService;

@Controller
public class PaymentController { 
    
    MainService mainService;
    ServletContext sc;
    SessionLocaleResolver localeResolver;
    MessageSource messageSource;
    final String clientId = "ASu4NkjdYEK4qZyScOddfVEttM9AAdfycvGErAa_XKEUnQc6CxMmx1kF6x80sznU-7jU6C1tyLjT64qx";
    final String clientSecret = "EF-VzW5PTS-nvhGSjBrt9bddqBCaIJsmapgeWGu5AetzTa_EhvDwGjy69WtQlfvf1hCbr1kkU1k1ijwp";
    APIContext context;

    public PaymentController(
            MainService mainService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.mainService = mainService;
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
    public String payment() {
     

      // Define payment
      Payer payer = new Payer();
      payer.setPaymentMethod("paypal");

      RedirectUrls redirectUrls = new RedirectUrls();
      redirectUrls.setCancelUrl("http://localhost:8888/app/main");
      redirectUrls.setReturnUrl("http://localhost:8888/app/process");

      // Set payment details
      Details details = new Details();
      details.setShipping("0");
      details.setSubtotal("5");
      details.setTax("1");

      // Payment amount
      Amount amount = new Amount();
      amount.setCurrency("USD");
      // Total must be equal to sum of shipping, tax and subtotal.
      amount.setTotal("6");
      amount.setDetails(details);


      Transaction transaction = new Transaction();
      transaction.setAmount(amount);
      transaction
        .setDescription("LEADME :: Real trip with local friends");
      transaction.setNotifyUrl("http://localhost:8888/app/login");

      List<Transaction> transactions = new ArrayList<Transaction>();
      transactions.add(transaction);

      Payment payment = new Payment();
      payment.setIntent("sale");
      payment.setPayer(payer);
      payment.setRedirectUrls(redirectUrls);
      payment.setTransactions(transactions);
      
      
      // Create payment
      try {
        Payment createdPayment = payment.create(context);

        Iterator<Links> links = createdPayment.getLinks().iterator();
        while (links.hasNext()) {
          Links link = links.next();
          if (link.getRel().equalsIgnoreCase("approval_url")) {
            return "redirect:"+link.getHref();
          }
        }
      } catch (PayPalRESTException e) {
          System.err.println(e.getDetails());
      }
      
      return null;
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
        }
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
      return "payment/payment-complete";
    }
        
}







