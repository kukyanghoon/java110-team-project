package leadme.domain;

import java.io.Serializable;

public class RealName implements Serializable {
  
  private static final long serialVersionUID = 1L;
  
  private String bank_code_std;
  private String account_num;
  private String account_holder_info_type;
  private String account_holder_info;
  private String tran_dtime;
  public String getBank_code_std() {
    return bank_code_std;
  }
  public void setBank_code_std(String bank_code_std) {
    this.bank_code_std = bank_code_std;
  }
  public String getAccount_num() {
    return account_num;
  }
  public void setAccount_num(String account_num) {
    this.account_num = account_num;
  }
  public String getAccount_holder_info_type() {
    return account_holder_info_type;
  }
  public void setAccount_holder_info_type(String account_holder_info_type) {
    this.account_holder_info_type = account_holder_info_type;
  }
  public String getAccount_holder_info() {
    return account_holder_info;
  }
  public void setAccount_holder_info(String account_holder_info) {
    this.account_holder_info = account_holder_info;
  }
  public String getTran_dtime() {
    return tran_dtime;
  }
  public void setTran_dtime(String tran_dtime) {
    this.tran_dtime = tran_dtime;
  }
  
  @Override
  public String toString() {
    return "RealName [bank_code_std=" + bank_code_std + ", account_num=" + account_num
        + ", account_holder_info_type=" + account_holder_info_type + ", account_holder_info="
        + account_holder_info + ", tran_dtime=" + tran_dtime + "]";
  }
    
}
