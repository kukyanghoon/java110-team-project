<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta content='Content-type: text/html; charset=UTF-8' name='http-equiv'>
<meta content='IE=Edge,chrome=1' http-equiv='X-UA-Compatible'>
<meta content='width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta content='yes' name='apple-mobile-web-app-capable'>
<meta content='black' name='apple-mobile-web-app-status-bar-style'>
<meta content='all, index, follow' name='robots'>
<meta content='ko' name='locale'>
<meta content='KRW' name='currency'>
<meta content='현지 투어, 여행 가이드, 투어 가이드, 현지 가이드, 가이드 투어, 마이리얼트립, 현지정보, 여행정보, 입장권, 교통패스, 액티비티, 여행사, 호텔예약, 해외호텔, 호텔할인, 바로사용, 한인민박, 민박, 와이파이, 유심, 여행자보험, 항공권, 항공권 검색, 최저가 항공권' name='keywords'>
<meta content='&quot;죽기 전에 반드시 방문해야 할 50가지 명소&quot; 중 2위인 그레이트 베리어 리프에서 &quot;니모, 월리&quot; 와 함께 하루를 만끽하실 수 있는 최고의 상품입니다.: 달에서도 육안으로 볼 수 있는 유일한 유네스코 세계 자연 유산인 그레에트 베리어 리프. 세계적으로 가장 유명한 방송국의 하나인 영국 BBC의 &amp;quot;죽기 전에 반드시 방문해야 할 50가지 명소&amp;quot; 중 2위에 선정된 그레이트 베리어 리프.

그레이트 베리어 리프의 상징적인 마스코트인 귀여운 니모와 월리는 물론, 다양한 수중 생물들과 멋진 산호초 군락을 함께 즐길 수 있는 환상적인 투어가 리프 매직 크루즈 투어입니다. 
기본 스노클링 패키지 코스로 반 ......' name='description'>


<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon-precomposed'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png' rel='apple-touch-icon' sizes='152x152'>
<title>LEADME :: ${tour.titl}</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />

<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-4b8ab07154cf2c04a97bb950234f455fe5a721876f501316a714f1a8b65b12ae.css" />
<link rel="stylesheet" media="screen" href="/resources/css/datepicker.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/application-86de1be31d401529a297febaf961a82ebf2ba60f6dd1f2b9c4b833b5753dcb7f.js"></script>
<script>
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.2&appId=341620679957072&autoLogAppEvents=1';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<style>
.sidebar-container {
    padding-top: 0 !important;
}
.sidebar-inner-box.gray-box{
    padding-top: 0 !important;
}
.sidebar-container2,.sidebar-container3{
    display:inline-block;
    margin-left:32px;
    padding-top:56px;
    width:288px
}
.date-container{
    padding: 16px;
    border: solid 1px #dee2e6;
}
.price-info{
    margin-top: 35px;
}

.btn-info{
    background-color: #51abf3 !important;
}

#course{
    background-color: #fff !important;
}

#showPrice{
    padding: 16px;
    background-color: #f1f3f5;
}

@media screen and (max-width: 767px){
	.sidebar-container3 {
	   widthL: 100%;
	   margin-bottom: 20px;
	}
}
@media screen and (min-width: 768px) and (max-width: 1023px){
    .sidebar-container2,.sidebar-container3{
        margin-left: 0;
    }
    .sidebar-container2 {
        float: left;
    }
    .sidebar-container3 {
        float: right;
        margin-bottom: 20px;
    }
    .sidebar-container3 #showPrice{
        height: 272px;
    }
    .course-container{
        clear: both;
    }
}

/* #header-container{
	padding-top:51px;
} */





</style>
</head>
<body class='body' data-action='show' data-controller-path='kitty/offers' data-controller='offers'>
<jsp:include page="../headerTest.jsp"></jsp:include>
<div class='global-alert-box'>
</div>

<!-- header -->      

<main class='offer-detail' data-category='ticket' data-location-city='Cairns' data-location-country='Australia' data-location-region='oceania' data-offer-id='36522' itemscope itemtype='http://schema.org/Product'>
<meta content='마이리얼트립' itemprop='brand'>
<meta content='&quot;죽기 전에 반드시 방문해야 할 50가지 명소&quot; 중 2위인 그레이트 베리어 리프에서 &quot;니모, 월리&quot; 와 함께 하루를 만끽하실 수 있는 최고의 상품입니다.: 달에서도 육안으로 볼 수 있는 유일한 유네스코 세계 자연 유산인 그레에트 베리어 리프. 세계적으로 가장 유명한 방송국의 하나인 영국 BBC의 &amp;quot;죽기 전에 반드시 방문해야 할 50가지 명소&amp;quot; 중 2위에 선정된 그레이트 베리어 리프.

그레이트 베리어 리프의 상징적인 마스코트인 귀여운 니모와 월리는 물론, 다양한 수중 생물들과 멋진 산호초 군락을 함께 즐길 수 있는 환상적인 투어가 리프 매직 크루즈 투어입니다. 
기본 스노클링 패키지 코스로 반 ......' itemprop='description'>
<meta content='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_large_1527833351.jpg?1527833351' itemprop='image'>
<meta content=' 오키도키 그레이트베리어리프-리프 매직 크루즈 (다이빙/헬기/씨워커/수중스쿠터옵션)' itemprop='name'>
<div class='header-container' id="header-container">
<div class='bg-img' style="background-image:url('/resources/img/${tour.pri_phot}')"></div>

<div class='offer-inner-container clearfix'>

</div>
</div>

<section class='clearfix body-container' data-check-price-url='/offers/36522/check_option' data-option-url='/offers/36522/options' data-request-url='/offers/36522/occupied_dates'>
<div class='booking-bar'>
<div class='offer-inner-container clearfix'>
<div class='bar-inner-container'>
<ul class='booking-bar-nav'>
<li class='bar-nav-item item-inline gtm-offer-menu-introduce' data-target='#commonInfo'>
<div class='text'><spring:message code="detail.intro" text="여행 소개" /></div>
</li>
<li class='bar-nav-item item-inline gtm-offer-menu-course' data-target='#course'>
<div class='text'><spring:message code="detail.course" text="코스 소개" /></div>
</li>
<li class='bar-nav-item item-inline hide-on-mobile gtm-offer-menu-attention' data-target='#attention'>
<div class='text'><spring:message code="detail.recommend" text="필수 안내" /></div>
</li>
<li class='bar-nav-item item-inline gtm-offer-menu-review' data-target='#review'>
<div class='text'><spring:message code="detail.review" text="후기" /></div>
</li>
<li>

</li>
</ul>
</div>
<div class='bar-inner-container icon-set-container'>
<!--<div class='reservation-btn-container'>
<script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/offers/36522","location":"/offers/36522","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/offers/36522","search":null,"httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>
<div id="TicketButton-react-component-24492967-2e5f-40ba-a4bb-05cc37eb8d12"></div>
      <script type="application/json" class="js-react-on-rails-component" data-component-name="TicketButton" data-dom-id="TicketButton-react-component-24492967-2e5f-40ba-a4bb-05cc37eb8d12">{}</script>
      

</div>-->

<div class='share-wrapper item-inline item-wrapper'>
<div class='icon-wrapper'>
<div class='icon'></div>
</div>
<div class='tooltip-box'>
<img class='border-icon' height='6px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/triangle@2x-5d15d11d2d20682092f48faf2cdb50d3b51bf325ffdea2ce2cf2a5dfc38097ef.png' width='9px'>
<a class='sns-icon gtm-offer-share-email' href='mailto:?subject=리드미 이 상품 어때?!&amp;body=${tour.titl }%0D%0Ahttp://localhost:8888/app/tour/detail/${tour.tno}'>
<img alt='이메일' height='14px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic_mail@2x-cc60d6ea168fb03a60557d275890fd11249491594aaea5bda70ed5c04468b331.png' width='19px'>
</a>
<a class='sns-icon gtm-offer-share-tw' href='https://twitter.com/share?text=${tour.titl }&amp;via=leadme' target='_blank'>
<img alt='트위터' height='15px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic_twitter@2x-777763aa796e4bd82a6d2e882d2019a3b79fd561f06c40d553bf14cfd406473f.png' width='18px'>
</a>
<a class='sns-icon' href='#' onclick='event.preventDefault(); fb_share();'>
<img alt='페이스북' height='15px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic_facebook@2x-46f61b9ea59b8cc370e9ab110fd3d52ff41abf7dcc420764ab24c42b976be171.png' width='15px'>
</a>
</div>
</div>
</div>
</div>
</div>

<div class='offer-inner-container clearfix'>
<div class='content-center-narrow right-content-container'>
<div class='common-info-container' id='commonInfo'>
<c:if test="${tour.pri_mv != null}">
<iframe width="560" height="315" src="${tour.pri_mv }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</c:if>
<div class='offer-title'> ${tour.titl }</div>
<div class='inner-container'>
<a class='location-container gtm-offer-city' href='/offers?city=Cairns&amp;country=Australia'>
<img alt='location' class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/ic-spot@2x-aeda6e08b2186d0aa7032e2f97eac95875717975e87e37fdc8ec604fbb0e4f48.png' width='7px'>
<span class='text-gray'><spring:message code="detail.korea" text="대한민국" />, <c:if test="${lang == 'en'}">${tour.locnm_en}</c:if><c:if test="${lang != 'en'}">${tour.locnm_ko}</c:if></span>
</a>
<div class='score-container clearfix' itemprop='aggregateRating' itemscope='true' itemtype='http://schema.org/AggregateRating'>

<div class="rating-box">
<c:forEach var="i" begin="1" end="5">
    <c:choose>
        <c:when test="${i <= tour.star}"><span class="icon active"></span></c:when>
        <c:otherwise><span class="icon"></span></c:otherwise>
    </c:choose>
</c:forEach>
</div>

<span class='text-gray gtm-offer-menu-review' data-jump data-target='#review'>&nbsp;<spring:message code="detail.reviews" text="후기" />&nbsp; ${tour.cmt_cnt }<spring:message code="detail.gae" text="개" /></span>
</div>
</div>

<div class='border-b guide-container'>
<div class='profile-image'>
<a class='gtm-offer-guide-profile' href='/app/guide/profile/${tour.mno}'>
<img class='img-profile img-circle' id="guide-profile" src='/resources/img/${guide.photo}' onerror="showDefaultImg();">
</a>
</div>
<div class='profile-detail'>
<div class='guide-name'>
<a class='gtm-offer-guide-profile' href='/app/guide/profile/${tour.mno}'>
<span>${guide.name}</span>
</a>
</div>
</div>
<div class='guide-description'>
<p class='more'>
${guide.intro}
</p>
</div>
<a class='btn-guide-message btn-gray-lg gtm-offer-guide-message' href='mailto:${guide.email}?subject=[리드미] ${tour.titl} - 문의 드립니다'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic-messagetoguide@2x-b43b95e397a37d9272ebccf7d6df740b0957f5cb22ef9f4dedd5d3289dfce7fc.png' width='23px'>
<span class='text'><spring:message code="detail.email" text="문의하기" /></span>
</a>
</div>

</div>

<!-- 취소 및 환불 규정  Modal-->
<div class='modal fade' id='bookingHelpModal'>
<div class='modal-dialog modal-center' role='document'>
<div class='modal-content'>
<div class='modal-header'>
<button aria-label='Close' class='close' data-dismiss='modal' type='button'>
<img height='15px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/bt_close@2x-71450e6b944960b8b861fa54fbce5d328533e29f9c2e50778c93876c1854b6d2.png' width='16px'>
</button>
<div class='modal-title'>취소 및 환불 규정</div>
</div>
<div class='modal-body'>
<div class='row'>
<div class='col-xs-12 modal-body-title'>- 여행일 기준 31일전까지 취소 요청시 : 전액 환불 <br>
- 여행일 기준 30~5일전까지 취소 요청 시 : 결제요금의 20% 공제 후 환불 <br>
- 여행일 기준 4일전까지 취소 요청 시 : 결제요금의 30% 공제 후 환불 <br>
- 여행일 기준 3일~당일 혹은 No Show : 취소/변경/환불 불가<br>
</div>
</div>
</div>
</div>
</div>
</div>


<div class='photo-container'>
<ul class='item-container'>
<li class='big-item item' data-index='0'>
<div class='img-placeholder img-placeholder--offer-photo'>
<img class='img-small landscape' src='/resources/img/${tour.pri_phot }'>
<div class='img-padding'></div>
<img class='img' data-echo='/resources/img/${tour.pri_phot}'>
</div>
</li>
</ul>
<!--<div class='text' data-text-more>+ 클릭해서 크게 보기</div>-->
</div>

<div class='introduce-container'>
<div class='title'>
</div>
<p class='more'>
${tour.tour_intro}
</p>
</div>

</div>

<form action="/app/payment" method="post" id="detailForm" name="detailForm">
<div class='sidebar-container2' >
<div class="date-container">
<input type="hidden" 
	   id="dateInput" 
	   name="tour_date" 
       class="datepicker-here"
       data-language='ko'
       />
</div>
</div>
<div class='sidebar-container3' >
<div class='reservation-container' id='showPrice'>
<span>₩ </span><span><fmt:formatNumber value='${tour.amt }' groupingUsed='true'/></span>
<input id="person-price" type="hidden" value="${tour.amt }"/>
<span class='unit'>/ <spring:message code="detail.1person" text="1인" /></span>
    <select class="form-control" id="person-picker" onchange="priceUpdate();" form="detailForm" name="person_num">
      <option value="" selected disabled><spring:message code="detail.select" text="인원 선택" /></option>
      <c:forEach begin="1" end="${tour.mx_pn}" var="i">
        <option value="${i}">${i} <spring:message code="detail.myung" text="명" /></option>
      </c:forEach>
    </select>

<div class="price-info">
    <div class="price-text"><spring:message code="detail.total" text="총 여행금액" /></div><br>
    <div class="price-text" style="color: #51abf3;"><span>₩</span> <span id="total-price"> <fmt:formatNumber value='${tour.amt }' groupingUsed='true'/></span></div>
    <input id="tot-amt" type="hidden" value=${tour.amt}/>
</div>
</div>
</div>

<input type="hidden" name="tno" value="${tour.tno}"/>
<input type="hidden" name="pri_phot" value="${tour.pri_phot}"/>
<input type="hidden" name="title" value="${tour.titl}"/>
<input type="hidden" name="guide_name" value="${guide.name}"/>
<input type="hidden" name="guide_photo" value="${guide.photo}"/>
<input type="hidden" name="price" value="${tour.amt}"/>
<input type="hidden" name="tot_price" value="" id="tot_price" />
<input type="hidden" name="mno" value="${memberInfo.no}"/>
<input type="hidden" name="name" value="${memberInfo.name}"/>

</form>


<div class='sidebar-container' >


<div class='sidebar-inner-box gray-box' data-reservation-box >


<button type="button" class="btn btn-info btn-primary btn-lg" style="width: 100%" id="go-payment"><spring:message code="detail.pay" text="구매하기" /></button>   

</div>

<div id='transSide' class="float_sidebar">

<div>
<h3 style="margin-top: 100px; width :14rem; float:left;" onclick="translate()">Easy translation</h3>
<select name="langTarget" style="float: right; margin-top: 34%;">
    <option value="ko">&nbsp;&nbsp;to <spring:message code="myInfo.korean" text="한국어" /></option>
    <option value="en">&nbsp;&nbsp;to <spring:message code="myInfo.english" text="영어" /></option>
    <option value="zh-CN">&nbsp;&nbsp;to <spring:message code="detail.chinese" text="중국어 간체" /></option>
    <option value="zh-TW">&nbsp;&nbsp;to <spring:message code="detail.taiwanese" text="중국어 번체" /></option>
    <option value="ja">&nbsp;&nbsp;to <spring:message code="detail.japanese" text="일본어" /></option>
    <option value="fr">&nbsp;&nbsp;to <spring:message code="detail.french" text="프랑스어" /></option>
    <option value="es">&nbsp;&nbsp;to <spring:message code="detail.spanish" text="스페인어" /></option>
    <option value="vi">&nbsp;&nbsp;to <spring:message code="detail.vietnamese" text="베트남어" /></option>
</select>
</div>
<input id="forTransWord" class="input" type="text" style="width: 175px; margin: 4px 20px 2px 4px;" />
<button id="aaa" class="btn btn-info" type="button" style="margin-top: -4px;" >Translate</button>
<div style="font-size: 15px;line-height: 28px;word-break: break-all;" id="translateArea">Use this to easily translate information in other languages
</div>
</div>

</div>
<div class='course-container' id='course'>
<div class='offer-inner-container'>
<div class='content-wrapper'>
<div class='title' id="courseaaaaa"><spring:message code="detail.course" text="코스 소개" /></div>
<div class='course-list'>
<div class='box box-map'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'><spring:message code="detail.meet" text="만나는 장소" /></div>
<div class='info-description'>${tour.join_plc }</div>
<div class='map-container'>
<a href='https://www.google.com/maps/search/?api=1&amp;query=${tour.lat},${tour.lon}' onclick='window.open(this.href); return false'>
<img class='map-wrapper' src='https://maps.googleapis.com/maps/api/staticmap?center=${tour.lat},${tour.lon}&amp;markers=size:mid%7Ccolor:red%7Clabel:E%7C37.564988487427,126.976766154245&amp;zoom=18&amp;scale=4&amp;size=344x218&amp;key=AIzaSyBgateWzuSDzB4eXge3FbM9uGq13JearvI'>
</a>
</div>
</div>
<div class='description-container meeting-time-container'>
<img class='icon icon-time' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-time@2x-2ee164e66b789b678453658445da2a24f4bbc99b359e4a7ddf02d2779aecba4a.png' width='15px'>
<div class='info-container'>
<div class='info-title'><spring:message code="detail.meetTime" text="만나는 시간" /></div>
<div class='info-description'>${tour.join_tm }</div>
</div>
<div class='info-photo-container map-container'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source media='(max-width: 1339px)' srcset='/resources/img/point.jpg'>
<!--[if IE 9]></video><![endif]-->
<img alt='meeting point photo' class='img landscape' srcset='/resources/img/${tour.join_phot}'>
</picture>
</div>
</div>
</div>
</div>
<!-- non hidden single -->
<c:forEach items="${courseList}" var="list" varStatus="status">

<c:choose>
   <c:when test="${status.count gt 3}">
		<div class='box hidden'>
	</c:when>
	<c:otherwise>
		<div class='box'>
	</c:otherwise>
</c:choose>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>${list.cr_name }</div>
<div class='info-description'>
<p>${list.cr_intro}</p>
</div>
</div>
<div class='info-photo-container'>
<a href="${tour.albm_link}" target="_blank">
<div class='img-placeholder'>
<img class='img-small' src='/resources/img/${list.cr_phot_name}'>
<div class='img-padding'></div>
<img class='img' data-echo='/resources/img/${list.cr_phot_name}'>
</div>
</a>


</div>
</div>
</div>
</c:forEach>
<!-- end -->


<c:if test="${fn:length(courseList) gt 3 }">
<div class='btn-white btn-more'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic_arrow_more@2x-58031ef3a523ee43aa15c91fcb46284b98ab157a159dfcdf810264fc3f71ac99.png' width='12px'>
<span><spring:message code="detail.moreCourse" text="코스 더 보기" /></span>
</div>
</c:if>

</div>
</div>
</div>
</div>

<div class='offer-inner-container'>
<div class='content-center-narrow'>
<div class='extra-info-container' id='attention'>
<div class='info-box show-on-tablet'>
<div class='info-wrapper'>
<div class='title'>가격포함 (포함사항)</div>
<p class='more'>1. 스노클링 (도구 포함), 웻 슈트
<br />2. 반 잠수정
<br />3. 유리 바닥 보트
<br />4. 해양 관찰실
<br />5. 물고기 먹이주기 액티비티
<br />6. 뷔페 중식
<br />7. 음료 및 2회의 간식
<br />8. 환경세</p>
</div>
<div class='info-wrapper'>
<div class='title'>여행자부담 (불포함 사항)</div>
<p class='more'>1. 기타 개인경비
<br />2. 여행자보험
<br />3. 옵션 투어비
<br />4. 사진 구입비</p>
</div>
</div>

<div class='info-box'>
<div class='title' id="nivea"><spring:message code="detail.recommend" text="필수 안내" /></div>
<p class='more'>
${tour.req_inf}
</p>
</div>

</div>


<div class='review-container mrt-review-container' id='review'>
<div class='review-list' data-review-count='2'>
<div class='content-center-narrow'>
<div class='title'>
<spring:message code="detail.review" text="후기" />
<div class='count'>${tour.cmt_cnt }</div>
</div>
<div class='review-wrapper'>
<div class='review-stats-container'>
<div class='stats-content-container'>


</div>
</div>

<!--  -->

<c:forEach items="${commentList}" var="list" varStatus="status">



<c:if test="${list.type eq 'C' && list.cnt > 0}">
<div class='review-box'>
<div class='review-inner-container'>
<div class='review-row'>

<div class="rating-box">
<c:forEach var="i" begin="1" end="5">
    <c:choose>
        <c:when test="${i <= list.cont_star}"><span class="icon active"></span></c:when>
        <c:otherwise><span class="icon"></span></c:otherwise>
    </c:choose>
</c:forEach>
</div>
<div class='name'>${list.mark_name}</div>
</div>
<div class='review-row review-info'>
<!-- <time class='time' data-timestamp='1533983109.9552078' data-type='date'></time> -->
${list.cont_dt }
</div>
<div class='review-row'>
<p class='review-message'>${list.cont}</p>
<c:if test="${list.cont_phot != null && list.cont_phot != ''}">
<div class="img-container">
<img alt="${tour.titl}" class="review-img" src="/resources/img/${list.cont_phot}">
</div>
</c:if>
</div>
</c:if>

<c:if test="${list.type eq 'C' && list.cnt == 0}">
<div class='review-box'>
<div class='review-inner-container'>
<div class='review-row'>
<div class="rating-box">
<c:forEach var="i" begin="1" end="5">
    <c:choose>
        <c:when test="${i <= list.cont_star}"><span class="icon active"></span></c:when>
        <c:otherwise><span class="icon"></span></c:otherwise>
    </c:choose>
</c:forEach>
</div>
<div class='name'>${list.mark_name}</div>
</div>
<div class='review-row review-info'>
<!-- <time class='time' data-timestamp='1533983109.9552078' data-type='date'></time> -->
${list.cont_dt }
</div>
<div class='review-row'>
<p class='review-message'>${list.cont}</p>
<c:if test="${list.cont_phot != null && list.cont_phot != ''}">
<div class="img-container">
<img alt="${tour.titl}" class="review-img" src="/resources/img/${list.cont_phot}">
</div>
</c:if>

</div>
</div>
</div>
</c:if>
<!--  -->
<c:if test="${list.type eq 'R'}">
<!-- reply -->
<div class='reply-box'>
<img alt='reply' class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/ic_reply@2x-32fb2336958b86fe4e23a067a426cc781b4bac2ecfac4467b565de3578b5f890.png' width='10px'>
<div class='review-row'>
<div class='name'>${list.name}</div>
</div>
<div class='review-row'>
<p class='review-message'>${list.cont}</p>
</div>
</div>
<!-- reply end -->
</div>
</div> <!-- review box end -->
</c:if>
</c:forEach>


<c:if test="${fn:length(commentList) gt 3 }">
<a class="btn-white btn-more ladda-button" id="review-more" data-ladda="true" data-remote="true" href="detail/${tour.tno}/reviews?page=2" data-style="zoom-out" data-spinner-color="#2196f3">
<span class="ladda-label">
<img class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic_arrow_more@2x-58031ef3a523ee43aa15c91fcb46284b98ab157a159dfcdf810264fc3f71ac99.png" width="12px">
<span>후기 더보기</span>
</span>
<span class="ladda-spinner"></span>
</a>
 </c:if>
</div>
</div>
</div>
</div>

</div>
</div>

<div class='other-cards-container'>

</div>

<div class='gallery-container offer'>
<div class='close-btn'>
<img class='close-icon' height='31px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/gallery/ic_picture_close@2x-f3719d7647186a6d0e5b9725baad1a16f9b0d5e0bbba82e9c196bd8f27bc543b.png' width='31px'>
</div>
<div class='inner-container'>
<div class='image-container'>
<ul class='image-wrapper'>
<li class='item' data-index='0'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_large_1527833351.jpg?1527833351'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_large_1527833351.jpg?1527833351'>
</picture>
</li>
<li class='item' data-index='1'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226810_large_1527833351.jpg?1527833351'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226810_large_1527833351.jpg?1527833351'>
</picture>
</li>
<li class='item' data-index='2'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226811_large_1527833352.jpg?1527833352'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226811_large_1527833352.jpg?1527833352'>
</picture>
</li>
<li class='item' data-index='3'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226812_large_1527833352.jpg?1527833352'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226812_large_1527833352.jpg?1527833352'>
</picture>
</li>
<li class='item' data-index='4'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226813_large_1527833353.jpg?1527833353'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226813_large_1527833353.jpg?1527833353'>
</picture>
</li>
<li class='item' data-index='5'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226814_large_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226814_large_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='item' data-index='6'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226815_large_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226815_large_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='item' data-index='7'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226816_large_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226816_large_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='item' data-index='8'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226817_large_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226817_large_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='item' data-index='9'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226818_large_1527833356.jpg?1527833356'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226818_large_1527833356.jpg?1527833356'>
</picture>
</li>
<li class='item' data-index='10'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226819_large_1527833356.jpg?1527833356'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226819_large_1527833356.jpg?1527833356'>
</picture>
</li>
<li class='item' data-index='11'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226820_large_1527833357.jpg?1527833357'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226820_large_1527833357.jpg?1527833357'>
</picture>
</li>
<li class='item' data-index='12'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226821_large_1527833357.jpg?1527833357'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226821_large_1527833357.jpg?1527833357'>
</picture>
</li>
<li class='item' data-index='13'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226822_large_1527833357.jpg?1527833357'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226822_large_1527833357.jpg?1527833357'>
</picture>
</li>
<li class='item' data-index='14'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226823_large_1527833359.jpg?1527833359'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226823_large_1527833359.jpg?1527833359'>
</picture>
</li>
<li class='item' data-index='15'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226824_large_1527833359.jpg?1527833359'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226824_large_1527833359.jpg?1527833359'>
</picture>
</li>
</ul>
<div class='arrow-left arrow'>
<img class='icon' height='60px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/gallery/ic_picture_arrow_left@2x-8d8161dadd47562a405bef8287b16ad278b6f8c7c462a8fff40e82ea6337d65e.png' width='60px'>
</div>
<div class='arrow-right arrow'>
<img class='icon' height='60px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/gallery/ic_picture_arrow_right@2x-ab450fb375f445f4ff814264111cc5a5e8b95bf5316801f2ec2a616169b02bad.png' width='60px'>
</div>
<div class='index-box'>
<div class='text'></div>
</div>
</div>
<div class='thumb-container'>
<ul class='image-wrapper'>
<li class='thumbnail' data-index='0'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_small_1527833351.jpg?1527833351'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_small_1527833351.jpg?1527833351'>
</picture>
</li>
<li class='thumbnail' data-index='1'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226810_small_1527833351.jpg?1527833351'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226810_small_1527833351.jpg?1527833351'>
</picture>
</li>
<li class='thumbnail' data-index='2'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226811_small_1527833352.jpg?1527833352'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226811_small_1527833352.jpg?1527833352'>
</picture>
</li>
<li class='thumbnail' data-index='3'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226812_small_1527833352.jpg?1527833352'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226812_small_1527833352.jpg?1527833352'>
</picture>
</li>
<li class='thumbnail' data-index='4'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226813_small_1527833353.jpg?1527833353'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226813_small_1527833353.jpg?1527833353'>
</picture>
</li>
<li class='thumbnail' data-index='5'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226814_small_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226814_small_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='thumbnail' data-index='6'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226815_small_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226815_small_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='thumbnail' data-index='7'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226816_small_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226816_small_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='thumbnail' data-index='8'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226817_small_1527833354.jpg?1527833354'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226817_small_1527833354.jpg?1527833354'>
</picture>
</li>
<li class='thumbnail' data-index='9'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226818_small_1527833356.jpg?1527833356'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226818_small_1527833356.jpg?1527833356'>
</picture>
</li>
<li class='thumbnail' data-index='10'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226819_small_1527833356.jpg?1527833356'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226819_small_1527833356.jpg?1527833356'>
</picture>
</li>
<li class='thumbnail' data-index='11'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226820_small_1527833357.jpg?1527833357'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226820_small_1527833357.jpg?1527833357'>
</picture>
</li>
<li class='thumbnail' data-index='12'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226821_small_1527833357.jpg?1527833357'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226821_small_1527833357.jpg?1527833357'>
</picture>
</li>
<li class='thumbnail' data-index='13'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226822_small_1527833357.jpg?1527833357'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226822_small_1527833357.jpg?1527833357'>
</picture>
</li>
<li class='thumbnail' data-index='14'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226823_small_1527833359.jpg?1527833359'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226823_small_1527833359.jpg?1527833359'>
</picture>
</li>
<li class='thumbnail' data-index='15'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226824_small_1527833359.jpg?1527833359'>
<!--[if IE 9]></video><![endif]-->
<img class='img' srcset='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226824_small_1527833359.jpg?1527833359'>
</picture>
</li>
</ul>
</div>
</div>
</div>


<div class='mobile-booking-btn' id='mobileBookingBtn'>
구매하기
</div>
<!--<div class='offer-number-container'>
<div class='offer-number-wrapper'>
<div class='offer-number'></div>
</div>
</div>-->

</section>

</main>
<div class='sign-up-popup-container popup-layer-container hidden-sm-down hidden-xs-up'>



<div class='popup-mask'></div>
<div class='popup'>
<img class='close-icon close-popup' height='13px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/modal/close@2x-5ec650296ddd225a96d9bd556a3ad260bfac3be0da860829550c062e17d73461.png' width='13px'>
<div class='popup-body clearfix'>
<p><span class='special'>회원가입</span>을 하시면 세계 곳곳의 가이드에게</br>
여행에 관해 <span class='special'>직접 문의</span>하고,</br>
여행 관련 <span class='special'>정보와 혜택</span>을 받아보실 수 있어요!</br>
</p>
</div>
<div class='popup-footer clearfix'>
<div class='popup-button gtm-layer-signup'>
<a class='btn-new btn--type-primary btn--size-sm btn--width-100 gtm-layer-signup' href='/users/sign_up'>회원가입</a>
</div>
<div class='help-text'>이미 LEADME 회원이신가요?</div>
<div class='popup-button gtm-layer-signin'>
<a class='btn-new btn--type-outline btn--size-sm btn--width-100 gtm-layer-signin' href='/users/sign_in'>로그인</a>
</div>
</div>
</div>
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

<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>


<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
<script src="/resources/js/datepicker.js"></script>
<script src="/resources/js/i18n/datepicker.en.js"></script>
<script src="/resources/js/i18n/datepicker.ko.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-ce3fc3507853263820d2d1429b62056a0198477b4727cfb36e1facadea05fbcd.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.1/dist/sweetalert2.all.min.js"></script>
<script src="/resources/js/util.js"></script>
<script>
var disabledDays = [0, 6];

    
    function priceUpdate(){
        /* console.log($("#person-picker option:selected").val()); */
        $('#total-price').text(numberWithCommas($("#person-picker option:selected").val() * $('#person-price').val()) );
        $('#tot-amt').val($("#person-picker option:selected").val() * $('#person-price').val());
    }
    
    
    $('#go-payment').on("click",goPayment);
    
    function goPayment(){
    	console.log('aaa');
    	
    	if ( $('#dateInput').val() == ''){
    		swal({
    			  type: 'warning',
    			  title: '여행 날짜를 선택해 주세요',
    			  text: '입력 항목 누락'
    		})
    		$('#dateInput').focus();
    		return;
    	}
    	
    	if($('#person-picker option:selected').val() == ''){
    		swal({
    			  type: 'warning',
    			  title: '인원을 선택해 주세요.',
    			  text: '입력 항목 누락'
    		})
    		$('#person-picker').focus();
    		return;
    	}
    	
    	document.detailForm.tot_price.value = $('#tot-amt').val();
    	document.detailForm.submit();
    }
    
    $('#aaa').on('click', function(){
        console.log($('#forTransWord').val());
        var obj = {
                'word' : $('#forTransWord').val(),
                'target' : $('select[name = langTarget]').val()
        }
        
        $.ajax({
            url:'/app/translate/translate.do',
            type:'POST',
            dataType:'JSON',
            data:JSON.stringify(obj),
            contentType:"application/json",
            success:function(data){
                console.log(data);
                $('#translateArea').text(data.message);
            },
            error:function(){
                console.log("실패");
                $('#translateArea').text("아직 번역이 불가능 하네요");
                if('${lang}' == 'en'){
                	$('#translateArea').text("sorry...");
                }
                
            }
        });
        
        
        
        
        
    });
        
    
    
    
    
    
</script>
<script>
/* 

 */
function fb_share() {
	console.log('aaa');
  FB.ui({
    method: 'share',
    display: 'popup',
    href: 'https://jinhoan.smugmug.com',
  }, function(response){});
}

function showDefaultImg(){
    $('#guide-profile').attr("src","/resources/img/guide_default.png");
}
</script>

<!--  공통 스크립트 -->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>
<script type="text/javascript">
  window.criteo_q = window.criteo_q || [];
  window.userEmail = "";
  window.userAgent = "d";


  if(navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //모바일(스마트폰+태블릿)일 때
    window.userAgent = "t";
    if(navigator.userAgent.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
      //스마트폰일 때
      window.userAgent = "m";
    }
  }
</script>

  <!--  상품 페이지 -->
  <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
  
  
  
  
  <!-- 스크롤 -->
<script>
$(function(){
    var $win = $(window);
    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
     /*사용자 설정 값 시작*/
    var speed          = 500;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
    var easing         = 'swing'; // 따라다니는 방법 기본 두가지 linear, swing
    var $layer         = $('.float_sidebar'); // 레이어 셀렉팅
    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
    $layer.css('position', 'relative').css('z-index', '1');
    /*사용자 설정 값 끝*/
     // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
    if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
    else
        $win.scrollTop(0);
     //스크롤이벤트가 발생하면
    $(window).scroll(function(){
        yPosition = $win.scrollTop() - 1400; //이부분을 조정해서 화면에 보이도록 맞추세요
        if (yPosition < 0)
    {
            yPosition = 0;
    }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });
});
</script>
<script>
$(document).ready(function() {
    $(window).scroll(function() {
        $(this).scrollTop() > 1000 ? $(".float_sidebar").fadeIn() : $(".float_sidebar").fadeOut();
        if($(this).scrollTop() > ($('#courseaaaaa').offset().top)-250){
            console.log("scrollTop() > 3350");
            $('#transSide').css('margin-left','130px').css('width','280px');
            if($(this).scrollTop() > ($('#nivea').offset().top)-150){
                $('#transSide').css('margin-left','0px');
            }
        }else{
            $('#transSide').css('margin-left','0px');
        }
                
    })
});
</script>



</body>
</html>
