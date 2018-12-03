package leadme.domain;

import java.io.Serializable;


/*코스등록*/
public class CourseEnrollment implements Serializable{
	private static final long serialVersionUID = 1L;

	private int cr_no; /*코스번호*/
	private int tno; /*여행번호*/
	private int cr_idx; /*순서*/
	private String cr_name; /*코스소개제목*/
	private String cr_intro; /*코스소개*/
	private String join_plc;    /* 만나는장소 */
	private Double lat;         /* 위도값 */
	private Double lon;         /* 경도값 */ 
	private String join_tm;       /* 만나는시각 */
	private String cr_phot;		/*코스사진*/

	public String getCr_phot() {
		return cr_phot;
	}
	public void setCr_phot(String cr_phot) {
		this.cr_phot = cr_phot;
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
	public int getCr_no() {
		return cr_no;
	}
	public void setCr_no(int cr_no) {
		this.cr_no = cr_no;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public int getCr_idx() {
		return cr_idx;
	}
	public void setCr_idx(int cr_idx) {
		this.cr_idx = cr_idx;
	}
	public String getCr_name() {
		return cr_name;
	}
	public void setCr_name(String cr_name) {
		this.cr_name = cr_name;
	}
	public String getCr_intro() {
		return cr_intro;
	}
	public void setCr_intro(String cr_intro) {
		this.cr_intro = cr_intro;
	}
	@Override
	public String toString() {
		return "CourseEnrollment [cr_no=" + cr_no + ", tno=" + tno + ", cr_idx=" + cr_idx + ", cr_name=" + cr_name
				+ ", cr_intro=" + cr_intro + ", join_plc=" + join_plc + ", lat=" + lat + ", lon=" + lon + ", join_tm="
				+ join_tm + ", cr_phot=" + cr_phot + "]";
	}
	
	
}
