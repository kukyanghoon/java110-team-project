package leadme.common;

public class Paging {
    private int pageSize = 3; // 게시 글 수
    private int firstPageNo = 1; // 첫 번째 페이지 번호
    private int prevPageNo; // 이전 페이지 번호
    private int startPageNo; // 시작 페이지 (페이징 네비 기준)
    private int pageNo; // 페이지 번호
    private int endPageNo; // 끝 페이지 (페이징 네비 기준)
    private int nextPageNo; // 다음 페이지 번호
    private int finalPageNo; // 마지막 페이지 번호
    private int totalCount; // 게시 글 전체 수
    
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getFirstPageNo() {
        return firstPageNo;
    }
    public void setFirstPageNo(int firstPageNo) {
        this.firstPageNo = firstPageNo;
    }
    public int getPrevPageNo() {
        return prevPageNo;
    }
    public void setPrevPageNo(int prevPageNo) {
        this.prevPageNo = prevPageNo;
    }
    public int getStartPageNo() {
        return startPageNo;
    }
    public void setStartPageNo(int startPageNo) {
        this.startPageNo = startPageNo;
    }
    public int getPageNo() {
        return pageNo;
    }
    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
    public int getEndPageNo() {
        return endPageNo;
    }
    public void setEndPageNo(int endPageNo) {
        this.endPageNo = endPageNo;
    }
    public int getNextPageNo() {
        return nextPageNo;
    }
    public void setNextPageNo(int nextPageNo) {
        this.nextPageNo = nextPageNo;
    }
    public int getFinalPageNo() {
        return finalPageNo;
    }
    public void setFinalPageNo(int finalPageNo) {
        this.finalPageNo = finalPageNo;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        makePaging();
    }
    
    private void makePaging() {
        
        if (totalCount == 0) return;
        if (pageNo == 0) this.setPageNo(1);
        if (pageSize == 0) this.setPageSize(3);

        int finalPage = (totalCount + (pageSize - 1)) / pageSize;
        this.setFinalPageNo(finalPage);
        
        if (pageNo > finalPage) setPageNo(finalPage);
        if (pageNo < 1) setPageNo(1);
        
        
        int startPage = ((pageNo - 1) / 10) * 10 + 1;
        int endPage = startPage + 10 - 1;

        if (endPage > finalPage) {
            endPage = finalPage;
        }
        this.setStartPageNo(startPage);
        this.setEndPageNo(endPage);
        
        
        boolean isNowFirst = pageNo == 1 ? true : false;
        boolean isNowFinal = pageNo == finalPage ? true : false;
        
        if (isNowFirst) {
            this.setPrevPageNo(1);
        } else {
            this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1)));
        }
        
        if (isNowFinal) {
            this.setNextPageNo(finalPage);
        } else {
            this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1)));
        }
        
    }
    
    @Override
    public String toString() {
        return "Paging [getPageSize()=" + getPageSize() + ", getFirstPageNo()=" + getFirstPageNo()
                + ", getPrevPageNo()=" + getPrevPageNo() + ", getStartPageNo()=" + getStartPageNo() + ", getPageNo()="
                + getPageNo() + ", getEndPageNo()=" + getEndPageNo() + ", getNextPageNo()=" + getNextPageNo()
                + ", getFinalPageNo()=" + getFinalPageNo() + ", getTotalCount()=" + getTotalCount() + "]";
    }
}
