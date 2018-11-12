package leadme.domain;

import java.io.Serializable;
import java.util.Date;

public class Tour implements Serializable {
  private static final long serialVersionUID = 1L;
  
    private int tno;            /* 여행번호 */
    private String titl;        /* 타이틀  */
    private String loc;         /* 지역 */
    private double star;        /* 별점평균 */
    private int cmt_cnt;        /* 후기수 */
    private int hits;           /* 조회수 */
    private int amt;            /* 금액 */
    private String tour_intro;  /* 여행소개 */
    private String req_inf;     /* 필수안내 */
    private Date req_dt;        /* 여행등록일시 */
    private Date mod_dt;        /* 여행수정일시 */
    private String join_plc;    /* 만나는장소 */
    private Double lat;         /* 위도값 */
    private Double lon;         /* 경도값 */
    private Date join_tm;       /* 만나는시각 */
    private String del_yn;      /* 삭제여부 */
    private String pri_phot;    /* 대표사진 */
    private String pri_mv;      /* 동영상주소 */
    private int cat_no;         /* 카테고리번호 */
    private int mno;            /* 여행등록회원번호 */
    
    public int getTno() {
      return tno;
    }
    public void setTno(int tno) {
      this.tno = tno;
    }
    public String getTitl() {
      return titl;
    }
    public void setTitl(String titl) {
      this.titl = titl;
    }
    public String getLoc() {
      return loc;
    }
    public void setLoc(String loc) {
      this.loc = loc;
    }
    public double getStar() {
      return star;
    }
    public void setStar(double star) {
      this.star = star;
    }
    public int getCmt_cnt() {
      return cmt_cnt;
    }
    public void setCmt_cnt(int cmt_cnt) {
      this.cmt_cnt = cmt_cnt;
    }
    public int getHits() {
      return hits;
    }
    public void setHits(int hits) {
      this.hits = hits;
    }
    public int getAmt() {
      return amt;
    }
    public void setAmt(int amt) {
      this.amt = amt;
    }
    public String getTour_intro() {
      return tour_intro;
    }
    public void setTour_intro(String tour_intro) {
      this.tour_intro = tour_intro;
    }
    public String getReq_inf() {
      return req_inf;
    }
    public void setReq_inf(String req_inf) {
      this.req_inf = req_inf;
    }
    public Date getReq_dt() {
      return req_dt;
    }
    public void setReq_dt(Date req_dt) {
      this.req_dt = req_dt;
    }
    public Date getMod_dt() {
      return mod_dt;
    }
    public void setMod_dt(Date mod_dt) {
      this.mod_dt = mod_dt;
    }
    public String getJoin_plc() {
      return join_plc;
    }
    public void setJoin_plc(String join_plc) {
      this.join_plc = join_plc;
    }
    public Double getLat() {
      return lat;
    }
    public void setLat(Double lat) {
      this.lat = lat;
    }
    public Double getLon() {
      return lon;
    }
    public void setLon(Double lon) {
      this.lon = lon;
    }
    public Date getJoin_tm() {
      return join_tm;
    }
    public void setJoin_tm(Date join_tm) {
      this.join_tm = join_tm;
    }
    public String getDel_yn() {
      return del_yn;
    }
    public void setDel_yn(String del_yn) {
      this.del_yn = del_yn;
    }
    public String getPri_phot() {
      return pri_phot;
    }
    public void setPri_phot(String pri_phot) {
      this.pri_phot = pri_phot;
    }
    public String getPri_mv() {
      return pri_mv;
    }
    public void setPri_mv(String pri_mv) {
      this.pri_mv = pri_mv;
    }
    public int getCat_no() {
      return cat_no;
    }
    public void setCat_no(int cat_no) {
      this.cat_no = cat_no;
    }
    public int getMno() {
      return mno;
    }
    public void setMno(int mno) {
      this.mno = mno;
    }
    
    
}
