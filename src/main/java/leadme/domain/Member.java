package leadme.domain;

import java.io.Serializable;

public class Member implements Serializable {
    private static final long serialVersionUID = 1L;
    
    protected int no;
    protected String name;
    protected String password;
    protected String cert_email;
    protected String email;
    protected String photo;
    protected String mtype;
    protected String path;
    protected String active;
    protected String lang;
    protected Guide guide;
    
    
    
    
    public String getLang() {
      return lang;
    }
    public void setLang(String lang) {
      this.lang = lang;
    }
    public int getNo() {
      return no;
    }
    public void setNo(int no) {
      this.no = no;
    }
    public String getName() {
      return name;
    }
    public void setName(String name) {
      this.name = name;
    }
    public String getPassword() {
      return password;
    }
    public void setPassword(String password) {
      this.password = password;
    }
    public String getCert_email() {
      return cert_email;
    }
    public void setCert_email(String cert_email) {
      this.cert_email = cert_email;
    }
    public String getEmail() {
      return email;
    }
    public void setEmail(String email) {
      this.email = email;
    }
    public String getPhoto() {
      return photo;
    }
    public void setPhoto(String photo) {
      this.photo = photo;
    }
    public String getMtype() {
      return mtype;
    }
    public void setMtype(String mtype) {
      this.mtype = mtype;
    }
    public String getPath() {
      return path;
    }
    public void setPath(String path) {
      this.path = path;
    }
    public String getActive() {
      return active;
    }
    public void setActive(String active) {
      this.active = active;
    }
    public Guide getGuide() {
      return guide;
    }
    public void setGuide(Guide guide) {
      this.guide = guide;
    }
    @Override
    public String toString() {
      return "Member [no=" + no + ", name=" + name + ", password=" + password + ", cert_email="
          + cert_email + ", email=" + email + ", photo=" + photo + ", mtype=" + mtype + ", path="
          + path + ", active=" + active + ", lang=" + lang + ", guide=" + guide + "]";
    }
    
    
    
    
}