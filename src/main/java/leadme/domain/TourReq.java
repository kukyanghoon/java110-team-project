package leadme.domain;

import java.io.Serializable;
import java.util.Date;

/* 여행신청(결제) */
public class TourReq implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int reqno;          /* 신청번호 */
  private int tno;            /* 여행번호 */
  private Date tour_dt;       /* 여행일자 */
  private int mno;            /* 회원번호 */
  private Date t_dt;          /* 신청일자 */
  private int req_cnt;        /* 신청인원 */
  private double tot_pay;     /* 총결제금액 */
  private String pay_type;    /* 결제방법 */
  private String pay_stat;    /* 결제상태 */
  private Date pay_dt;        /* 결제시각 */
  private Date can_dt;        /* 취소시각 */
  private String cur_cd;      /* 통화코드 */
  private String req_stat;    /* 신청상태 */
  private String payment_id;  /* 결제ID */
  private String err_txt;     /* 에러내용 */
  private String dDay;
  private String tDay;
  private Tour tour;
  private String formatToutdt;  /*중간 카테고리 정보*/
  private TourAvail tourAvail;
  
  public TourAvail gettourAvail() {
    return tourAvail;
  }
  public void settourAvail(TourAvail tourAvail) {
    this.tourAvail = tourAvail;
  }
  
  public String getformatToutdt() {
    return formatToutdt;
  }
  public void setformatToutdt(String formatToutdt) {
    this.formatToutdt = formatToutdt;
  }
  
  public int getReqno() {
    return reqno;
  }
  public void setReqno(int reqno) {
    this.reqno = reqno;
  }
  public int getTno() {
    return tno;
  }
  public void setTno(int tno) {
    this.tno = tno;
  }
  public Date getTour_dt() {
    return tour_dt;
  }
  public void setTour_dt(Date tour_dt) {
    this.tour_dt = tour_dt;
  }
  public int getMno() {
    return mno;
  }
  public void setMno(int mno) {
    this.mno = mno;
  }
  public Date getT_dt() {
    return t_dt;
  }
  public void setT_dt(Date t_dt) {
    this.t_dt = t_dt;
  }
  public int getReq_cnt() {
    return req_cnt;
  }
  public void setReq_cnt(int req_cnt) {
    this.req_cnt = req_cnt;
  }
  public double getTot_pay() {
    return tot_pay;
  }
  public void setTot_pay(double tot_pay) {
    this.tot_pay = tot_pay;
  }
  public String getPay_type() {
    return pay_type;
  }
  public void setPay_type(String pay_type) {
    this.pay_type = pay_type;
  }
  public String getPay_stat() {
    return pay_stat;
  }
  public void setPay_stat(String pay_stat) {
    this.pay_stat = pay_stat;
  }
  public Date getPay_dt() {
    return pay_dt;
  }
  public void setPay_dt(Date pay_dt) {
    this.pay_dt = pay_dt;
  }
  public Date getCan_dt() {
    return can_dt;
  }
  public void setCan_dt(Date can_dt) {
    this.can_dt = can_dt;
  }
  public String getCur_cd() {
    return cur_cd;
  }
  public void setCur_cd(String cur_cd) {
    this.cur_cd = cur_cd;
  }
  public String getReq_stat() {
    return req_stat;
  }
  public void setReq_stat(String req_stat) {
    this.req_stat = req_stat;
  }
  public String getPayment_id() {
    return payment_id;
  }
  public void setPayment_id(String payment_id) {
    this.payment_id = payment_id;
  }
  public String getErr_txt() {
    return err_txt;
  }
  public void setErr_txt(String err_txt) {
    this.err_txt = err_txt;
  }
  public String getdDay() {
    return dDay;
  }
  public void setdDay(String dDay) {
    this.dDay = dDay;
  }
  public String getTday() {
    return tDay;
  }
  public void setTday(String tday) {
    this.tDay = tday;
  }
  public Tour getTour() {
    return tour;
  }
  public void setTour(Tour tour) {
    this.tour = tour;
  }
  @Override
  public String toString() {
    return "TourReq [reqno=" + reqno + ", tno=" + tno + ", tour_dt=" + tour_dt + ", mno=" + mno
        + ", t_dt=" + t_dt + ", req_cnt=" + req_cnt + ", tot_pay=" + tot_pay + ", pay_type="
        + pay_type + ", pay_stat=" + pay_stat + ", pay_dt=" + pay_dt + ", can_dt=" + can_dt
        + ", cur_cd=" + cur_cd + ", req_stat=" + req_stat + ", payment_id=" + payment_id
        + ", err_txt=" + err_txt + ", dDay=" + dDay + ", tday=" + tDay + ", tour=" + tour + "]";
  }
  
  
  
}
