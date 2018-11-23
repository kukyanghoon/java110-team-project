package leadme.domain;

import java.util.List;

public class Deposit {
    private String wd_pass_phrase;
    private String wd_print_content;
    private String name_check_option;
    private int req_cnt;
    private List<DepositRequest> req_list;
    private String tran_dtime;
    public String getWd_pass_phrase() {
      return wd_pass_phrase;
    }
    public void setWd_pass_phrase(String wd_pass_phrase) {
      this.wd_pass_phrase = wd_pass_phrase;
    }
    public String getWd_print_content() {
      return wd_print_content;
    }
    public void setWd_print_content(String wd_print_content) {
      this.wd_print_content = wd_print_content;
    }
    public String getName_check_option() {
      return name_check_option;
    }
    public void setName_check_option(String name_check_option) {
      this.name_check_option = name_check_option;
    }
    public int getReq_cnt() {
      return req_cnt;
    }
    public void setReq_cnt(int req_cnt) {
      this.req_cnt = req_cnt;
    }
    public List<DepositRequest> getReq_list() {
      return req_list;
    }
    public void setReq_list(List<DepositRequest> req_list) {
      this.req_list = req_list;
    }
    public String getTran_dtime() {
      return tran_dtime;
    }
    public void setTran_dtime(String tran_dtime) {
      this.tran_dtime = tran_dtime;
    }
    
    @Override
    public String toString() {
      return "Deposit [wd_pass_phrase=" + wd_pass_phrase + ", wd_print_content=" + wd_print_content
          + ", name_check_option=" + name_check_option + ", req_cnt=" + req_cnt + ", req_list="
          + req_list + ", tran_dtime=" + tran_dtime + "]";
    }
}
