<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html class=" flexbox"><head>

<meta charset="UTF-8">
<meta content="Content-type: text/html; charset=UTF-8" name="http-equiv">
<meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="SyCtjRv6wVxDU6a7dWgpsvQNMP38wW6OpOyMFBUkhQ8" name="google-site-verification">
<meta content="a0a215c577b4fc16a849b8867cd9b68051ed6377" name="naver-site-verification">
<meta content="all, index, follow" name="robots">
<meta content="ko" name="locale">
<meta content="KRW" name="currency">
<meta content="현지 투어, 여행 가이드, 투어 가이드, 현지 가이드, 가이드 투어, 마이리얼트립, 현지정보, 여행정보, 입장권, 교통패스, 액티비티, 여행사, 호텔예약, 해외호텔, 호텔할인, 바로사용, 한인민박, 민박, 와이파이, 유심, 여행자보험, 항공권, 항공권 검색, 최저가 항공권" name="keywords">
<meta content="여행지에서 즐길 수 있는 가이드 투어, 명소 입장권, 교통패스, 액티비티는 물론 호텔 예약까지 전세계 현지 여행이 준비되어 있습니다.
" name="description">

<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="tDTlXobzKnPw/pTdh3VQXuVb0bgKQU+REsqd8zsdTw9kYmECAuidqqxfXRuDiHsDiwPDRHnsm1zhP2zqLosHkg==">
<meta content="113823448739791" property="fb:app_id">
<meta content="122600525" property="fb:admins">
<meta content="마이리얼트립" property="og:site_name">
<meta content="https://www.myrealtrip.com/offers/3432/reservations/2121109" property="og:url">
<link href="https://www.myrealtrip.com/opensearch.xml" rel="search" title="마이리얼트립 검색" type="application/opensearchdescription+xml">
<meta content="https://d2yoing0loi5gh.cloudfront.net/assets/og-image-35b4b66874396ae2fc8991b926c1f0c09f27f25f9c0a23f15e5e96c73c2c9992.png" property="og:image">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
<title>리드미 :: 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css">
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-0d3dd8da661782e0fe69539e0c61b980912a8ee2c42e367b29dde4bcccc9dea6.css" />
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-01ea8c7c94c68924dc912350d530fb7e62968738f000a46cec5b9f8c3187e0c5.js"></script><style type="text/css"></style>
<style>
dl{
    text-align: left;
    padding: 10px 20px;
    border: 1px solid silver;
    background: #fff;
}
.single-container .help-message-box .help-title{
    margin-bottom: 30px !important; 
}
</style>
</head>


<div class="global-alert-box">
</div>

<jsp:include page="../headerTest.jsp"/>      

<main>
<div class="step-container">
<div class="step-wrapper">
<div class="step-title">예약하기</div>
<div class="steps row">
<div class="col-md-6 col-xs-12 done step">
<div class="step-number">
<span class="step-inner-number">1</span>
<img class="step-icon" height="10px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/check@2x-862d945b87e7e2ebabdba6d218f523290145aae91ec07ade57b60ad983b64931.png" width="12px">
</div>
<span class="step-name">정보입력 &amp; 결제</span>
</div>
<div class="col-md-6 col-xs-12 current step">
<div class="step-number">
<span class="step-inner-number">2</span>
</div>
<span class="step-name">결제실패</span>
</div>
</div>
</div>
</div>

<section class="body-container clearfix bg-gray">
<div class="single-container row">
<div class="help-message-box">
<div class="help-title" style="color: red;">결제 처리가 실패하였습니다.</div>
<dl>
    <dt>거래ID</dt><dd>${resultMap.payment_id}</dd>
</dl>
<dl>
    <dt>오류내용</dt><dd>${resultMap.err_txt}</dd>
</dl>
</div>
<div class="reservation-box col-xs-12">
<div class="panel">
<div class="panel-body">
<div class="title"><s>${resultMap.titl}</s></div>
</div>
<div class="panel-body panel-body-border">
<div class="item">
<span>여행일</span>
<span class="pull-right">${resultMap.tour_dt}</span>
<input name="choice_set[begin_at]" type="hidden" value="2018-12-08">
</div>
<div class="item">
<span>여행 인원</span>
<span class="pull-right long-text">${resultMap.name} 포함 ${resultMap.req_cnt} 명</span>
<input name="choice_set[choices][][travelers]" readonly="" type="hidden" value="2">
<input name="choice_set[choices][][key]" readonly="" type="hidden" value="53196">
</div>
</div>
<div class="panel-body panel-body-border">
<div class="item item-padding-b-20 item-border">
<span>1인당 가격</span>
<span class="pull-right">₩ <fmt:formatNumber value='${resultMap.amt}' groupingUsed='true'/></span>
</div>
<div class="item item-bold">
<span>여행금액</span>
<span class="pull-right text-price">₩ <fmt:formatNumber value='${resultMap.tot_pay}' groupingUsed='true'/></span>
</div>
</div>
<div class="panel-body blue" id="final-price">
<span class="item-bold">최종결제금액</span>
<div class="pull-right price-container">
₩ <fmt:formatNumber value='${resultMap.tot_pay}' groupingUsed='true'/>
</div>
</div>
</div>

</div>
</div>


<div class="single-container row confirm-bottom-container">
<div class="help-message-box">
자세한 내용은 예약내역에서 확인 가능합니다.
<div class="btn-container">
<a class="btn btn-gray btn-reserve" href="/">홈</a>
<a class="btn btn-blue btn-reserve" href="/traveler/reservations/2121109">예약내역</a>
</div>
</div>
</div>
</section>
</main>


<!-- 푸터 -->
<c:choose>
        <c:when test="${lang == 'en'}">
            <jsp:include page="../footerEng.jsp"/>    
        </c:when>
        <c:otherwise>
            <jsp:include page="../footer.jsp"/>
        </c:otherwise>
</c:choose>
<!-- 푸터 끝 -->


<div id="popup-mask"></div>
<div id="gnb-popup-mask"></div>



<!--  공통 스크립트 -->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>

<script type="text/javascript">
  window.criteo_q = window.criteo_q || [];
  window.userEmail = "";
  window.userAgent = "d";

    window.userEmail = "f79c71fc2267b1677b4b80f407f773dc";

  if(navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //모바일(스마트폰+태블릿)일 때
    window.userAgent = "t";
    if(navigator.userAgent.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
      //스마트폰일 때
      window.userAgent = "m";
    }
  }
</script>


</body></html>