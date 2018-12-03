package leadme.domain;

import java.io.Serializable;

public class Guide implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int mno;
  private String tel;
  private String intro;
  private int cash;
  private String bnk_cd;
  private String a_acc;
  private String owner;
  private String birth;
  public int getMno() {
    return mno;
  }
  public void setMno(int mno) {
    this.mno = mno;
  }
  public String getTel() {
    return tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  public String getIntro() {
    return intro;
  }
  public void setIntro(String intro) {
    this.intro = intro;
  }
  public int getCash() {
    return cash;
  }
  public void setCash(int cash) {
    this.cash = cash;
  }
  public String getBnk_cd() {
    return bnk_cd;
  }
  public void setBnk_cd(String bnk_cd) {
    this.bnk_cd = bnk_cd;
  }
  public String getA_acc() {
    return a_acc;
  }
  public void setA_acc(String a_acc) {
    this.a_acc = a_acc;
  }
  public String getOwner() {
    return owner;
  }
  public void setOwner(String owner) {
    this.owner = owner;
  }
  public String getBirth() {
    return birth;
  }
  public void setBirth(String birth) {
    this.birth = birth;
  }
  @Override
  public String toString() {
    return "Guide [mno=" + mno + ", tel=" + tel + ", intro=" + intro + ", cash=" + cash
        + ", bnk_cd=" + bnk_cd + ", a_acc=" + a_acc + ", owner=" + owner + ", birth=" + birth + "]";
  }
   
  
  
}
