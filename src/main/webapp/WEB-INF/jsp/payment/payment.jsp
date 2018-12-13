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
<meta content="ko" name="locale">
<meta content="KRW" name="currency">

<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
<title>리드미 :: 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" media="screen" href="/resources/css/application.fd8143d198eac4e329ab.css">
<link rel="stylesheet" media="screen" href="/resources/css/0.fd8143d198eac4e329ab.css"> -->


<!-- <link rel="stylesheet" type="text/css" href="css/custom1.css"> -->
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-0d3dd8da661782e0fe69539e0c61b980912a8ee2c42e367b29dde4bcccc9dea6.css" />
<![endif]-->


<style>
#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: block;  
 opacity: 0.7;  
 background-color: #fff;
 z-index: 99;  
 text-align: center; } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 45%; 
 z-index: 100; }
</style>



</head>
<body class="body" data-action="new" data-controller-path="kitty/reservations" data-controller="reservations" data-sign-in="">
<jsp:include page="../headerTest.jsp"></jsp:include>
<div class="global-alert-box">
</div>

<div data-category="tour">
<div class="step-container">
<div class="step-wrapper">
<div class="step-title"><spring:message code="rsv.title" text="예약하기" /></div>
<div class="steps row">
<div class="col-md-6 col-xs-12 current step">
<div class="step-number">
<span class="step-inner-number">1</span>
<img class="step-icon" height="10px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/check@2x-862d945b87e7e2ebabdba6d218f523290145aae91ec07ade57b60ad983b64931.png" width="12px">
</div>
<span class="step-name"><spring:message code="rsv.input" text="정보입력" /> &amp; <spring:message code="rsv.payment" text="결제" /></span>
</div>
<div class="step col-md-6 col-xs-12">
<div class="step-number">
<span class="step-inner-number">2</span>
</div>
<span class="step-name"><spring:message code="rsv.complete" text="완료" /></span>
</div>
</div>
</div>
</div>

<section class="body-container clearfix bg-gray" data-request-url="/offers/2771/occupied_dates">
<div class="twin-container row">
<form id="reservation_form" onsubmit="return false;" action="payment/paypal" method="post" class="fv-form fv-form-bootstrap" name="payForm">
<div class="reservation-box col-md-6 col-xs-12 reservation-first-box">
<div class="panel">
<div class="bg-img" style="background-image:url('/resources/img/${pri_phot}')"></div>
<div class="panel-body">
<div class="title">${title}</div>
<div class="profile">
<img class="img-circle" src="/resources/img/${guide_photo}">
<span>${guide_name} 가이드</span>
</div>
</div>
<div class="panel-body panel-body-border">
<div class="item">
<span><spring:message code="rsv.day" text="여행일" /></span>
<span class="pull-right">${tour_date}</span>
<input name="tour_dt" type="hidden" value="${tour_date}">
</div>
<div class="item">
<span><spring:message code="rsv.parti" text="여행 인원" /></span>
<span class="pull-right long-text">${name} 포함 ${person_num} 명</span>
<input name="req_cnt" type="hidden" value="${person_num}">
<input name="tno" type="hidden" value="${tno}">
</div>
</div>
<div class="panel-body panel-body-border" data-amount="54000.0" data-currency="KRW" data-price="₩ 54,000">
<div class="item item-padding-b-20 item-border">
<span><spring:message code="rsv.price" text="1인당 가격" /></span>
<c:choose>
<c:when test="${lang == 'en'}">
<span class="pull-right"><fmt:formatNumber  pattern="$ #,###,###.##;" value="${usd_price}" type="currency" currencySymbol="$"/></span>
</c:when>
<c:otherwise>
<span class="pull-right"><fmt:formatNumber value='${price}' groupingUsed='true'/>원</span>
</c:otherwise>
</c:choose>
</div>
</div>
<div class="panel-body blue" id="final-price">
<span class="item-bold"><spring:message code="rsv.total" text="최종결제금액" /></span>
<div class="pull-right price-container">
<c:choose>
<c:when test="${lang == 'en'}">
<fmt:formatNumber  pattern="$ #,###,###.##;" value="${usd_tot_price}" type="currency" currencySymbol="$"/>
</c:when>
<c:otherwise>
<fmt:formatNumber value='${tot_price}' groupingUsed='true'/>원
</c:otherwise>
</c:choose>
<input name="tot_pay" type="hidden" value="54000">
</div>
<input name="mno" type="hidden" value="${mno}">
</div>
</div>

<small class="help-block" data-fv-validator="notEmpty" data-fv-for="choice_set[begin_at]" data-fv-result="NOT_VALIDATED" style="display: none;">필수항목</small><small class="help-block" data-fv-validator="date" data-fv-for="choice_set[begin_at]" data-fv-result="NOT_VALIDATED" style="display: none;">여행 날짜를 선택해주세요.</small><small class="help-block" data-fv-validator="notEmpty" data-fv-for="choice_set[choices][][travelers]" data-fv-result="NOT_VALIDATED" style="display: none;">필수항목입니다.</small></div>
<div class="reservation-box col-md-6 col-xs-12">




<div class="panel" id="paymentForm">
<div class="panel-heading">
<div class="title">
<img class="icon" height="13px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/ic-card@2x-2d8b062fe151e5f5d4f1942a072f282186dc7f65a27d404df3c01e5f98bf3b74.png" width="19px">
<spring:message code="rsv.payinfo" text="결제정보" />
</div>
</div>
<input name="pay_type" type="hidden" value="PAYPAL">
<div class="panel-body panel-body-border">
<div class="clearfix">
<div class="input-group">
<div class="clearfix">
<div class="radio-custom radio-primary">
<input checked="checked" id="type-wcard" name="payment[paytype]" type="radio" value="wcard" data-fv-field="payment[paytype]" autocomplete="off">
<label for="type-wcard"><spring:message code="rsv.paypal" text="페이팔 결제" />
<img id="ci-img" src="/resources/img/paypal.png" alt="Paypal CI" style="width:78px;height: 25px; padding-left: 5px;">
</label>

</div>
</div>

</div>
</div>
</div>

<div class="panel">
<div class="panel-heading">
<div class="title">
<img class="icon" height="18px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/ic-terms@2x-e4999aacb490de8f6ae8e72b0c762a565c1bebd5860876961661de0841a18e53.png" width="15px">
<spring:message code="rsv.terms" text="약관" />
</div>
</div>
<div class="panel-body panel-body-border">
<div class="form-group clearfix terms-container">
<div class="row">
<div class="control-label col-xs-12"><spring:message code="rsv.tour.terms" text="여행자 약관(필수)" /></div>
</div>
<div class="row">
<div class="col-xs-12">
<div class="terms-box" style="height: 130px;">
<p><spring:message code="rsv.terms.content" text="여행자 약관" /><br><br>제1장 목적 및 정의<br><br>제1조 (목적)<br>이 약관(이하 “여행자약관”)은 주식회사 리드미(이하 “당사”)이 운영하는 “리드미” 사이트(www.leadme.com) 또는 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “리드미 플랫폼”)을 통하여 여행자와 가이드 사이에서 체결되는 여행계약(이하 “여행계약”)의 중개와 관련하여 특히 여행자의 권리와 의무 등 법률관계를 명확히 함을 목적으로 합니다.<br><br>제2조 (용어의 정의)<br>이 약관에서 사용되는 용어의 정의는 다음과 같습니다.<br>(1) “가이드서비스”는 여행자가 원하는 날짜와 조건에 따라 당사가 중개한 가이드로부터 제공받는 제7조의 서비스를 말합니다.<br>(2) “가이드”는 당사가 여행자에게 중개한 자로서 여행지에서 여행자에게 가이드서비스를 제공하는 자를 말합니다.<br>(3) “투어”는 여행자가 여행계약에 따라 가이드로부터 가이드서비스를 제공받으며 향유하는 여행을 말합니다.<br>(4) “여행확인증”은 가이드와 여행자가 구체적인 가이드서비스의 내용 및 제반 비용 등에 관한 사항을 합의하여 확정한 문서를 말합니다.<br>(5) “수수료”는 여행자가 가이드와의 여행계약 체결을 중개/대리한 대가로 당사에 지급하는 보수를 말합니다.<br>(6) “가이드요금”은 여행자가 가이드서비스 제공의 대가로 가이드에게 지급하는 보수를 말합니다.<br>(7) “여행요금”은 여행자가 본 약관에 따른 여행계약과 관련하여 당사에 지급하는 수수료 및 가이드에게 지급하는 가이드요금을 합한 금원을 말합니다.<br>(8) “미팅포인트”는 투어를 위하여 가이드와 여행자가 만나기로 약속한 장소를 말합니다.<br>(9) “지각시간”은 가이드와 여행자가 투어를 위하여 미팅포인트에서 만나기로 정한 시각으로부터 지각한 당사자가 미팅포인트에 실제 도착하기까지 경과한 시간을 말합니다.<br><br>제2장 기본 사항<br><br>제3조 (여행계약의 당사자 및 당사의 지위)<br>여행자와 여행계약을 체결하고 가이드서비스를 제공하는 법적 주체는 가이드이며, 당사는 리드미 플랫폼을 통하여 여행자가 원하는 날짜와 조건에 맞추어 가이드와 여행계약을 체결하고 가이드서비스를 제공받는 것을 중개하는 업무를 수행합니다.<br><br>제4조 (가이드의 독립당사자 지위)<br>1. 당사는 여행자와 가이드 사이에 투어를 중개할 뿐이며, 가이드는 당사와 고용 관계에 있지 않음을 확인합니다. 또한, 당사는 가이드에 대하여 사용자로서의 책임을 일체 부담하지 않는다는 점을 명확히 합니다.<br>2. 가이드는 가이드약관의 이행에 필요한 관련 법령상의 허가, 등록, 신고 또는 보험, 공제, 예치 등의 의무사항을 모두 이행하였으며, 당사는 가이드가 관련 법령 위배로 인하여 여행자 또는 제3자에 대하여 손해배상 등 책임을 지더라도 당사는 이에 관하여 아무런 책임이 없습니다.<br><br>제5조 (여행계약의 구성)<br>여행계약은 여행확인증과 여행자약관에 나타난 사항을 그 계약내용으로 합니다.<br><br>제6조 (당사자 및 당사의 기본 의무)<br>1. 가이드는 사전에 여행자와 약정한 내용에 따라 투어를 성실하게 진행하여야 하며, 그밖에 여행자에게 안전하고 만족스러운 가이드서비스를 제공하기 위하여 여행계약상 의무를 성실하게 이행하여야 합니다.<br>2. 여행자는 여행계약에 따른 의무를 성실하게 이행하며, 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 가이드의 여행질서 유지에 적극 협조합니다.<br>3. 당사는 여행계약 체결의 중개 행위 등에 있어 맡은 바 임무를 충실히 수행합니다.<br><br>제7조 (가이드서비스의 내용)<br>가이드가 여행자에게 제공하는 가이드서비스의 구체적인 내용은 다음 각 호의 1과 같습니다.<br>(1) 여행자의 의사 및 제반 사정을 고려한 투어 일정의 계획 및 조정<br>(2) 미팅포인트에서 일정에 정한 각 여행지로 여행자를 인솔<br>(3) 각 여행지에 대한 구체적인 안내 및 설명 제공<br>(4) 당일 최종 여행지로부터 여행자의 숙소 등 일정에 정한 해산 지점으로 여행자를 인솔<br>(5) 여행지에서 여행자의 원활한 의사소통 협조<br>(6) 사고 등 문제 발생시의 여행자 보호 조치<br>(7) 기타 투어 관련 제반 업무<br><br>제3장 여행계약의 체결<br><br>제8조 (여행계약 체결 및 여행확인증, 약관 등 교부)<br>1. 다음 각 호의 경우 여행자와 가이드 사이에 여행계약이 체결됩니다. 단, 제1호의 경우 가이드는 여행자에게 청약과 동시에 여행요금을 지급할 것을 요구할 수 있습니다.<br>(1) 가이드가 투어 일정, 여행요금 등 그 내용을 정하여 미리 제시한 청약의 유인에 따라 여행자가 투어를 신청하여 청약하면, 가이드가 여행자의 신청 내용에 따라 투어가 가능하다고 판단할 경우 미리 고지한 정해진 승낙 기한 내에 여행자에게 투어가 가능함을 회신함으로써 승낙하는 경우 또는 미리 고지한 정해진 승낙 기한 내에 본 조 제3항에 따른 투어의 불가능 회신이 없는 경우<br>(2) 여행자와 가이드 사이에 사전에 투어의 일정, 여행요금 등 그 내용에 대해 합의가 이루어지는 경우<br>2. 가이드는 본 조 제1항 각 호에 따라 여행계약이 체결된 경우, 여행자의 요청에 따라 당사를 통해 여행확인증과 여행자약관 사본을 여행자에게 교부합니다.<br>3. 본 조 제1항 제1호에서 가이드가 여행자에게 청약과 동시에 여행요금의 지급을 요구하여 여행자가 이를 지급한 경우라도, 가이드가 투어가 불가능하다고 판단하여 미리 고지한 시간 또는 기일 내에 이를 여행자에게 회신할 경우 여행계약이 성립하지 않습니다.<br>4. 당사는 본 조 제3항에 따라 여행계약이 성립하지 않는 경우 지급 받은 여행요금 전액을 여행자에게 반환합니다.<br>5. 여행자가 본 조 제3항에 따라 미리 고지한 시간 또는 기일 내에 여행계약에 관한 청약을 취소하는 경우, 당사는 지급 받은 여행요금 전액을 여행자에게 반환합니다.<br>6. 당사 웹사이트 및 어플리케이션을 통하여 예약하지 않은 경우 본 조 각 항의 여행계약 체결이 되지 않은 것으로 간주하며 당사에게 중개에 대한 책임 및 손해에 대한 배상을 요구할 수 없습니다.<br><br>제9조 (전자정보망을 통한 예약확인증 및 약관 등의 교부 간주)<br>여행자가 인터넷 등 전자정보망으로 제공된 예약확인증 및 여행자약관의 내용에 동의하고 여행계약의 체결을 신청한 데 대하여 가이드가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우, 가이드와 여행자 사이에 제8조 제2항의 예약확인증 및 여행자약관 교부가 이루어진 것으로 봅니다.<br><br>제10조 (계약 체결의 거절)<br>가이드(또는 가이드를 대신하여 당사)는 다음 각 호의 1에 해당하는 사유가 있을 경우에는 해당 여행자에 대하여 여행계약의 체결을 거절할 수 있으며, 투어가 확정된 이후에 그 사유를 알게 된 경우에도 해당 여행계약을 해제할 수 있습니다.<br>(1) 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때<br>(2) 여행자가 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우<br><br>제4장 여행요금<br><br>제11조 (여행요금)<br>1. 여행자는 여행계약의 중개 및 가이드서비스 제공의 대가로서 여행확인증에 기재된 금액의 여행요금을 당사에 지급합니다. 여행요금에는 다음 각 호의 요금 또는 비용은 포함되어 있지 않습니다.<br>(1) 투어 중 개인적 성질의 제비용(통신료, 관세, 일체의 팁, 세탁비, 개인적으로 추가한 식, 음료)<br>(2) 치료비, 입원비 등 투어 중 여행자의 질병, 상해 또는 그 밖의 사유로 인하여 지불해야 하는 일체의 비용<br>(3) 여행자가 통상의 규격이나 규정을 초과하여 발생한 비용(초과 규격의 수하물 등 각종 추가 요금)<br>(4) 여행 수속 제비용(여권 인지대, 사증료 등)<br>(5) 기타 여행확인증에 구체적으로 명시되지 않은 비용<br>2. 수수료는 별도의 약정에 따른 금액으로 하며, 가이드요금은 여행요금 총액에서 수수료 상당액을 제한 나머지 금액으로 합니다.<br>3. 여행자는 여행요금을 당사가 지정한 방법[신용카드 결제, 실시간 계좌이체, 가상계좌(무통장입금), 페이팔(Paypal), 당사 발행 쿠폰과 포인트 등]으로 지급합니다.<br>4. 여행요금에 여행자 보험료가 포함되는 경우, 가이드는 여행자에게 보험회사명, 보상내용 등을 설명합니다.<br><br>제12조 (여행조건의 변경 요건 및 요금 등의 정산)<br>1. 여행계약이 체결된 이후에는 계약상 여행조건은 원칙적으로 변경될 수 없습니다.<br>2. 제1항에도 불구하고, 여행계약상의 여행조건은 다음 각 호의 1의 경우에 한하여 예외적으로 변경될 수 있습니다.<br>(1) 투어 개시 후 여행자의 안전과 보호를 위하여 여행조건의 변경이 부득이하다고 판단되는 경우<br>(2) 투어 개시 후 천재지변, 전란, 정부의 명령, 운송 및 숙박업체 등의 파업 또는 휴업 등으로 여행의 목적을 달성할 수 없는 경우<br>3. 제1항의 여행조건 변경으로 인하여 가이드요금에 증감이 생기는 경우, 해당 증감분은 투어 종료 후 10일 이내에 당사를 통하여 정산(환급)하여야 합니다.<br>4. 여행자는 투어 중 자신의 사정으로 인하여 관광 등 가이드요금에 포함된 서비스를 제공받지 못한 경우 당사에 대하여 그에 상응하는 가이드요금의 환급을 청구할 수 없습니다.<br><br>제5장 투어 개시 전 계약의 해제<br><br>제13조 (여행자의 투어 개시 전 임의해제 및 손해배상)<br>1. 여행자는 여행요금 지급이 이루어지기 이전까지 체결하였던 여행계약을 가이드 또는 당사에 대한 손해배상 등의 법적 책임 없이 자유롭게 해제할 수 있습니다.<br>2. 여행자가 여행요금 지급이 이루어진 후 투어 개시일 이전까지 국외여행계약 또는 국내여행계약을 임의로 해제하는 경우, 가이드는 본 약관 별첨 취소환불정책에 따라 여행자에게 여행요금의 전부 또는 일부를 환불합니다.<br>3. 당사는 본 조에 따라 가이드와 여행자 사이에 발생하는 손해배상 등 법률관계에 대하여 보증책임 기타 어떠한 의무 또는 책임도 부담하지 않습니다.<br><br>제14조 (가이드의 투어 개시 전 임의해제 및 손해배상)<br>1. 가이드가 여행자와 체결하였던 여행계약을 임의로 해제하는 경우, 가이드는 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 이 경우 손해배상액은 제21조에 정한 바에 따르며, 다만 여행자가 입은 실제 손해액이 제21조 제4항 제1호에 따른 손해배상액을 초과함이 객관적으로 입증되는 경우, 가이드는 여행자에게 그 실제 손해액을 배상할 책임을 부담합니다.<br>2. 당사가 가이드를 대신하여 여행자에게 제1항의 손해배상의무를 이행하는 경우, 당사는 가이드에 대하여 여행자에게 배상한 금액 상당을 구상할 수 있습니다.<br>3. 본 조에 따라 가이드가 여행계약을 해제하는 경우, 가이드는 제1항의 여행자에 대한 손해배상과 별도로 당사가 입은 손해로서 여행확인증에 기재된 수수료 상당액을 배상할 의무를 부담합니다<br><br>제15조 (최저행사인원 미달로 인한 계약 해제)<br>1. 가이드는 여행자의 수가 사전에 공지한 투어의 최저행사인원에 미달하였음을 원인으로 여행계약을 해제할 수 있습니다.<br>2. 본 조의 계약 해제를 하고자 하는 가이드는 당사를 통하여 국외여행의 경우 투어 개시일로부터 7일 이전까지, 국내여행의 경우 투어 개시일로부터 3일 이전까지 여행자에게 제1항의 해제의 의사표시 및 해제사유를 통지하여야 합니다.  만약 가이드가 최저행사인원 미달로 전항의 기일 내 통지를 하지 아니하고 계약을 해제하는 경우 여행자에 대한 배상은 공정거래위원회 고시 소비자분쟁해결기준에 의거하여 처리되며, 이 때 당사가 여행자에게 지급한 손해배상액에 대하여 당사는 가이드에게 구상할 수 있습니다.<br><br>제16조 (투어의 개시와 종료)<br>투어의 개시 시점은 투어 첫 날 미팅포인트에서 여행자가 가이드와 만난 시점으로 하며, 투어의 종료 시점은 투어 마지막 날 여행자와 가이드가 일정을 마치고 헤어지는 시점으로 합니다.<br><br>제17조 (투어 개시 전 쌍방의 책임 없는 사유로 인한 계약 해제)<br>투어 개시일 이전에 다음 각 호의 1에 해당하는 사유가 있는 경우, 여행자 또는 가이드는 별도의 손해배상 없이 여행계약을 해제할 수 있습니다.<br>(1) 제10조 제1항 제1호 또는 제2호의 사유가 있는 경우<br>(2) 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우<br>(3) 기타 이에 준하는 것으로서 당사자 쌍방에게 책임 없는 사유로 투어가 불가능하게 된 경우<br><br>제18조 (계약 해제에 따른 여행요금 환불 등 정산)<br>1. 제13조에 따라 여행계약이 해제되는 경우, 당사는 별첨 취소환불 정책에 따른 환불 대상 여행요금을 여행자에게 환급합니다.<br>2. 제14조, 제15조, 제17조에 따라 여행계약이 해제되는 경우, 당사는 여행자에게 지급 받은 여행요금 전액을 환불합니다.<br><br>제6장 의무 및 책임<br><br>제19조 (여행자의 의무 및 책임)<br>1. 여행자의 고의 또는 과실로 당사 또는 가이드에게 손해가 발생한 경우, 여행자는 그 손해를 배상할 의무를 부담합니다.<br>2. 여행자가 가이드에 대하여 성추행 등 범죄행위를 하였을 경우, 여행자는 가이드에 대하여 민형사상 책임을 부담하며, 당사에 대하여도 당사가 입은 손해 및 각종 발생 비용 등의 손실을 배상할 책임을 부담합니다.<br>3. 여행자는 여행의 원활한 진행을 위하여 가이드가 당사를 통하여 제공하는 설명 및 자료를 통하여 여행 일정, 여행비용 내역, 약속 시간 및 장소 등 여행 관련 정보를 확인합니다.<br>4. 여행자는 여행확인증에 기재된 기일까지 여행요금을 당사에 지급합니다.<br>5. 여행자는 여행의 원활한 진행을 위하여 가이드의 인솔 및 요청에 성실히 협조합니다.<br>6. 여행자는 합리적인 이유 없이 가이드에게 투어와 직접적인 관련이 없는 부당한 요구를 하여서는 아니 됩니다.<br>7. 여행자는 투어 종료된 후 리드미 플랫폼 상에 투어 후기에 관한 게시물을 작성 및 게시할 수 있습니다. 다만, 후기 게시물이 다음 각 호의 어느 하나에 해당하는 경우, 당사는 해당 후기 게시물을 여행자의 동의 없이 삭제 또는 변경할 수 있습니다.<br>(1) 사용자의 개인적인 경험 이외의 내용을 담고 있는 경우<br>(2) 실제 투어와 관련되지 않은 후기인 경우 (예: 정치적, 종교적 또는 사회적 의견에 대한 후기)<br>(3) 위해한 혹은 불법적인 행동 및 폭력을 지지하거나 비속어, 성적 언어, 명예훼손, 위협 또는 차별적인 내용을 포함하는 경우<br>(4) 타인의 권리(지적 재산권 및 개인정보 보호에 관한 권리 등을 포함)를 침해하는 내용을 포함하는 경우 (예: 타인의 실명, 주소 또는 인적 정보를 당사자의 허락없이 기재하는 경우 등)<br>(5) 강요의 목적으로 후기 게시물이 이용된 것이 객관적으로 입증된 경우<br>(6) 당사에서 조사가 진행 중인 건에 대한 내용을 포함하는 경우<br>(7) 기타 이상에 준하는 위법, 부당한 목적 또는 방법으로 후기 게시물이 작성된 경우<br>8. 귀중품 및 소지품에 대한 보관 책임은 여행자 자신에게 있습니다. 여행 도중 여행자의 귀중품 및 소지품이 도난 또는 분실된 경우 여행자는 사고 발생을 안 때로부터 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 제출하여야 합니다.<br>(1) 도난 확인서<br>(2) 경위서<br>(3) 그밖에 필요한 서류<br>9. 여행자가 투어 개시 전에 고지하지 않은 신체의 장해 또는 질병 등으로 인하여 발생하는 문제는 여행자에게 책임이 있습니다. 단, 여행 도중 여행자의 신체에 장해 또는 질병 등이 발생하는 경우 여행자는 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 즉시 제출하여야 합니다.<br>(1) 사고 증명서<br>(2) 진단서<br>(3) 경위서<br>(4) 영수증<br>(5) 그밖에 필요한 서류<br><br>제20조 (가이드의 일반 손해배상의무)<br>1. 가이드가 여행계약을 위반하는 경우 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 단, 여행자에게 신체 손상이 없는 경우 가이드의 손해배상책임은 여행요금의 100%를 한도로 합니다.<br>2. 가이드는 본인 또는 그 고용인이 고의 또는 과실로 위법하게 여행자에게 손해를 가한 경우 그로 인하여 여행자가 입은 손해를 배상합니다.<br>3. 가이드는 항공기, 기차, 선박 등 교통수단의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상합니다. 단, 가이드가 자신에게 그에 대한 고의 또는 과실이 없음을 입증한 경우에는 그러하지 아니합니다.<br>4. 가이드는 여행자의 수하물을 수령, 인도, 보관할 의무가 없으며, 수하물이 멸실, 훼손 또는 연착되어 여행자에게 발생한 손해를 배상할 책임이 없습니다.<br><br>제21조 (여행 내용 불일치 등에 따른 가이드의 손해배상의무)<br>1. 본 조에 따른 손해배상은 다음 각 호의 사유가 발생한 경우에 대하여 적용됩니다.<br>(1) 가이드가 제15조, 제17조에 정한 사유 이외의 사유를 들어 체결하였던 국내여행계약 및 해외여행계약을 투어 개시 전에 임의로 해제하는 경우<br>(2) 실제 투어 시간이 사전 약정에 따른 투어 시간과 명확하게 불일치하는 경우<br>(3) 실제 투어 인원이 사전 약정에 따른 투어 인원과 명확하게 불일치하는 경우<br>(4) 실제 투어 코스가 사전 약정에 따른 투어 코스와 명확하게 불일치하는 경우<br>(5) 그밖에 실제 투어 내용이 사전 약정에 따른 투어 내용과 명확하게 불일치하는 경우<br>2. 제1항에 정한 사전 약정은 해당 투어와 관련하여 (i) 리드미 플랫폼 내부 메시지창, (ii) 여행확인증, (iii) 상품 소개 페이지를 통하여 명시된 내용에 한정하며, 제1항 각 호의 사유가 발생하였는지 여부에 대하여 여행자와 가이드 사이에 다툼이 있는 경우, 당사가 객관적이고 중립적인 기준에 따라 이를 판단합니다.<br>3. 다음 각 호의 요건을 충족하는 여행자는 가이드에게 본 조에 따른 손해배상을 청구할 수 있습니다.<br>(1) 가이드의 투어 내용 변경에 동의 또는 합의하는 등 여행자 자신이 제1항 각 호의 사유 발생을 직접적 또는 간접적으로 야기하지 않았어야 합니다.<br>(2) 가이드에게 투어 내용 변경에 대하여 이의하는 등 제1항 각 호의 사유 발생을 막기 위한 합리적인 노력을 다하였어야 합니다.<br>(3) 여행자는 투어 종료 후(제1항 제1호의 경우에는 가이드로부터 해제 통보를 받은 후) 당사 '여행불만족 손해배상위원회'에 20일 이내에 고객센터의 이메일 또는 전화를 통하여 당사에 제1항 각 호의 사유 발생 사실을 통지하여야 합니다.<br>4. 제3항의 요건이 충족되는 경우, 가이드는 여행자의 선택에 따라 다음 각 호의 손해배상 방식 중 어느 하나의 방식으로 여행자에 대한 손해를 배상하여야 합니다.<br>(1) 현금배상 : 이 경우 구체적인 배상금액은 당사의 ‘여행불만족 손해배상위원회’ 가 내부 규정 및 지침에 따라 합리적으로 산정하되, 여행자로부터 지급받은 여행요금을 최대 한도로 하여 정합니다.<br>(2) 리드미 credit 배상 : 현금이 아닌 추후 당사가 중개하는 여행계약에서 여행요금으로 사용 가능한 쿠폰 또는 포인트를 부여합니다. 대신 이를 선택하는 경우 배상 포인트는 제1호에 따라 산정된 현금배상 금액의 110% 상당으로 정합니다.<br>5. 당사는 본 조의 손해배상 채무를 가이드를 대신하여 여행자에게 변제할 수 있습니다. 이 경우 당사는 여행자에 대한 변제금액 상당을 가이드에게 구상할 수 있으며, 가이드는 그에 대하여 이의하지 않고 당사의 구상에 응하여야 합니다.<br>6. 본 조에 따른 손해배상이 이루어지는 경우, 여행자는 자신이 입은 실제 손해액이 본 조에 따른 손해배상액을 초과함을 객관적으로 주장, 입증하지 않는 이상 제20조를 포함한 본 약관상의 다른 조항을 근거로 가이드 또는 당사에게 손해배상을 청구할 수 없습니다.<br><br>제22조 (당사의 손해배상의무)<br>1. 당사는 여행계약 체결의 중개와 관련하여 당사 또는 당사의 고용인이 고의 또는 과실로 여행자에게 손해를 가한 경우, 그로 인하여 여행자가 입은 손해만을 배상합니다.<br>2. 당사는 여행계약이 체결된 이후 여행자와 가이드 사이에서 발생한 손해배상 등 법률관계와 관련하여 여행자 또는 가이드에 대하여 어떠한 책임도 부담하지 않습니다.<br><br>제7장 투어 진행의 장해<br><br>제23조 (가이드의 지각)<br>1. 가이드가 약속한 시간까지 미팅포인트에 도착하지 못하여 투어의 진행이 지체된 경우, 가이드는 여행자에게 지체된 시간 상당의 투어를 추가적으로 제공합니다.<br>2. 여행자는 가이드로부터 사전에 도착이 늦어지게 된 경위, 예상 도착 시간, 지체된 시간만큼의 추가 투어가 제공된다는 사실 등에 관한 구체적 통지를 수령하지 못한 상태에서 가이드가 연락 없이 약속한 시간으로부터 15분이 지나도록 미팅포인트에 도착하지 않는 경우 여행계약을 해지할 수 있으며, 이 경우 여행요금 환불 및 손해배상 등에 관하여 제26조의 규정이 적용됩니다.<br><br>제24조 (여행자의 지각)<br>1. 여행자의 지각시간이 15분 이하인 경우, 가이드는 투어를 진행함에 있어 여행자에게 지각시간 상당의 투어를 추가적으로 제공합니다.<br>2. 여행자의 지각시간이 15분 이상인 경우, 가이드는 사전에 예정되었던 일정에 따라 투어를 진행하며 그밖에 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.<br>3. 여행자가 아무런 연락 없이 약속한 시간으로부터 15분이 넘도록 미팅포인트에 도착하지 않는 경우, 가이드는 여행자에게 투어 출발을 알린 후 제26조에 따라 여행계약을 해지할 수 있습니다.<br>4. 본 조 제1항 내지 제3항에도 불구하고, 사전에 투어를 함께 진행하기로 예정된 다른 여행자의 전부 또는 일부가 정시에 미팅포인트에 도착한 경우에는, 가이드는 사전에 예정된 일정에 따라 투어를 진행할 수 있으며, 지각한 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.<br><br>제8장 투어 진행 중 여행계약의 해지<br><br>제25조 (상대방과의 합의에 의한 계약의 해지)<br>1. 여행자 또는 가이드는 투어가 개시된 이후에는 상대방과의 합의 없이 임의로 여행계약을 해지할 수 없습니다.<br>2. 상대방과의 합의에 따라 여행계약을 해지하는 경우, 가이드요금의 환불과 관련한 사항 또한 상호 합의한 내용에 따릅니다.<br>3. 본 조의 합의해지와 관련하여, 당사는 여행자로부터 지급받은 수수료를 환불할 의무가 없습니다.<br><br>제26조 (상대방의 귀책사유로 인한 계약의 해지)<br>1. 여행자 또는 가이드는 상대방에게 책임 있는 사유(제23조 및 제24조의 해지를 포함한다)로 인하여 투어의 진행이 현저히 곤란하게 된 경우 여행계약을 해지할 수 있습니다.<br>2. 여행자에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 여행요금의 환불을 청구할 수 없습니다.<br>3. 가이드에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 당사에 여행요금 전액의 환불을 청구할 수 있습니다. 이 경우, 당사는 가이드에게 여행자에게 반환한 수수료 금액과 추가 손해배상 금액을 청구할 수 있으며, 이는 최대 여행요금의 200%로 한정합니다.<br>4. 본 조에 따른 여행계약의 해지가 발생한 경우, 귀책사유 있는 당사자는 여행요금과 별개로 그로 인하여 상대방이 입은 손해를 배상하여야 합니다.<br><br>제27조 (당사자 쌍방에게 책임 없는 사유로 인한 계약의 해지)<br>1. 가이드 및 여행자 모두에게 책임 없는 사유로 인하여 투어의 진행이 불가능한 경우, 여행자 또는 가이드는 여행계약을 해지할 수 있습니다.<br>2. 제1항의 해지가 발생한 경우, 가이드는 가이드요금 중 일정상 계획된 전체 투어 시간 중 진행되지 못한 투어 시간의 비율 상당 금액을 여행자에게 반환하여야 합니다.<br>3. 제1항의 해지가 발생한 경우, 당사는 가이드는 대신하여 제2항에 따라 가이드가 여행자에게 반환하여야 할 금액 상당을 정산하여 여행자에게 환불하며, 가이드에게는 여행자로부터 지급받은 가이드요금 중 위 환불금을 공제하고 난 후 잔여 가이드요금을 정산하여 지급합니다.<br>4. 제2항의 전체 투어 시간 중 진행되지 못한(또는 진행된) 투어 시간의 비율은 가이드 및 여행자의 합의를 통하여 정하는 것을 원칙으로 하며, 합의가 되지 않는 경우 당사가 객관적이고 중립적인 기준에 따라 그 비율을 정합니다.<br>5. 본 조에 따른 해지와 관련하여 당사 및 가이드는 제2항 및 제3항에 규정된 사항 이외에 여행자에 대하여 그 밖의 다른 의무를 부담하지 않습니다.<br><br>제9장 기타 일반 의무<br><br>제28조 (설명의무)<br>가이드는 당사를 통하여 여행계약의 중요 내용 및 그 변경사항을 여행자에게 설명하여야 하며, 당사는 이에 따라 여행자에게 여행계약에 규정된 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 구체적으로 설명합니다.<br><br>제29조 (보험가입 등)<br>가이드는 투어와 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위하여 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.<br><br>제30조 (개인정보 관리의무)<br>당사 및 가이드는 투어와 관련하여 취득한 여행자의 성명, 여권번호, 연락처 등 개인정보를 개인정보 보호법 등 제반 법령에 따라 적법하게 관리하여야 합니다.<br><br>제31조 (여행자를 촬영한 사진의 사용)<br>가이드가 투어와 관련하여 촬영한 사진 또는 동영상 등을 당사 홍보 등의 목적으로 사용하고자 하는 경우, 당사는 해당 사진에 포함된 여행자에 대하여 사진 사용의 목적 및 범위 등을 알리고 그 사진을 사용할 수 있습니다.<br><br>제32조 (기타사항)<br>특수지역으로의 여행으로서 정당한 사유가 있는 경우 이 약관의 내용과 달리 정할 수 있습니다.<br><br>제33조 (불가항력)<br>어떠한 당사자도 화재, 폭풍, 홍수, 지진, 사고, 전쟁(실제 발생 또는 선포 여부를 불문함), 반란, 폭동 기타 민란, 전염병, 격리, 천재지변, 정부조치 등 자신의 통제를 벗어난 사유에 의해 약관상의 의무사항을 이행 또는 준수하지 못하는 경우 이에 대한 책임을 지지 아니합니다. 해당 당사자는 불가항력적인 사유의 발생 후 가능한 한 빨리 이를 상대방 당사자에게 통지하고 그 사유가 제거 또는 중단된 후 가능한 한 신속하게 약관상 의무의 이행 및 준수를 재개하여야 합니다.<br><br>제34조 (기타사항)<br>여행자약관은 대한민국 법을 그 준거법으로 하며, 이에 따라 해석되고, 협의에 의하여 여행자약관에 관련된 분쟁을 해결할 수 없는 경우에는 그 소송의 관할은 당사자 간의 합의에 따르며, 사전 합의된 바가 없는 경우에는 민사소송법의 관할 규정에 따릅니다.<br><br><br>[부칙] (2014년 10월 28일)<br>1. 이 약관은 2014년 10월 28일부터 적용됩니다.<br><br>[부칙] (2016년 9월 6일)<br>1. 이 약관은 2016년 9월 6일부터 적용됩니다.<br><br>[부칙] (2017년 6월 30일)<br>1. 이 약관은 2017년 6월 30일부터 적용됩니다.<br><br>[부칙] (2017년 10월 11일)<br>1. 이 약관은 2017년 10월 11일부터 적용됩니다.<br><br>[별첨. 취소환불정책]<br><br>각 상품 별 취소 환불 약관이 별도 기재되어 있을 경우 별도 기재 내용이 해당 규정으로서 선 적용됩니다.<br><br>-가이드투어 취소/환불 안내<br>여행자는 가이드약관 제16조 제2항에 따라 여행요금 지급이 이루어진 후 투어 개시일 이전에 여행계약을 임의로 해제하는 경우, 해제 통보 시점에 관한 다음 각 호의 기준에 따라 여행요금이 환불됩니다.<br>해제 통보 시점은 환불요청서가 리드미 플랫폼에 접수된 시간 또는 리드미 플랫폼 내 ‘메시지’ 기능을 통하여 환불요청 내용이 기록된 시간을 기준으로 합니다.<br>[국외여행의 경우]<br>- 여행시작 30일전 (~30) 까지 통보시: 여행 요금 전액 환불<br>- 여행시작 20일 전까지 (29~20) 통보시: 여행요금에서 가이드 요금의 10%와 리드미 수수료 공제 후 환불<br>- 여행시작 6일 전까지 (19~6) 통보시: 여행요금에서 가이드 요금의 15%와 리드미 수수료 공제 후 환불<br>- 여행시작 1 일 전까지 (1~5) 통보시: 여행요금에서 가이드 요금의 20%와 리드미 수수료 공제 후 환불<br>- 여행시작 시간 기준 24시간 이내 통보시: 여행요금에서 가이드 요금의 50%와 리드미 수수료 공제 후 환불<br>[국내여행의 경우]<br>- 여행자가 여행 개시일로부터 3일 이전 통보 시: 여행 요금 전액 환불<br>- 여행 개시일로부터 2일 이전 통보 시: 여행요금에서 가이드 요금의 10%와 리드미 수수료 공제 후 환불<br>- 여행 개시일로부터 여행 시작 시간 기준 24시간 이전 통보 시: 여행요금에서 가이드 요금의 20%와 리드미 수수료 공제 후 환불<br>- 여행 시작 시간으로부터 24시간 이내 통보 시: 여행요금에서 가이드 요금의 30%와 리드미 수수료 공제 후 환불<br>다만, 위의 규정에도 불구하고 다음의 경우에는 예외로 합니다.<br>1) 여행자가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을 철회(취소)하는 경우와 여행자가 투어 예약 후 가이드가 확정되기 전에 취소하는 경우는 여행요금을 전액 환불합니다.  단, 여행자가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될 경우 (Instant Booking 예약에 해당하는 경우)는 전액 환불 대상에서 제외합니다.<br>2) 상품의 특성에 따라 현지 예약금으로 지불되어야 하는 금액이 있는 경우 해당 예약금의 환불에 대하여는 각 상품의 상세설명보기에서 별도로 고지한 취소환불 약관을 적용합니다.<br><br>-티켓 취소/환불 안내<br>아래 내용이 적용되는 대상은 리드미의 플랫폼(웹사이트와 어플리케이션 포함)을 통하여 리드미이 판매대행 또는 구매대행하여 여행자에게 배송하는 실물티켓과 여행자로 하여금 출력할 수 있도록 제공한 E-바우쳐에 한합니다.<br>[실물티켓]<br>1. 환불신청가능기간<br>결제일 이후 7일 이내 환불 신청한 경우에 한하여 환불이 가능합니다.<br>(티켓 유효기간의 1개월 이전에 환불을 신청한 경우에 한하여 환불이 가능합니다.)<br>2. 환불진행시 유의사항<br>여행자가 반품한 실물티켓을 당사가 수령하여 확인한 후 환불 처리됩니다.<br>실물티켓 구매시 동봉되었던 티켓 사용 가이드북, 현지 사용 쿠폰 및 사은품도 함께 반품되어야 정상 환불 처리됩니다.<br>환불요청 접수 후 5일 이내에 당사에 실물티켓이 수령 확인되는 경우에 한해 정상 환불 처리됩니다.<br>개인 과실로 인하여 실물티켓이 멸실되거나 훼손된 경우에는 환불이 불가하오니, 각별히 유의하여 주시기 바랍니다.<br>3. 환불수수료<br>취소수수료(결제금액의 10%) 및 배송비가 환불수수료로 차감됩니다.<br>티켓제공업체에서 자체 규정하는 별도의 환불규정이 있는 경우 제공업체의 환불규정이 리드미의 환불규정에 우선하여 적용됩니다. (상품상세보기 기재)<br>[E-바우쳐]<br>티켓제공업체에서 자체 규정하는 별도의 환불규정에 따라 취소/환불이 진행됩니다. (상품상세보기 기재)<br>티켓제공업체의 정책에 따라 환불이 원칙적으로 불가할 수 있으니, 신중히 구매하여 주시기를 당부 드립니다.<br><br>-에어텔/민박 상품 군(구 핫딜 상품) 취소/환불 안내<br>당사는 또는 여행자는 여행출발전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.<br>여행자의 여행계약 해제 요청이 있는 경우(여행자의 취소 요청시)<br>- 여행출발일 ~30일전까지 취소 통보시 - 계약금 환급<br>- 여행출발일 29~20일전까지 취소 통보시 - 여행요금의 10% 배상<br>- 여행출발일 19~10일전까지 취소 통보시 - 여행요금의 15% 배상<br>- 여행출발일 9~8일전까지 취소 통보시 - 여행요금의 20% 배상<br>- 여행출발일 7~1일전까지 취소 통보시 - 여행요금의 30% 배상<br>- 여행출발 당일 취소 통보시 - 여행요금의 50% 배상<br></p>
</div>
</div>
<div class="col-xs-12">
<div class="checkbox-custom checkbox-primary">
<input id="checkbox_terms_traveler" name="checkbox_terms_traveler" type="checkbox" data-fv-field="checkbox_terms_traveler" autocomplete="off">
<label class="terms-label" for="checkbox_terms_traveler"><spring:message code="rsv.agree" text="여행자 약관을 읽었으며, 내용에 동의 합니다." /></label>
</div>
<small class="help-block" data-fv-validator="notEmpty" data-fv-for="checkbox_terms_traveler" data-fv-result="NOT_VALIDATED" style="display: none;">필수항목</small></div>
</div>
</div>
</div>
</div>

<div class="btn-container form-btn-container clearfix">
<div class="btn--width-50">
<a class="btn-new btn--type-gray btn--width-100" href="/app/tour/detail/${tno}"><spring:message code="rsv.can" text="취소하기" /></a>
</div>
<div class="btn--width-50">
<button class="btn-new btn--type-primary btn--width-100" data-disable-with="로딩중.." id="reservation-btn" type="button"><spring:message code="rsv.title" text="결제하기" /></button>
</div>
</div>
<small class="help-block" data-fv-validator="notEmpty" data-fv-for="payment[paytype]" data-fv-result="NOT_VALIDATED" style="display: none;"><spring:message code="rsv.method" text="결제수단을 선택해주세요." /></small></div>
<input type="hidden" name="usd_tot_price" value="${usd_tot_price }" />
</form>

</div>
</section>
</div>

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

<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
<script src="/resources/js/util.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.1/dist/sweetalert2.all.min.js"></script>
<script type="text/javascript">

  if(navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //모바일(스마트폰+태블릿)일 때
    window.userAgent = "t";
    if(navigator.userAgent.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
      //스마트폰일 때
      window.userAgent = "m";
    }
  }
</script>
<script>



(function(){
    window.onload = function(){
        $('#loading').hide();  
    }  

	 $('#reservation-btn').on('click', checkInputs);
	 
	 function checkInputs(e){
	     e.preventDefault();
	     
	     
	     if($('#checkbox_terms_traveler').is(":checked") == false ){
	         if (locale === 'en'){
	             swal("Please check \"Terms and conditions\"","it's Mandatory");
	         } else {
	             swal("\"여행자 약관\" 동의 해주세요.","필수항목입니다.");
	         }
	         $('#checkbox_terms_traveler').focus();
	         return false;
	     }
	     
	     /* if(!(locale === 'en')){
	         console.log(ex_rate);
	         console.log(document.payForm.tot_pay.value);
	         document.payForm.tot_pay.value = ex_rate * document.payForm.tot_pay.value;
	         console.log(document.payForm.tot_pay.value);
	     } */
	     
	     document.payForm.submit();
	     
	     $('#loading').show();
	     
	 }
})()


 
</script>
<div id="loading"><img id="loading-image" src="/resources/img/loader1.gif" alt="Loading..." /></div>
</body>
</html>