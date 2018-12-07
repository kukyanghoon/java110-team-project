package leadme.domain;

import java.io.Serializable;
import java.util.Date;

public class Ranking implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private int rnk_no;       /* 랭킹일련번호 */
  private String rnk_type;  /* 랭킹유형 */
  private String rnk_item;  /* 랭킹항목 */
  private int rnk;          /* 랭킹 */
  private int tno;          /* 여행번호 */              
  private Date rnk_dt;      /* 산출일자 */
  public int getRnk_no() {
    return rnk_no;
  }
  public void setRnk_no(int rnk_no) {
    this.rnk_no = rnk_no;
  }
  public String getRnk_type() {
    return rnk_type;
  }
  public void setRnk_type(String rnk_type) {
    this.rnk_type = rnk_type;
  }
  public String getRnk_item() {
    return rnk_item;
  }
  public void setRnk_item(String rnk_item) {
    this.rnk_item = rnk_item;
  }
  public int getRnk() {
    return rnk;
  }
  public void setRnk(int rnk) {
    this.rnk = rnk;
  }
  public int getTno() {
    return tno;
  }
  public void setTno(int tno) {
    this.tno = tno;
  }
  public Date getRnk_dt() {
    return rnk_dt;
  }
  public void setRnk_dt(Date rnk_dt) {
    this.rnk_dt = rnk_dt;
  }
  
  public static long getSerialversionuid() {
    return serialVersionUID;
  }
  @Override
  public String toString() {
    return "Ranking [rnk_no=" + rnk_no + ", rnk_type=" + rnk_type + ", rnk_item=" + rnk_item
        + ", rnk=" + rnk + ", tno=" + tno + ", rnk_dt=" + rnk_dt + "]";
  }
  
  
}
