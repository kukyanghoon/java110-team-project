package leadme.domain;

import java.io.Serializable;

public class Category implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int cat_no;
  private String cat_name;
  private int up_cat_no;
  private String cat_name_eng;
  
  
  
  public String getCat_name_eng() {
    return cat_name_eng;
  }

  public void setCat_name_eng(String cat_name_eng) {
    this.cat_name_eng = cat_name_eng;
  }

  public int getCat_no() {
    return cat_no;
  }
  
  public void setCat_no(int cat_no) {
    this.cat_no = cat_no;
  }
  public String getCat_name() {
    return cat_name;
  }
  public void setCat_name(String cat_name) {
    this.cat_name = cat_name;
  }
  public int getUp_cat_no() {
    return up_cat_no;
  }
  public void setUp_cat_no(int up_cat_no) {
    this.up_cat_no = up_cat_no;
  }

  @Override
  public String toString() {
    return "Category [cat_no=" + cat_no + ", cat_name=" + cat_name + ", up_cat_no=" + up_cat_no
        + ", cat_name_eng=" + cat_name_eng + "]";
  }
 
  
  
  
  
}
