package leadme.web;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Details;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.RefundRequest;
import com.paypal.api.payments.Sale;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import leadme.domain.TourReq;
import leadme.service.PaymentService;
import leadme.util.Utils;

@RequestMapping("payment")
@Controller
@SessionAttributes("resultMap")
public class PaymentController { 
    
    PaymentService paymentService;
    ServletContext sc;
    SessionLocaleResolver localeResolver;
    MessageSource messageSource;
    final String clientId = "ASu4NkjdYEK4qZyScOddfVEttM9AAdfycvGErAa_XKEUnQc6CxMmx1kF6x80sznU-7jU6C1tyLjT64qx";
    final String clientSecret = "EF-VzW5PTS-nvhGSjBrt9bddqBCaIJsmapgeWGu5AetzTa_EhvDwGjy69WtQlfvf1hCbr1kkU1k1ijwp";
    final String STAT_PENDING = "00";
    final String STAT_OK = "01";
    final String STAT_CAN = "02";
    final String STAT_ERR = "03";
    public static final String LANG_EN = "en";
    APIContext apiContext;

    public PaymentController(
            PaymentService paymentService, 
            SessionLocaleResolver localeResolver,     
            MessageSource messageSource,
            ServletContext sc) {
        this.paymentService = paymentService;
        this.localeResolver = localeResolver;
        this.messageSource = messageSource;
        this.sc = sc;
        apiContext = new APIContext(clientId, clientSecret, "sandbox");
    }

    
    @PostMapping
    public String payment( /*todo: get params and set model*/
        Locale locale,
        HttpServletRequest request,
        Model model) {

      if(!LANG_EN.equals(locale.toString()))
        locale = localeResolver.resolveLocale(request);
      
      request.setAttribute("lang", locale.toString());
      
      Double exRate = Utils.getExchangeRate();
      //Double exRate = (double) 100;
      Double usd_price = Double.valueOf(request.getParameter("price")) * exRate;
      Double usd_tot_price = Double.valueOf(request.getParameter("tot_price")) * exRate;
      
      
      model.addAttribute("tno", request.getParameter("tno"));
      model.addAttribute("tour_date", request.getParameter("tour_date"));
      model.addAttribute("person_num", request.getParameter("person_num"));
      model.addAttribute("pri_phot", request.getParameter("pri_phot"));
      model.addAttribute("title", request.getParameter("title"));
      model.addAttribute("guide_name", request.getParameter("guide_name"));
      model.addAttribute("guide_photo", request.getParameter("guide_photo"));
      model.addAttribute("price", request.getParameter("price"));
      model.addAttribute("tot_price", request.getParameter("tot_price"));
      model.addAttribute("usd_price", String.format("%.2f", usd_price));
      model.addAttribute("usd_tot_price", String.format("%.2f", usd_tot_price));
      model.addAttribute("mno", request.getParameter("mno"));
      model.addAttribute("name", request.getParameter("name"));
      
      
      return "payment/payment";
    }
    
    @PostMapping("paypal")
    public String paypal(
        int tno,
        Date tour_dt,
        int mno,
        int req_cnt,
        double usd_tot_price,
        String pay_type
        ) {

      
      /* Logging */
      TourReq tourReq = setTourReq(tno, tour_dt, mno, req_cnt, usd_tot_price, pay_type);
      paymentService.insert(tourReq);
      
      // Define payment
      Payer payer = new Payer();
      payer.setPaymentMethod("paypal");

      RedirectUrls redirectUrls = new RedirectUrls();
      redirectUrls.setCancelUrl("http://localhost:8888/app/main");
      redirectUrls.setReturnUrl("http://localhost:8888/app/payment/process?reqno="+String.valueOf(tourReq.getReqno()));
      System.out.println("!!!!reqno==>"+tourReq.getReqno());
      // Set payment details
      Details details = new Details();
      details.setShipping("0");
      
//      Double tax = usd_tot_price / 100;
      
      details.setSubtotal(String.format("%.2f", usd_tot_price));
      System.out.println(details.getSubtotal());
      details.setTax("0");
      
      // Payment amount
      Amount amount = new Amount();
      amount.setCurrency("USD");
      amount.setTotal(String.valueOf(usd_tot_price));
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
        Payment createdPayment = payment.create(apiContext);

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


    private TourReq setTourReq(int tno, Date tour_dt, int mno, int req_cnt, double tot_pay,
        String pay_type) {
      TourReq req = new TourReq();
      req.setTno(tno);
      req.setTour_dt(tour_dt);
      req.setMno(mno);
      req.setReq_cnt(req_cnt);
      req.setTot_pay(tot_pay);
      req.setPay_type(pay_type);
      req.setPay_stat(STAT_PENDING);
      req.setCur_cd("USD");
      req.setReq_stat(STAT_PENDING);
      
      return req;
    }
    
    
    @RequestMapping("process")
    public String process(
        HttpServletRequest request, 
        int reqno, 
        Model model,
        Map<String,Object> params) {
      
      String redirectUrl="";
      // Execute Payment
      Payment payment = new Payment();
      payment.setId(request.getParameter("paymentId"));

      PaymentExecution paymentExecution = new PaymentExecution();
      paymentExecution.setPayerId(request.getParameter("PayerID"));
      try {
        Payment createdPayment = payment.execute(apiContext, paymentExecution);
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
        
        Sale sale = transactions.get(0).getRelatedResources().get(0).getSale();
        
        Iterator<Links> links = sale.getLinks().iterator();
        
        while (links.hasNext()) {
          Links link = links.next();
          if (link.getRel().equalsIgnoreCase("refund")) {
//            System.out.println("refund==>"+link.getHref());
          }
        }
//        System.out.println("tran_id??=>"+transactions.get(0).getPurchaseUnitReferenceId());
//        System.out.println("reqno==>"+reqno);
//        System.out.println("state1==>"+createdPayment.getState());
//        System.out.println("state2==>"+sale.getState());
//        System.out.println("failureReason==>"+createdPayment.getFailureReason());
//        System.out.println("ID==>"+createdPayment.getId());
//        System.out.println("paymentID==>"+request.getParameter("paymentId"));
//        System.out.println("createTime==>"+createdPayment.getCreateTime());
//        System.out.println("updateTime==>"+createdPayment.getUpdateTime());
        
        
        params.put("transaction_id", sale.getId());
        params.put("reqno", reqno);
        
        if("completed".equals(sale.getState()) 
            && createdPayment.getFailureReason() == null) {
            params.put("pay_stat", STAT_OK);
            params.put("req_stat", STAT_OK);
            redirectUrl = "redirect:payment-complete";
        } else {
            params.put("pay_stat", STAT_ERR);
            params.put("req_stat", STAT_ERR);
            params.put("err_txt", createdPayment.getFailureReason());
            redirectUrl = "redirect:payment-fail";
        }
        /* update payment history */
        paymentService.update(params);
        
        model.addAttribute("resultMap", paymentService.select(reqno));
        
      } catch (PayPalRESTException e) {
        System.err.println(e.getDetails());
      }
      
      return redirectUrl;
    }
    
    @RequestMapping("payment-complete")
    public String complete() {
      return "payment/payment-complete";
    }
    
    @RequestMapping("payment-fail")
    public String fail() {
      return "payment/payment-fail";
    }
    
    @RequestMapping("refund")
    @ResponseBody
    public String refund(
        HttpServletRequest request, 
        HttpServletResponse response,
        int reqno) throws Exception {
        
      Map<String,Object> resultMap = paymentService.select(reqno);
        
      Sale sale = new Sale();
      sale.setId(resultMap.get("transaction_id").toString());

       RefundRequest refund = new RefundRequest();
      try {
          sale.refund(apiContext, refund);
//          ResultPrinter.addResult(request, response, "Sale Refunded", Sale.getLastRequest(), Sale.getLastResponse(), null);
      } catch (PayPalRESTException e) {
            System.out.println(e.getMessage());
//          ResultPrinter.addResult(request, response, "Sale Refunded", Sale.getLastRequest(), null, e.getMessage());
      }
        
      return "Refund OK!!";
    }
    
}
