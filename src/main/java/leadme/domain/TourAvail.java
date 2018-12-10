package leadme.domain;

import java.io.Serializable;

public class TourAvail implements Serializable {
  private static final long serialVersionUID = 1L;
  
   private String tour_dt;
   private String tno;
   private String tour_albm;
  public String getTour_dt() {
    return tour_dt;
  }
  public void setTour_dt(String tour_dt) {
    this.tour_dt = tour_dt;
  }
  public String getTno() {
    return tno;
  }
  public void setTno(String tno) {
    this.tno = tno;
  }
  public String getTour_albm() {
    return tour_albm;
  }
  public void setTour_albm(String tour_albm) {
    this.tour_albm = tour_albm;
  }
  
  
  @Override
  public String toString() {
    return "TourAvail [tour_dt=" + tour_dt + ", tno=" + tno + ", tour_albm=" + tour_albm + "]";
  }
    
   
   
}
