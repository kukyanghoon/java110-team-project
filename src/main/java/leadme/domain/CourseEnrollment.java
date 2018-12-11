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
	private String cr_phot;    /* 코스사진 */
	@Override
	public String toString() {
		return "CourseEnrollment [cr_no=" + cr_no + ", tno=" + tno + ", cr_idx=" + cr_idx + ", cr_name=" + cr_name
				+ ", cr_intro=" + cr_intro + ", cr_phot=" + cr_phot + "]";
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
	public String getCr_phot() {
		return cr_phot;
	}
	public void setCr_phot(String cr_phot) {
		this.cr_phot = cr_phot;
	}
	
	
	
}
