<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<title>${tour.titl} :: 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />

<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-4b8ab07154cf2c04a97bb950234f455fe5a721876f501316a714f1a8b65b12ae.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.6823a52822019093f642.css" />
<link rel="stylesheet" media="screen" href="/resources/css/datepicker.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<div class='header-container'>
<div class='bg-img' style='background-image:url(&#39;https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_large_1527833351.jpg?1527833351&#39;)'></div>
<div class='dark-cover'></div>
<div class='offer-inner-container clearfix'>

</div>
</div>

<section class='clearfix body-container' data-check-price-url='/offers/36522/check_option' data-option-url='/offers/36522/options' data-request-url='/offers/36522/occupied_dates'>
<div class='booking-bar'>
<div class='offer-inner-container clearfix'>
<div class='bar-inner-container'>
<ul class='booking-bar-nav'>
<li class='bar-nav-item item-inline gtm-offer-menu-introduce' data-target='#commonInfo'>
<div class='text'>여행 소개</div>
</li>
<li class='bar-nav-item item-inline gtm-offer-menu-course' data-target='#course'>
<div class='text'>코스 소개</div>
</li>
<li class='bar-nav-item item-inline hide-on-mobile gtm-offer-menu-attention' data-target='#attention'>
<div class='text'>필수 안내</div>
</li>
<li class='bar-nav-item item-inline gtm-offer-menu-review' data-target='#review'>
<div class='text'>후기</div>
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
<a class='sns-icon gtm-offer-share-email' href='mailto:?subject=마이리얼트립 이 상품 어때? 공유!&amp;body=[투어] 오키도키 그레이트베리어리프-리프 매직 크루즈 (다이빙/헬기/씨워커/수중스쿠터옵션)%0D%0Ahttps://www.myrealtrip.com/offers/36522'>
<img alt='이메일' height='14px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic_mail@2x-cc60d6ea168fb03a60557d275890fd11249491594aaea5bda70ed5c04468b331.png' width='19px'>
</a>
<a class='sns-icon gtm-offer-share-tw' href='https://twitter.com/share?text=[투어] 오키도키 그레이트베리어리프-리프 매직 크루즈 (다이빙/헬기/씨워커/수중스쿠터옵션)&amp;via=myrealtrip' target='_blank'>
<img alt='트위터' height='15px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic_twitter@2x-777763aa796e4bd82a6d2e882d2019a3b79fd561f06c40d553bf14cfd406473f.png' width='18px'>
</a>
<a class='sns-icon facebook-share gtm-offer-share-fb' data-turbolinks='false' href='#' onclick='return false'>
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
<!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/9Une3JGFXNk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
<div class='offer-title'> ${tour.titl }</div>
<div class='inner-container'>
<a class='location-container gtm-offer-city' href='/offers?city=Cairns&amp;country=Australia'>
<img alt='location' class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/ic-spot@2x-aeda6e08b2186d0aa7032e2f97eac95875717975e87e37fdc8ec604fbb0e4f48.png' width='7px'>
<span class='text-gray'>대한민국, <c:if test="${lang == 'en'}">${tour.locnm_en}</c:if><c:if test="${lang != 'en'}">${tour.locnm_ko}</c:if></span>
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

<span class='text-gray gtm-offer-menu-review' data-jump data-target='#review'>후기 ${tour.cmt_cnt }개</span>
</div>
</div>

<div class='border-b guide-container'>
<div class='profile-image'>
<a class='gtm-offer-guide-profile' href='/guides/9074'>
<img class='img-profile img-circle' src='/resources/img/face-a.png'>
</a>
</div>
<div class='profile-detail'>
<div class='guide-name'>
<a class='gtm-offer-guide-profile' href='/guides/9074'>
<span>${guide.name}</span>
</a>
</div>
</div>
<div class='guide-description'>
<p class='more'>
${guide.intro}
</p>
</div>
<a class='btn-guide-message btn-gray-lg gtm-offer-guide-message' href='mailto:${guide.email}'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic-messagetoguide@2x-b43b95e397a37d9272ebccf7d6df740b0957f5cb22ef9f4dedd5d3289dfce7fc.png' width='23px'>
<span class='text'>문의하기</span>
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
<img class='img-small landscape' src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_tiny_1527833351.jpg?1527833351'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_photos/36522/226809_large_1527833351.jpg?1527833351'>
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
<div class='sidebar-container2' >
<div class="date-container">
<input type="hidden"
       class="datepicker-here"
       data-language='ko'
       />
</div>
</div>
<div class='sidebar-container3' >
<div class='reservation-container' id='showPrice'>
<span>₩ </span><span id="person-price">${tour.amt }</span>
<span class='unit'>/ 1인</span>
    <select class="form-control" id="person-picker" onchange="priceUpdate();">
      <option value="" selected disabled>인원 선택</option>
      <option value="1">1명</option>
      <option value="2">2명</option>
      <option value="3">3명</option>
      <option value="4">4명</option>
      <option value="5">5명</option>
    </select>

<div class="price-info">
    <div class="price-text">총 여행금액</div><br>
    <div class="price-text" style="color: #51abf3;"><span>\</span> <span id="total-price"> ${tour.amt }</span></div>
</div>
</div>
</div>
<div class='sidebar-container' >


<div class='sidebar-inner-box gray-box' data-reservation-box >


<button type="button" class="btn btn-info btn-primary btn-lg" style="width: 100%">구매하기</button>   

</div>
</div>
<div class='course-container' id='course'>
<div class='offer-inner-container'>
<div class='content-wrapper'>
<div class='title'>코스 소개</div>
<div class='course-list'>
<div class='box box-map'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>만나는 장소</div>
<div class='info-description'>${tour.join_plc }</div>
<div class='map-container'>
<a href='https://www.google.com/maps/search/?api=1&amp;query=-16.9213019698353,145.780644775146' onclick='window.open(this.href); return false'>
<img class='map-wrapper' src='https://maps.googleapis.com/maps/api/staticmap?center=-16.9213019698353,145.780644775146&amp;markers=size:mid%7Ccolor:red%7Clabel:E%7C-16.9213019698353,145.780644775146&amp;zoom=18&amp;scale=4&amp;size=344x218&amp;key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E'>
</a>
</div>
</div>
<div class='description-container meeting-time-container'>
<img class='icon icon-time' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-time@2x-2ee164e66b789b678453658445da2a24f4bbc99b359e4a7ddf02d2779aecba4a.png' width='15px'>
<div class='info-container'>
<div class='info-title'>만나는 시간</div>
<div class='info-description'>${tour.join_tm }</div>
</div>
<div class='info-photo-container map-container'>
<picture>
<!--[if IE 9]><video style="display: none;"><![endif]-->
<source media='(max-width: 1339px)' srcset='https://d2ur7st6jjikze.cloudfront.net/meeting_point/36522_medium_1528938977.jpg?1528938977'>
<!--[if IE 9]></video><![endif]-->
<img alt='meeting point photo' class='img landscape' srcset='https://d2ur7st6jjikze.cloudfront.net/meeting_point/36522_medium_1528938977.jpg?1528938977'>
</picture>
</div>
</div>
</div>
</div>
<div class='box'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>스노클링</div>
<div class='info-description'>
<p>멋진 산호초 군락과 수중 동물들을 가장 편하게 접할 수 있는 액티비티이며, 수영에 자신이 없는 분들도 무료로 제공되는 웻 슈트, 라이프 자켓, 누들 (가벼운 스티로폼으로 만들어진 부력 기구) 등을 이용하여 안심하고 즐기실 수 있습니다. 또한, 99% 이상의 확률로 월리와의 만남도 가능합니다.</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86466_thumb_1527833359.jpg?1527833359'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86466_medium_1527833359.jpg?1527833359'>
</div>
</div>
</div>
</div>
<div class='box'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>반 잠수정</div>
<div class='info-description'>
<p>반은 물위, 반은 물밑으로 되어있는 선박을 이용하여 유리를 통해 수중 동물들과 멋진 산호초를 물에 젖지 않고도 약 30분 가까이 즐기실 수 있는 코스입니다. 운이 좋으면 바다 거북이나 상어도 보실 수 있으니 기대하시길 바랄게요.</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86467_thumb_1527833360.jpg?1527833360'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86467_medium_1527833360.jpg?1527833360'>
</div>
</div>
</div>
</div>
<div class='box'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>유리 바닥 보트</div>
<div class='info-description'>
<p>Glass Bottom Boat 라고 불리며, 단어 그대로 바닥이 유리로 되어 있으며 반 잠수정과 마찬가지로 유리를 통하여 물 속 경치를 즐기실 수 있는 코스입니다. 수영에 자신이 없는 어린이와 노약자 분들도 편안하게 참여하실 수 있습니다.</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86468_thumb_1527833360.jpg?1527833360'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86468_medium_1527833360.jpg?1527833360'>
</div>
</div>
</div>
</div>
<div class='box hidden'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>체험 스쿠버 다이빙</div>
<div class='info-description'>
<p>스쿠버 다이빙의 자격증이 없는 분들도 한국인 강사 분의 친절하며 자세한 설명으로 즐기실 수 있으며, 안전을 위해 체험 다이빙 의료 체크 리스트 항목의 자가 진단이 필요하니 필수 항목에서 확인하여 주시기 바랍니다. (만 12세부터 가능, 추가 요금 발생)</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86469_thumb_1527833360.jpg?1527833360'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86469_medium_1527833360.jpg?1527833360'>
</div>
</div>
</div>
</div>
<div class='box hidden'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>헬멧 다이빙</div>
<div class='info-description'>
<p>씨워커라고 불리는 헬멧을 이용하여 물속을 산책하면서 월리를 비롯한 다양한 물고기들과 함께할 수 있는 코스이며, 스쿠버 다이빙과는 달리 물에 관해 두려움을 가진 분들도 편안하고 안전하게 즐기실 수 있습니다. 스쿠버 다이빙과 마찬가지로 안전을 위해 체험 다이빙 의료 체크 리스트 항목의 자가 진단이 필요합니다. (만 12세부터 가능, 추가 요금 발생)</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86470_thumb_1527833361.jpg?1527833361'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86470_medium_1527833361.jpg?1527833361'>
</div>
</div>
</div>
</div>
<div class='box hidden'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>씨봅</div>
<div class='info-description'>
<p>수중 스쿠터라 불리는 씨봅. 멋진 산호초 군락과 다양한 수중 동물들을 풍부한 경험의 전문 강사님과 함께 하므로 초보자도 금방 익숙하게 즐기실 수 있습니다. (만 10세부터 가능, 추가 요금 발생)</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86471_thumb_1527833361.jpg?1527833361'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86471_medium_1527833361.jpg?1527833361'>
</div>
</div>
</div>
</div>
<div class='box hidden'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>펀 다이빙</div>
<div class='info-description'>
<p>스쿠버 다이빙의 자격증이 있는 분들이 가능하며, 모든 다이빙 장비가 포함되어 있으며 경력 많은 강사 분이 안내해 드리므로 편안하게 즐기실 수 있습니다. (반드시 다이빙 카드 필요, 추가 요금 발생)</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86472_thumb_1527833362.jpg?1527833362'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86472_medium_1527833362.jpg?1527833362'>
</div>
</div>
</div>
</div>
<div class='box hidden'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>헬기 투어</div>
<div class='info-description'>
<p>약 150미터의 저공 비행으로 헬기를 이용하여 하늘에서 산호초 군락을 만끽하실 수 있는 5분 혹은 10분 헬기 투어입니다. 운이 좋으면 상어, 바다 거북, Manta Ray, 듀공 등도 보실 수 있으며 시기에 따라서는 혹등 고래와 만날 수도 있습니다. (추가 요금 발생)</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86473_thumb_1527833361.jpg?1527833361'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86473_medium_1527833361.jpg?1527833361'>
</div>
</div>
</div>
</div>
<div class='box hidden'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/course-type-place@2x-495761b7c0fcfc70bbc31f41eba69c90573e5058f37d7e3c7616e1f344009781.png' width='13px'>
<div class='box-wrapper clearfix'>
<div class='description-container'>
<div class='info-title'>뷔페 중식</div>
<div class='info-description'>
<p>씨푸드를 포함한 다양한 종류의 음식들과 내용으로 준비되어 있으며, 뷔페 스타일이므로 마음껏 드실 수 있습니다. 뷔페 중식의 분위기의 일부는 다음 사진을 참고하여 주시기 바랍니다.</p>
</div>
</div>
<div class='info-photo-container'>
<div class='img-placeholder'>
<img class='img-small' src='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86474_thumb_1528172982.jpg?1528172982'>
<div class='img-padding'></div>
<img class='img' data-echo='https://d2ur7st6jjikze.cloudfront.net/offer_courses/36522/86474_medium_1528172982.jpg?1528172982'>
</div>
</div>
</div>
</div>
<div class='btn-white btn-more'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic_arrow_more@2x-58031ef3a523ee43aa15c91fcb46284b98ab157a159dfcdf810264fc3f71ac99.png' width='12px'>
<span>코스 더 보기</span>
</div>
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
<div class='title'>[필수안내]</div>
<p class='more'>
${tour.req_inf}
</p>
</div>

</div>


<div class='review-container mrt-review-container' id='review'>
<div class='review-list' data-review-count='2'>
<div class='content-center-narrow'>
<div class='title'>
후기
<div class='count'>2</div>
</div>
<div class='review-wrapper'>
<div class='review-stats-container'>
<div class='stats-content-container'>
<div class='stats-content-wrapper'><div class='stars-container'><div class='star'></div><div class='star'></div><div class='star'></div><div class='star'></div><div class='star'></div></div><div class='bar-container'>
<div class='bar' style='width:100.0%'></div>
</div><div class='stats-count'>2</div></div>
<div class='stats-content-wrapper'><div class='stars-container'><div class='star'></div><div class='star'></div><div class='star'></div><div class='star'></div></div><div class='bar-container'>
<div class='bar' style='width:0.0%'></div>
</div><div class='stats-count'>0</div></div>
<div class='stats-content-wrapper'><div class='stars-container'><div class='star'></div><div class='star'></div><div class='star'></div></div><div class='bar-container'>
<div class='bar' style='width:0.0%'></div>
</div><div class='stats-count'>0</div></div>
<div class='stats-content-wrapper'><div class='stars-container'><div class='star'></div><div class='star'></div></div><div class='bar-container'>
<div class='bar' style='width:0.0%'></div>
</div><div class='stats-count'>0</div></div>
<div class='stats-content-wrapper'><div class='stars-container'><div class='star'></div></div><div class='bar-container'>
<div class='bar' style='width:0.0%'></div>
</div><div class='stats-count'>0</div></div>
</div>
</div>

<div class='review-box'>
<div class='review-inner-container'>
<div class='review-row'>
<div class="rating-box"><span class="icon active"></span><span class="icon active"></span><span class="icon active"></span><span class="icon active"></span><span class="icon active"></span></div>
<div class='name'>안**</div>
</div>
<div class='review-row review-info'>
<span>10 대</span>
<span>&nbsp;•&nbsp;</span>
<span>부모님과 떠나는 여행</span>
<span>&nbsp;•&nbsp;</span>
<time class='time' data-timestamp='1533983109.9552078' data-type='date'></time>
</div>
<div class='review-row'>
<p class='review-message'>힐튼 호텔에 묵었는데 배타는 곳까지 걸어서 5분 걸렸어요. 가까워서 좋았고 그래이트 베리어리프는 산호가 많이 죽어서 아쉬웠구요. 체험다이빙 했는데 무지 재미있고 신기했어요</p>
</div>
<div class='reply-box'>
<img alt='reply' class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/ic_reply@2x-32fb2336958b86fe4e23a067a426cc781b4bac2ecfac4467b565de3578b5f890.png' width='10px'>
<div class='review-row'>
<div class='name'>오키도키 케언즈 여행사</div>
</div>
<div class='review-row'>
<p class='review-message'>안녕하세요 안병주님 ^^ 
<br />
<br />소중한 후기 남겨 주셔서 감사드립니다!
<br />아름다운 호주 케언즈에서 즐거운 추억 많이 만드셨기를 바랄게요 ^^ 
<br />
<br />좋은 하루 보내세요!
<br />
<br />감사합니다.
<br />오키도키 케언즈 여행사 드림</p>
</div>
</div>
</div>
</div>
<div class='review-box'>
<div class='review-inner-container'>
<div class='review-row'>
<div class="rating-box"><span class="icon active"></span><span class="icon active"></span><span class="icon active"></span><span class="icon active"></span><span class="icon active"></span></div>
<div class='name'>김**</div>
</div>
<div class='review-row review-info'>
<span>20 대</span>
<span>&nbsp;•&nbsp;</span>
<span>배우자와 단 둘이 떠나는 여행</span>
<span>&nbsp;•&nbsp;</span>
<time class='time' data-timestamp='1533038394.791571' data-type='date'></time>
</div>
<div class='review-row'>
<p class='review-message'>좋아요</p>
</div>
<div class='reply-box'>
<img alt='reply' class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/new/ic_reply@2x-32fb2336958b86fe4e23a067a426cc781b4bac2ecfac4467b565de3578b5f890.png' width='10px'>
<div class='review-row'>
<div class='name'>오키도키 케언즈 여행사</div>
</div>
<div class='review-row'>
<p class='review-message'>안녕하세요 ^^ 
<br />
<br />오키도키 케언즈 여행사 입니다!
<br />케언즈에서 즐거운 여행 되셨길 바라며, 소중한 후기 감사드립니다 ^^ 
<br />
<br />오늘도 좋은 하루 보내세요!
<br />
<br />오키도키 케언즈 여행사 드림</p>
</div>
</div>
</div>
</div>


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
<script>
var disabledDays = [0, 6];

    
    function priceUpdate(){
        /* console.log($("#person-picker option:selected").val()); */
        $('#total-price').text($("#person-picker option:selected").val() * $('#person-price').text() );
        
        

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





</body>
</html>
