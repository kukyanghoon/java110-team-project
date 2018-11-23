package leadme.domain;

import java.io.Serializable;

public class DepositRequest implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private String tran_no;
  private String bank_code_std;
  private String account_num;
  private String account_holder_name;
  private String print_content;
  private String tran_amt;
  
  public DepositRequest(
      String tran_no, String bank_code_std, String account_num, String account_holder_name, 
      String print_content, String tran_amt) {
    this.tran_no = tran_no;
    this.bank_code_std = bank_code_std;
    this.account_num = account_num;
    this.account_holder_name = account_holder_name;
    this.print_content = print_content;
    this.tran_amt = tran_amt;
  }
  
  public String getTran_no() {
    return tran_no;
  }
  public void setTran_no(String tran_no) {
    this.tran_no = tran_no;
  }
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
  public String getAccount_holder_name() {
    return account_holder_name;
  }
  public void setAccount_holder_name(String account_holder_name) {
    this.account_holder_name = account_holder_name;
  }
  public String getPrint_content() {
    return print_content;
  }
  public void setPrint_content(String print_content) {
    this.print_content = print_content;
  }
  public String getTran_amt() {
    return tran_amt;
  }
  public void setTran_amt(String tran_amt) {
    this.tran_amt = tran_amt;
  }
  public static long getSerialversionuid() {
    return serialVersionUID;
  }
  
  @Override
  public String toString() {
    return "DepositRequest [tran_no=" + tran_no + ", bank_code_std=" + bank_code_std
        + ", account_num=" + account_num + ", account_holder_name=" + account_holder_name
        + ", print_content=" + print_content + ", tran_amt=" + tran_amt + "]";
  }
  
}
