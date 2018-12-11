package leadme.domain;

import java.io.Serializable;
import java.util.Date;

public class Tour implements Serializable {
  private static final long serialVersionUID = 1L;
  
    private int tno;            /* 여행번호 */
    private String titl;        /* 타이틀 /여행제목 */
    private String loc;         /* 지역 */
    private double star;        /* 별점평균 */
    private int cmt_cnt;        /* 후기수 */
    private int hits;           /* 조회수 */
    private int amt;            /* 금액 */
    private String tour_intro;  /* 여행소개 */
    private String req_inf;     /* 필수안내 */
    private String reg_dt;        /* 여행등록일시 */
    private String mod_dt;        /* 여행수정일시 */
	private String join_plc;    /* 만나는장소 */
    private Double lat;         /* 위도값 */
    private Double lon;         /* 경도값 */
    private String join_tm;       /* 만나는시각 */
    private String del_yn;      /* 삭제여부 */
    private String pri_phot;    /* 대표사진 */
    private String pri_mv;      /* 동영상주소 */
    private int cat_no;         /* 카테고리번호 */
    private int mno;            /* 여행등록회원번호 */
    private Member member;      /* 회원 정보*/
    private Category category;  /*카테고리 정보*/
    private Category mid_category;  /*중간 카테고리 정보*/
	private String mx_pn;		/*최대가능인원*/
	private String tour_dt;		/*여행가능날짜*/
	private String albm_link; /*웹앨범주소*/
	private String join_phot; /*만나는 장소 사진*/
	
	
	public void setMod_dt(String mod_dt) {
		this.mod_dt = mod_dt;
	}
	public String getJoin_phot() {
		return join_phot;
	}
	public void setJoin_phot(String join_phot) {
		this.join_phot = join_phot;
	}
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
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
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
	public String getJoin_tm() {
		return join_tm;
	}
	public void setJoin_tm(String join_tm) {
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
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Category getMid_category() {
		return mid_category;
	}
	public void setMid_category(Category mid_category) {
		this.mid_category = mid_category;
	}
	public String getMx_pn() {
		return mx_pn;
	}
	public void setMx_pn(String mx_pn) {
		this.mx_pn = mx_pn;
	}
	public String getTour_dt() {
		return tour_dt;
	}
	public void setTour_dt(String tour_dt) {
		this.tour_dt = tour_dt;
	}
	public String getAlbm_link() {
		return albm_link;
	}
	public void setAlbm_link(String albm_link) {
		this.albm_link = albm_link;
	}
	@Override
	public String toString() {
		return "Tour [tno=" + tno + ", titl=" + titl + ", loc=" + loc + ", star=" + star + ", cmt_cnt=" + cmt_cnt
				+ ", hits=" + hits + ", amt=" + amt + ", tour_intro=" + tour_intro + ", req_inf=" + req_inf
				+ ", reg_dt=" + reg_dt + ", mod_dt=" + mod_dt + ", join_plc=" + join_plc + ", lat=" + lat + ", lon="
				+ lon + ", join_tm=" + join_tm + ", del_yn=" + del_yn + ", pri_phot=" + pri_phot + ", pri_mv=" + pri_mv
				+ ", cat_no=" + cat_no + ", mno=" + mno + ", member=" + member + ", category=" + category
				+ ", mid_category=" + mid_category + ", mx_pn=" + mx_pn + ", tour_dt=" + tour_dt + ", albm_link="
				+ albm_link + ", join_phot=" + join_phot + "]";
	}
	
	
	
    
}
