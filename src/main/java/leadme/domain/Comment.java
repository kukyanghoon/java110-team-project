package leadme.domain;

public class Comment {
  
  protected int cmt_no;
  protected int mno;
  protected String cont;
  protected int cont_star;
  protected String cont_phot;
  protected String cont_dt;
  protected String del_yn;
  protected int up_cmt_no;
  protected int tno;
  
  public int getCmt_no() {
    return cmt_no;
  }


  public void setCmt_no(int cmt_no) {
    this.cmt_no = cmt_no;
  }


  public int getMno() {
    return mno;
  }


  public void setMno(int mno) {
    this.mno = mno;
  }


  public String getCont() {
    return cont;
  }


  public void setCont(String cont) {
    this.cont = cont;
  }


  public int getCont_star() {
    return cont_star;
  }


  public void setCont_star(int cont_star) {
    this.cont_star = cont_star;
  }


  public String getCont_phot() {
    return cont_phot;
  }


  public void setCont_phot(String cont_phot) {
    this.cont_phot = cont_phot;
  }


  public String getCont_dt() {
    return cont_dt;
  }


  public void setCont_dt(String cont_dt) {
    this.cont_dt = cont_dt;
  }


  public String getDel_yn() {
    return del_yn;
  }


  public void setDel_yn(String del_yn) {
    this.del_yn = del_yn;
  }


  public int getUp_cmt_no() {
    return up_cmt_no;
  }


  public void setUp_cmt_no(int up_cmt_no) {
    this.up_cmt_no = up_cmt_no;
  }


  public int getTno() {
    return tno;
  }


  public void setTno(int tno) {
    this.tno = tno;
  }


  @Override
  public String toString() {
    return "Comment [cmt_no=" + cmt_no + ", mno=" + mno + ", cont=" + cont + ", cont_star="
        + cont_star + ", cont_phot=" + cont_phot + ", cont_dt=" + cont_dt + ", del_yn=" + del_yn
        + ", up_cmt_no=" + up_cmt_no + ", tno=" + tno + "]";
  }

}
