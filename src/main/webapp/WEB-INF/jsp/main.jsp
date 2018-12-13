<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta content='Content-type: text/html; charset=UTF-8' name='http-equiv'>
<meta content='IE=Edge,chrome=1' http-equiv='X-UA-Compatible'>
<meta
	content='width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<meta content='yes' name='apple-mobile-web-app-capable'>
<meta content='black' name='apple-mobile-web-app-status-bar-style'>
<title><spring:message code="site.title" text="환영합니다" /></title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f7CGV12ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
<script
	src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-58626b3385ab2502017698c1681214bc0e110444decd0120edf7b029d4258d62.css" />

<link rel="stylesheet" type="text/css" href="/resources/css/custom1.css">
<link rel="stylesheet" media="screen"
	href="/resources/css/application.70805c2d9368e709216b.css" />
<link rel="stylesheet" media="screen"
	href="/resources/css/application.89bde0a7d84a7bf87143.css">
	<link rel="stylesheet" media="screen"
	href="/resources/css/application.cac8b307dbe32bcdbd67.css">
<script src="/resources/js/application.70805c2d9368e709216b.js"></script>



<script src="/resources/js/vendor.70805c2d9368e709216b.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-b751bcff1f912d9f2d6eb3f5f25a09494364fee359047b3bcf9e161c4d714527.css" />
<![endif]-->
</head>
<body class='body' data-action='index'
	data-controller-path='kitty/experiences/main' data-controller='main'>


	<div class='global-alert-box'></div>

	<div id='mrt-header'></div>

	<div id="Header-react-component-b71c031f-0e79-40fc-972d-7a2f7d4f7889">
		<header
			class="mrt-component mrt-header mrt-header--transparent header--transparent">
			<nav class="mrt-gnb-header transparent">
				<div class="mrt-container gnb-container">


					<div class="mrt-logo-container gtm-gnb-logo">
						<a href="main"><img src="/resources/img/logo1.png"
							alt="리드미 로고"></a>
					</div>
					<div class="gnb-menu__container">
						<a data-turbolinks="false"> <img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAY1BMVEUAAABhYWGBgYFsbGxnZ2dhYWFlZWVhYWFiYmJiYmJlZWViYmJkZGRiYmJhYWFhYWFhYWFhYWFhYWFiYmJjY2NiYmJiYmJjY2NhYWFiYmJjY2NiYmJiYmJiYmJhYWFhYWFhYWEnKJQUAAAAIHRSTlMA9AMKE9wo6tOwGp1BOeTIwIVuSyGmUzKTi3ZkX1m4fYHowO0AAADkSURBVDjLhZPZDoMgEEVx3xfcrVr5/6/sHUJCzUB7H2Qy56hDAkKIRgp3oiqmpQ7U7ua9SkqslVJKOjnAiSIsUNycv9EeUBjjZRFrGpnz+/m74ZvPdjBrHE++P0fq9MgUs7ENKzMuzm3iHO2Fqg1FZQEzduKh8BmjxGPWnKdMlE4B7jc090aSUPv5oChB84t3LYzVzQ/wPkozn3HS+5EQZGQp5xfxmKrVaSzgObg2Am6MliMNjHbyc27g5OsTzjpuznoN1fgenyqJ2f9cc83gZk9854e+AtizM5e5OeEkPMGL//MBxc0ahK0WpxMAAAAASUVORK5CYII="
							alt="menu" class="gnb-menu__icon gnb-menu__icon--close btn-close">
							<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAApJJREFUaAXtVj9vGjEcPftADBESCwtDhjRKojJG2SqFD4DaCYYMkfgKfIHA12BPl9toP0BXhqwsTbmlZbmhoCtCQuEufr6zY66mQ5KeT4otGf+5n/F7z787P8exxSpgFbAKWAXesgJEQx5zomoeG5mK013Rij6fKmXgADhttVokDE/I0dFvHcHMknyGnhdEjvONVV4kCRUg6XQ6dDqdupPJ5Mp13eMoitTn+SDV7EIpjbfb7X2/378djUYggSpJiCUg4K7X6+u4oGWz2VwzsC6rUliaoucTQRAQxlQ+FMyK0irYJEbxDuA4CMv9qN1u347HX0m5XD5mJyUDzZJACkXfLy8/fGY4gFW8C09HAQIsc5xut0tnsxk/meVyKU7IGP5KpcJzvV6vR6zGnuftJQCQXHEQGQ6HBVE/0W4wGKAD8JwQBig6kLq5JNr87w5483AsAn0KQRc1jdS+Kc3+yn0BJAsO4/TL02HdgJyfn2RjxNr/3t7dNdKcH2AvQUK0fH8VHPq4C2gQ1Onh4R+yWCw4GXYDqnF8YV4/1WqVf/PxGVX8kLwHVBzcSvi+f8Y80H3R3AQwMadwygBrrQQnAivRaDQ+EkLeqcyK0AemWq32KYtl56bFTTefz8dM/R/ZQNNjYPL9X19SHOm74TjCC/H5ZrMZ93o9HNX71WpFHx4ujOX+k2A/nVKpEh8cBLASyH0JHjEqQN6HjYAfQjohIAxDNQZTuRX2Akuwig/a+xUCMAVsspbxMeaLEvtzwxAosP5xAjpld1bqAnKYS5TMYSO7xXMU2Jci6rzaf84er7EGaaRNpSw4jK0Xeg3JxX9YLySUMN1aL2TuBKwXsl7opdmnvcBe+qd2vVXAKmAVsApwBR4BFCTqVJ88d1YAAAAASUVORK5CYII="
							alt="menu" class="gnb-menu__icon gnb-menu__icon--menu show">
						</a>
					</div>
					<div class="gnb-common-menu__container">
						<ul class="gnb-common-menu__list">
							<li
								class="gnb-common-menu__item gtm-gnb-becomeguide-before-login hidden-tablet-down">
								<select class="form-control" onchange="changeLang(this.value);">
									<option value="" selected disabled>language</option>
									<option value="ko">한국어</option>
									<option value="en">ENGLISH</option>
							</select>
							</li>
							<c:choose>
								<c:when test="${sessionScope.memberInfo.email eq null}">
									<li
										class="gnb-common-menu__item gtm-gnb-becomeguide-before-login hidden-tablet-down">
										<a href="#" class="gnb-common-menu__item__link"> <span
											class="gnb-common-menu__item--text transparent"><spring:message
													code="site.reg.guide" text="가이드 등록하기" /></span>
									</a>
									</li>
									<li
										class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
										<a href="#" class="gnb-common-menu__item__link"
										onclick="event.preventDefault(); location.href='auth/login'">
											<span class="gnb-common-menu__item--text transparent"><spring:message
													code="site.signin" text="로그인" /></span>
									</a>
									</li>
									<li
										class="gnb-common-menu__item gtm-gnb-signup hidden-tablet-down">
										<a href="#" class="gnb-common-menu__item__link"
										onclick="event.preventDefault(); location.href='auth/signup'">
											<button class="mrt-button white"
												style="font-size: 14px; font-weight: 700; height: 40px; line-height: 38px; width: 114px;">
												<span class="btn-label"><spring:message
														code="site.signup" text="회원가입" /></span>
											</button>
									</a>
									</li>
								</c:when>
								<c:otherwise>
									<li
										class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
										<a href="#" class="gnb-common-menu__item__link"
										onclick="event.preventDefault(); location.href='/app/mypage/myInfo'">>
											<span class="gnb-common-menu__item--text transparent">마이페이지</span>
									</a>
									</li>
									<li
                                        class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
                                        <a href="#" class="gnb-common-menu__item__link"
                                        onclick="event.preventDefault(); location.href='auth/logout'">>
                                            <span class="gnb-common-menu__item--text transparent">로그아웃</span>
                                    </a>
                                    </li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					<div class="mrt-notify-popup">
						<div class="mrt-notify-popup--arrow"></div>
						<div class="mrt-notify__content">
							<div class="mrt-notify__content--heading">
								<span>알림 센터</span> <img class="close-noti show-on-tablet"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAYFBMVEUAAABhYWFlZWVra2thYWFhYWFkZGRiYmJkZGRkZGRycnJiYmJiYmJhYWFiYmJiYmJiYmJjY2NjY2NhYWFhYWFhYWFhYWFiYmJiYmJiYmJiYmJkZGRubm5jY2NhYWFhYWFgDpVSAAAAH3RSTlMA+xcN9NsfqUAoBeTTybSdj0w47um/hV1vZVUwCHZ9ag0QdwAAAQJJREFUWMPtlcuSgjAQRZuEyMMHDwVEx+n//8u52VCjLWXTVe5yliHnJCRVQIlEIvFF+pHe4xun8cuc2/f+wEFTaJh5JMnPgAeTIlAXmPgr/ROGr6ShjlMfikGBWExuS1sYXgvRH0mPj4X52W9pC/74/8gb4esK2ST8rYUbgRZ+Q9txBxS6xTcXRvgF2XABBbsPdoHBqSYzcf9ZafevHMl7qz/DPu6Zz73dH3x1QeFu8acM63uipWDzwf3MfKm2+jf4B/jWQhd9t3ync+b9zuJbCyX84J5GUAiKgpgtmlpf7rfTFOT7ynP5TAG/WrvZWfVfWblzFB6koV497YoSiURinT93GBjpyu+H5QAAAABJRU5ErkJggg=="
									alt="close_notify">
							</div>
							<div class="mrt-notify__content--body">
								<ul class="notify-list">
									<li class="notify-list__item--empty"><image
											class="empty-icon"
											src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEQAAABKCAMAAAA1xwLwAAAAZlBMVEUAAADg4ODi4uLm5ub5+fnh4eHh4eHi4uLk5OTh4eHh4eHh4eHi4uLh4eHi4uLh4eHh4eHh4eHh4eHh4eHj4+Pl5eXh4eHh4eHh4eHh4eHg4ODi4uLh4eHh4eHi4uLn5+fh4eHg4OBbR+cJAAAAIXRSTlMAnVURBsFtMx2rpIJe4Xrq29CVdEIm+O/XoY05ybVLGGcciDnlAAABTUlEQVRYw+3WW26DMBAF0EkwYAhvKAmQ193/JtuPSFFSQ3yxP1qJs4Arz3g0tixQ8b5t0nQosi6QNVQ31j2e8jRjg/ShxG/JREQEDWaEsVjKjpjXKKtmNFhUa4uMEB8cY5sM55QEFsqbLIlgJZQFXz3stDIvhKVey5wO1nYy5wJrfSBmGoSIuBr6gi5gzNRzBONqHhJQCjG5gpISfSU7W4BSi8kBlOrPhJwceuI3pPZxxWcxufuYkwyUi5jsQUmI5UguyAmU0ccqOBArlnx6AlAiHyF33ydxb6z/YWtAKcVAleB0RDVMPaoCa5J3A2j57W1GEqyQx/J0K0qsMzxisvEMB/kQaRE4228hW8gW8v9DKriKjd9X/i+q2p1ZjhfnndmoZUGKF5ms0b5XTpj5JeSyTmqohhZUhoeXpms8pEpWU9EJP8KruNFTHMgn36/DqLw81+59AAAAAElFTkSuQmCC"
											width="32px">
										<div class="empty-text">
											새로운 알림이 없습니다.<br> 리드미와 즐거운 여행을 계획해보세요!
										</div></li>

								</ul>
							</div>
						</div>

					</div>
					<div class="gnb-modal show-on-tablet">
						<div class="mrt-modal-container">
							<div class="mrt-modal-background"></div>
							<div class="mrt-modal-body">
								<div class="gnb-menu__list__container">
									<ul class="gnb-menu__list">
										<li class="gnb-menu__list__item gtm-lnb-howtouse undefined">
											<a id class="gnb-menu__list__item__link" href="#"
											data-turbolinks="false">이용방법</a>
										</li>
										<li
											class="gnb-menu__list__item gtm-gnb-becomeguide-before-login undefined">
											<a id class="gnb-menu__list__item__link" href="#"
											data-turbolinks="false">가이드 등록하기</a>
										</li>
									</ul>
									<ul class="gnb-menu__list gnb-menu__bottom">
										<li class="gnb-menu__list__item">
											<div class="gnb-menu__button gtm-gnb-signin">
												<a data-turbolinks="false">
													<button class="mrt-button outline" style="font-size: 16px;">
														<soan class="btn-label">로그인</soan>
													</button>
												</a>
											</div>
											<div class="gnb-menu__button gtm-gnb-signup">
												<a data-turbolinks="false">
													<button class="mrt-button primary" style="font-size: 16px;">
														<soan class="btn-label">회원가입</soan>
													</button>
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</nav>

			<!-- 카테고리 nav 
  <div class="lnb-container transparent">
      <nav class="mrt-container">
          <ul class="lnb-menu">
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">ALL</a>
              </li>
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">식도락</a>
              </li>
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">명소/역사</a>
              </li>
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">문화 체험</a>
              </li>
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">액티비티</a>
              </li>
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">쇼핑</a>
              </li>
              <li class="lnb-menu__item gtm-lnb-home">
                <a href="#" class="lnb-menu__item--link transparent" id="home-link" data-turbolinks="false">친목</a>
              </li>
          </ul>
      </nav>
  </div>
  -->
		</header>

		<aside class="Drawer Drawer--appear ">
			<ul class="Drawer__section Drawer__section--no-top-spacing">
				<li class="Drawer__logo">
					<div class="Logo mrt-logo-container gtm-gnb-logo">
						<a class="" href="/" data-turbolinks="false"><img
							class="mrt-logo-img" src="/resources/img/logo.png" alt="logo"></a>
					</div>
				</li>
				<c:choose>
					<c:when test="${sessionScope.memberInfo.email eq null}">
						<li
							class="DrawerItem  DrawerItem--bottom-spacing-8 gtm-gnb-signin"><a
							class="DrawerItem__button DrawerItem__button--normal"
							href="/users/sign_in" data-turbolinks="false">로그인</a></li>
						<li class="DrawerItem  gtm-gnb-signup"><a
							class="DrawerItem__button DrawerItem__button--outline"
							href="/users/sign_up" data-turbolinks="false">회원가입</a></li>
			</ul>
			<div class="Drawer__section Drawer__section--no-border">
				<li
					class="DrawerItem  DrawerItem--bottom-spacing-20 gtm-gnb-becomeguide-before-login">
					<a class="DrawerItem__link" href="/about/becomeguide"
					data-turbolinks="false">가이드 등록하기</a>
				</li>

				</c:when>
				<c:otherwise>
					<li class="DrawerItem  DrawerItem--bottom-spacing-8 gtm-gnb-signin"><a
						class="DrawerItem__button DrawerItem__button--normal"
						href="/users/sign_in" data-turbolinks="false">로그아웃</a></li>
					<div class="Drawer__section Drawer__section--no-border">
				</c:otherwise>
				</c:choose>

				<li class="DrawerItem  gtm-lnb-howtouse"><a
					class="DrawerItem__link" href="/about/howitworks"
					data-turbolinks="false">이용 방법</a></li>
			</div>
		</aside>

	</div>


	<main class='vertical-main'>
	<div class='main__header main__header--experience'>
		<div class='main__header__container'>
			<div class='carousel slide carousel-fade' data-pause='false'
				data-ride='carousel'>
				<div class='carousel-inner' role='listbox'>
					<div class='active carousel-item item'>
						<div class='bg-img hide-on-mobile'
							style='background-image: url(/resources/img/screen1.jpg)'></div>
						<div class='bg-img show-on-mobile'
							style='background-image: url(/resources/img/screen1_mobile.jpg)'></div>
					</div>
					<div class='item carousel-item'>
						<div class='bg-img hide-on-mobile'
							style='background-image: url(/resources/img/screen2.jpeg)'></div>
						<div class='bg-img show-on-mobile'
							style='background-image: url(/resources/img/screen2_mobile.jpg)'></div>
					</div>
					<div class='item carousel-item'>
						<div class='bg-img hide-on-mobile'
							style='background-image: url(/resources/img/screen3.jpg)'></div>
						<div class='bg-img show-on-mobile'
							style='background-image: url(/resources/img/screen3_mobile.jpg)'></div>
					</div>
				</div>
			</div>
			<div class='main__header__text'>
				<spring:message code="site.welcome1" text="" />
				<br />
				<spring:message code="site.welcome2" text="" />
				<br />
			</div>
			<div class='main__header__search'>
				<div class='search__wrapper'>
					<img id='searchBtn' class='search__icon'
						src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/gnb/experience/ic-search-md-gray-500-6a187a261605c7d19ed2208391ae26f29e387b7f26a9b86b32dd5e1fd1a48561.svg'
						width='22'>
					<!--<input class='search__input' data-home-search placeholder='여행 또는 테마를 검색해보세요.' type='text'>-->
					<input id='searchWord' class='search__input' data-home-search
						placeholder='궁궐 밤산책. 덕수궁의 밤을 걸어요.' type='text'>
				</div>
			</div>



			<div class="lnb-container transparent">
				<nav class="mrt-container2">
					<ul class="lnb-menu" style="text-align: center;">
						<li class="lnb-menu__item gtm-lnb-home" style="padding-left: 5%;padding-right: 5%;"><a
							href="/app/tour/list" class="lnb-menu__item--link transparent"
							id="home-link1" data-turbolinks="false"><spring:message
									code="site.cate0" text="전체" /></a></li>
						<li class="lnb-menu__item gtm-lnb-home" style="padding-left: 5%;padding-right: 5%;"><a
							href="/app/tour/list/10" class="lnb-menu__item--link transparent"
							id="home-link2" data-turbolinks="false"><spring:message
									code="site.cate1" text="식도락" /></a>
							<%-- <ul class="sub-menu__item-contain">
								<li><a href="#"><spring:message code="site.cate1-1"
											text="전통음식" /></a></li>
								<li><a href="#"><spring:message code="site.cate1-2"
											text="고급식당" /></a></li>
								<li><a href="#"><spring:message code="site.cate1-3"
											text="일반식당" /></a></li>
								<li><a href="#"><spring:message code="site.cate1-4"
											text="채식" /></a></li>

							</ul> --%></li>
						<li class="lnb-menu__item gtm-lnb-home" style="padding-left: 5%;padding-right: 5%;"><a
							href="/app/tour/list/20" class="lnb-menu__item--link transparent"
							id="home-link3" data-turbolinks="false"><spring:message
									code="site.cate2" text="역사/문화" /></a>
							<%-- <ul class="sub-menu__item-contain">
								<li><a href="#"><spring:message code="site.cate2-1"
											text="고궁" /></a></li>
								<li><a href="#"><spring:message code="site.cate2-2"
											text="박물관" /></a></li>
								<li><a href="#"><spring:message code="site.cate2-3"
											text="유적지" /></a></li>
								<li><a href="#"><spring:message code="site.cate2-4"
											text="민속마을" /></a></li>
							</ul> --%></li>
						<li class="lnb-menu__item gtm-lnb-home" style="padding-left: 5%;padding-right: 5%;"><a
							href="/app/tour/list/30" class="lnb-menu__item--link transparent"
							id="home-link4" data-turbolinks="false"><spring:message
									code="site.cate3" text="명소" /></a>
							<%-- <ul class="sub-menu__item-contain">
								<li><a href="#"><spring:message code="site.cate3-1"
											text="랜드마크" /></a></li>
								<li><a href="#"><spring:message code="site.cate3-2"
											text="자연" /></a></li>
								<li><a href="#"><spring:message code="site.cate3-3"
											text="테마거리" /></a></li>
							</ul> --%></li>
						<li class="lnb-menu__item gtm-lnb-home" style="padding-left: 5%;padding-right: 5%;"><a
							href="/app/tour/list/40" class="lnb-menu__item--link transparent"
							id="home-link5" data-turbolinks="false"><spring:message
									code="site.cate4" text="액티비티" /></a>
							<%-- <ul class="sub-menu__item-contain">
								<li><a href="#"><spring:message code="site.cate4-1"
											text="문화체험" /></a></li>
								<li><a href="#"><spring:message code="site.cate4-2"
											text="스포츠" /></a></li>
								<li><a href="#"><spring:message code="site.cate4-3"
											text="트래킹" /></a></li>
								<li><a href="#"><spring:message code="site.cate4-4"
											text="힐링" /></a></li>
								<li><a href="#"><spring:message code="site.cate4-5"
											text="나이트라이프" /></a></li>
							</ul> --%></li>
						<li class="lnb-menu__item gtm-lnb-home" style="padding-left: 5%;padding-right: 5%;"><a
							href="/app/tour/list/50" class="lnb-menu__item--link transparent"
							id="home-link6" data-turbolinks="false"><spring:message
									code="site.cate5" text="쇼핑" /></a></li>
					</ul>
				</nav>
			</div>
			<!--nav theme -->

		</div>
	</div>


	<div class='main-common__row'>
		<div class='experience__common__row'>
			<div class='main-content'>
				<div class='main-content__title-container'>
					<h3 class='main-content__title'>
						<spring:message code="site.rank1" text="인기 가이드투어" />
					</h3>
				</div>
			</div>
		</div>
		
		<div class='experience__common__row experience__common__row-whole'>
			<div class='main-content'>
				<div
					class='offer-container card-type card-hot-deal swiper-container'
					name='offer_card'>
					<ul
						class='item-container offer-item-container item-container--swiper swiper-wrapper'>


						<!-- single item start -->
						<c:forEach items="${tourList}" var="list">
							<li class='card-type-a item swiper-slide'
								data-gtm-action='인기 가이드투어 ' data-gtm-category='투어&amp;티켓_홈'
								data-gtm-label='42416' data-offer-id='42416'
								data-offer-type='Tour'>
								<div class='card-cover'>
									<a class='offer-link' href='tour/detail/${list.tno}'>
										<div class='img-container'>
											<div class='img-placeholder'>
												<img class='img-small' src='/resources/img/${list.pri_phot}'>
												<div class='img-padding'></div>
												<img class='img' data-echo='/resources/img/${list.pri_phot}'>
											</div>
										</div>
										<div class='content-box'>
											<div class='city-name'>${list.loc}</div>
											<div class='name'>${list.titl}</div>
											<div class='inner-container'>
												<div class='review'>
													<div class="rating-box">
														<c:forEach var="i" begin="1" end="5">
															<c:choose>
																<c:when test="${i <= list.star}">
																	<span class="icon active"></span>
																</c:when>
																<c:otherwise>
																	<span class="icon"></span>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</div>
													<div class='text'>
														<spring:message code="tour.review" text="후기" />
														<span> ${list.cmt_cnt}</span>
														<spring:message code="tour.cnt" text="" />
													</div>
												</div>
												<div class='price' data-offer-price='90,000원'
													itemprop='offers' itemscope='true'
													itemtype='http://schema.org/Offer'>
													<span><fmt:formatNumber value='${list.amt}'
															groupingUsed='true' /></span>
													<spring:message code="tour.won" text="원" />
													<span class='unit'> <spring:message code="tour.per"
															text="/ 1인" /></span>
													<meta content='KRW' itemprop='priceCurrency'>
													<meta content='90000' itemprop='price'>
												</div>
											</div>
										</div>
									</a>
								</div>
							</li>
							<!-- item end -->
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class='main-common__row'>
		<div class='experience__common__row'>
			<div class='main-content'>
				<div class='main-content__title-container'>
					<h3 class='main-content__title' id='theme-title'>
						<spring:message code="site.cate1" text="식도락" />
						BEST
					</h3>
				</div>
			</div>
		</div>
		<div class='experience__common__row experience__common__row-whole'>
			<div class='main-content'>
				<div
					class='offer-container card-type card-hot-deal swiper-container'
					name='offer_card'>
					<ul
						class='item-container offer-item-container item-container--swiper swiper-wrapper'
						id='theme-item-container'>




						<c:forEach items="${themeList}" var="list">
							<li class='card-type-a item swiper-slide'
								data-gtm-action='인기 티켓/교통패스' data-gtm-category='투어&amp;티켓_홈'
								data-gtm-label='5683' data-offer-id='5683'
								data-offer-type='ETicket'>
								<div class='card-cover'>
									<a class='offer-link' href='tour/detail/${list.tno}'>
										<div class='img-container'>
											<div class='img-placeholder'>
												<img class='img-small' src='/resources/img/${list.pri_phot}'>
												<div class='img-padding'></div>
												<img class='img' data-echo='/resources/img/${list.pri_phot}'>
											</div>
										</div>
										<div class='content-box'>
											<div class='city-name'>${list.loc}</div>
											<div class='name'>${list.titl}</div>
											<div class='inner-container'>
												<div class='review'>
													<div class="rating-box">
														<c:forEach var="i" begin="1" end="5">
															<c:choose>
																<c:when test="${i <= list.star}">
																	<span class="icon active"></span>
																</c:when>
																<c:otherwise>
																	<span class="icon"></span>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</div>
													<div class='text'>
														<spring:message code="tour.review" text="후기" />
														<span> ${list.cmt_cnt}</span>
														<spring:message code="tour.cnt" text="" />
													</div>
												</div>
												<div class='price' data-offer-price='53,600원'
													itemprop='offers' itemscope='true'
													itemtype='http://schema.org/Offer'>
													<span><fmt:formatNumber value='${list.amt}'
															groupingUsed='true' /></span>
													<spring:message code="tour.won" text="원" />
													<span class='unit'> <spring:message code="tour.per"
															text="/ 1인" /></span>
												</div>
											</div>
										</div>
									</a>
								</div>
							</li>
						</c:forEach>

						<!-- one item end -->





					</ul>
				</div>
			</div>
		</div>
	</div>




	<div class='experience__common__row' style="margin-top: 30px">
		<div class='experience__summary'>
			<div class='summary__item'>
				<img alt='experience-product' class='summary__image'
					src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-tnt-feature-products-599e6e539e3d533485af3529599282548c372498a0541251788f61aaab466b38.svg'>
				<div class='summary__content'>
					<div class='summary__content__title'>
						<spring:message code="site.intro1" text="현지인이 알려주는 동네 투어" />
					</div>
					<div class='summary__content__desc'>
						<spring:message code="site.intro1-1" text="누구나 가이드가 될 수 있습니다!" />
					</div>
				</div>
			</div>

			<div class='summary__item'>
				<img alt='experience-product' class='summary__image'
					src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-tnt-feature-reviews-2f0586217b23a1a2b518cb59daec89b8dcad44d8881de8a7031545202dcc3306.svg'>
				<div class='summary__content'>
					<div class='summary__content__title'>
						<spring:message code="site.intro2" text="최신 여행 후기" />
					</div>
					<div class='summary__content__desc'>
						<spring:message code="site.intro2-1" text="직접 다녀온 여행자가 남긴 후기" />
					</div>
				</div>
			</div>

			<div class='summary__item'>
				<img alt='experience-product' class='summary__image'
					src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-tnt-feature-chat-22a5811f342cae4a8ff09372fcc21219e42de4f68339d8cb9f87dee0f151c61b.svg'>
				<div class='summary__content'>
					<div class='summary__content__title'>
						<spring:message code="site.intro3" text="1:1 가이드 문의" />
					</div>
					<div class='summary__content__desc'>
						<spring:message code="site.intro2" text="현지 가이드에게 직접 문의하기" />
					</div>
				</div>
			</div>

		</div>
	</div>







	<div class='main-common__row'>
		<div class='experience__common__row'>
			<div class='main-content'>
				<div class='main-content__title-container'>

					<h3 class='main-content__title'>
						<spring:message code="site.rank2" text="우리동네" />
						BEST
					</h3>
				</div>
			</div>
		</div>




		<div class='experience__common__row experience__common__row-whole'>
			<div class='main-content'>
				<div class="area-best-view">


					<div class="map-wrap">
						<img src="/resources/img/map_korea.jpg" id="map-img" alt="대한민국 지도"
							usemap="#map" />
						<map name="map">
							<area shape="poly"
								coords="16,645,10,659,12,669,20,675,73,665,88,652,91,637,79,631,45,634"
								href="javascript:void(0);" alt="제주도" title="제주도" aria-label=""
								class="map-link map-link-17" areaType="10055" />
							<area shape="poly"
								coords="316,439,355,452,356,462,335,478,310,472,300,477,288,471,268,493,273,501,291,491,301,498,302,506,292,515,290,523,279,525,270,511,265,506,256,503,252,497,255,490,265,468"
								href="javascript:void(0);" alt="부산" title="부산" aria-label=""
								class="map-link map-link-16" areaType="10060" />
							<area shape="poly"
								coords="317,410,340,403,353,405,357,401,373,401,376,396,382,398,375,423,355,449,316,437,312,421"
								href="javascript:void(0);" alt="울산" title="울산" aria-label=""
								class="map-link  map-link-15" areaType="10062" />
							<area shape="poly"
								coords="166,455,178,446,177,429,169,415,180,407,175,392,189,383,192,375,203,372,214,386,230,387,233,392,232,405,243,410,273,404,284,411,305,406,314,410,309,421,313,437,262,466,249,495,253,503,246,501,234,503,221,488,194,499,193,492,179,470,167,463"
								href="javascript:void(0);" alt="경남" title="경남" aria-label="400"
								class="map-link  map-link-14" areaType="10054" />
							<area shape="poly"
								coords="63,461,58,480,67,487,91,488,106,477,106,466,93,459"
								href="javascript:void(0);" alt="광주" title="광주" aria-label="150"
								class="map-link map-link-13" areaType="10061" />
							<area shape="poly"
								coords="33,450,31,459,38,475,29,475,25,468,20,474,31,483,33,490,21,494,34,501,35,512,52,511,40,518,44,529,39,534,25,526,18,529,27,549,49,548,51,553,40,559,46,578,72,565,77,551,80,556,76,572,89,566,93,559,103,555,104,543,114,540,115,533,126,534,136,527,138,532,125,542,126,554,139,559,154,546,156,535,152,518,164,507,166,516,175,533,189,525,186,505,191,501,190,493,176,473,164,463,163,454,157,450,138,459,130,455,116,454,105,439,87,441,80,434,79,460,94,456,108,466,107,478,91,490,65,488,55,480,62,458,77,456,77,434,56,452,48,451,45,457"
								href="javascript:void(0);" alt="전남" title="전남" aria-label="0"
								class="map-link map-link-12" areaType="10052" />
							<area shape="poly"
								coords="63,358,102,340,114,346,123,343,129,349,137,348,139,355,152,361,170,362,181,353,202,354,203,368,190,372,186,380,170,390,175,407,166,414,174,430,175,443,164,452,159,446,138,453,132,451,119,451,108,435,102,435,89,437,79,429,54,449,47,447,43,453,35,448,49,419,58,417,65,411,59,404,50,401,64,387,76,387,80,367"
								href="javascript:void(0);" alt="전북" title="전북" aria-label="20"
								class="map-link map-link-11" areaType="10051" />
							<area shape="poly"
								coords="267,376,292,362,306,384,289,407,273,400"
								href="javascript:void(0);" alt="대구" title="대구" aria-label="220"
								class="map-link map-link-10" areaType="10059" />
							<area shape="poly"
								coords="369,190,362,190,347,210,339,206,325,213,315,212,312,218,299,217,296,211,289,212,285,216,277,218,259,247,236,245,202,268,200,282,204,290,204,308,217,318,222,333,207,353,205,369,217,382,232,384,236,391,234,404,242,407,270,402,263,374,278,362,293,357,310,384,294,406,305,404,317,406,339,400,350,402,356,398,371,397,376,393,382,394,386,386,385,358,393,345,379,350,372,346,371,306,376,282,373,265,381,256,372,232"
								href="javascript:void(0);" alt="경북" title="경북" aria-label="200"
								class="map-link map-link-9" areaType="10053" />
							<area shape="poly"
								coords="150,294,166,295,174,290,189,300,194,312,182,329,174,326,171,309"
								href="javascript:void(0);" alt="대전" title="대전" aria-label="22"
								class="map-link map-link-8" areaType="10058" />
							<area shape="poly"
								coords="148,252,140,268,142,283,148,292,166,293,180,283,181,274,182,261,180,254,168,252"
								href="javascript:void(0);" alt="세종" title="세종" aria-label="600"
								class="map-link map-link-7" areaType="10063" />
							<area shape="poly"
								coords="174,329,176,345,184,350,204,351,218,332,214,319,201,311,201,291,196,285,198,274,198,267,234,242,258,242,276,215,269,208,253,210,253,207,242,205,233,195,192,195,184,187,157,216,152,214,137,230,147,245,150,250,184,252,183,281,176,289,189,298,197,314,184,332"
								href="javascript:void(0);" alt="충북" title="충북" aria-label="200"
								class="map-link map-link-6" areaType="10049" />
							<area shape="poly"
								coords="94,231,135,233,146,247,146,253,138,268,141,285,148,296,170,312,174,346,178,350,168,359,152,358,141,353,139,344,130,345,126,340,114,343,102,337,70,350,69,343,54,327,51,320,54,313,54,306,48,300,53,295,46,279,47,267,42,262,29,264,26,254,16,258,10,246,16,232,32,235,39,230,37,219,41,216,64,220,85,238"
								href="javascript:void(0);" alt="충남" title="충남" aria-label="123"
								class="map-link map-link-5" areaType="10050" />
							<area shape="poly"
								coords="254,3,243,32,138,47,125,52,151,75,152,82,165,92,167,129,176,135,183,135,188,139,188,147,184,155,184,166,186,171,186,187,194,194,201,193,234,193,244,204,253,204,255,208,270,206,276,213,284,214,288,209,297,208,302,215,310,215,311,209,326,209,334,204,340,204,346,207,357,196,362,187,368,188,257,1"
								href="javascript:void(0);" alt="강원도" title="강원도" aria-label="21"
								class="map-link map-link-4" areaType="10056" />
							<area shape="poly"
								coords="119,110,103,131,115,147,124,144,130,139,130,130,139,124,135,118,139,111"
								href="javascript:void(0);" alt="서울" title="서울" aria-label="96"
								class="map-link map-link-3" areaType="10047" />
							<area shape="poly"
								coords="62,93,76,106,86,130,84,138,76,143,70,151,75,168,88,178,87,183,74,185,76,208,86,220,95,229,134,231,152,213,157,214,184,186,184,171,182,164,182,153,186,146,186,140,181,136,176,137,165,129,163,93,150,83,148,75,124,54,113,53,102,60,103,65,83,85,68,87"
								href="javascript:void(0);" alt="경기도" title="경기도"
								aria-label="115" class="map-link map-link-2" areaType="10048" />
							<area shape="poly"
								coords="60,93,52,106,37,110,27,119,42,131,61,135,68,152,77,138,82,137,84,130,74,106"
								href="javascript:void(0);" alt="인천" title="인천" aria-label="22"
								class="map-link map-link-1" areaType="10057" />
						</map>
					</div>
					<!--// .map-area -->
					<a class='link-container theme-margin-top hidden-tablet-down'
						href='/themes'>
						<div class='text'>
							<spring:message code="site.rank2.more" text="우리동네 여행 전체보기" />
						</div> <img alt='go link' class='icon'
						src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/main/ic_arrow_medium_gray@2x-9d76b3043fad7aff12f7edf4dab8bf4b320fe92e598c476c4708d7a657679751.png'
						width='7px'>
					</a>



					<div class="OfferList__Items__Body ">

						<div class="OfferList__Cards">

							<c:forEach items="${localList}" var="list">
								<a class="OfferListCard" href="tour/detail/${list.tno}"
									itemprop="itemListElement" itemscope=""
									itemtype="http://schema.org/Product" data-offer-type="HotDeal"
									data-offer-id="30629">

									<div class="OfferListCard__Thumbnail"
										style="background-image: url(&quot;/resources/img/${list.pri_phot}&quot;);"></div>
									<div class="OfferListCard__Content">
										<div class="OfferListCard__Content__Category">
											<span class="city-name">${list.loc}</span><span
												class="hide-on-mobile"></span>
										</div>
										<div class="OfferListCard__Content__Title">
											<div class="LinesEllipsis  ">${list.titl}<wbr>
											</div>
										</div>
										<div class="OfferListCard__Content__Review">
											<div class="starRating starRating--m starRating--blue">
												<c:forEach var="i" begin="1" end="5">
													<c:choose>
														<c:when test="${i <= list.star}">
															<svg xmlns="http://www.w3.org/2000/svg" width="12"
																height="12" viewBox="0 0 12 12">
	                <path class="starColor" fill="#51ABF3"
																	fill-rule="evenodd"
																	d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
	            </svg>
														</c:when>
														<c:otherwise>
															<svg xmlns="http://www.w3.org/2000/svg" width="12"
																height="12" viewBox="0 0 12 12">
	                <path fill='#DEE2E6'
																	d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'></path>
	            </svg>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
											<span class="count">${list.cmt_cnt}</span>
										</div>
										<div class="OfferListCard__Content__Price">
											<span class="SalePrice"><fmt:formatNumber
													value='${list.amt}' groupingUsed='true' /><span> <spring:message
														code="tour.won" text="원" /></span></span>
										</div>
									</div>
								</a>
								<!-- single Item end -->
							</c:forEach>

						</div>
					</div>
					<!-- OfferList__Items__Body end -->


				</div>
			</div>
		</div>
	</main>

	<!-- 푸터 -->
	<c:choose>
		<c:when test="${lang == 'en'}">
			<jsp:include page="footerEng.jsp" />
		</c:when>
		<c:otherwise>
			<jsp:include page="footer.jsp" />
		</c:otherwise>
	</c:choose>
	<!-- 푸터 끝 -->

	<div id='popup-mask'></div>
	<div id='gnb-popup-mask'></div>

	<!--  공통 스크립트 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="/resources/js/util.js"></script>
	<script
		src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>

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
	<script src="/resources/js/custom.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script
		src="/resources/js/application-86de1be31d401529a297febaf961a82ebf2ba60f6dd1f2b9c4b833b5753dcb7f.js"></script>

	<script>


function changeLang(lang){
    window.location.href='main?lang='+lang;
}
</script>

	<script>
$(document).ready(function(){
    $('#searchBtn').on('click', function(){
        console.log($('#searchWord').val()); 
        var word = {
          'searchWord' : $('#searchWord').val()
        }
        
        location.href = '/app/search/'+$('#searchWord').val();
        
        /* $.ajax({
            url:'/app/search/search.do',
            type:'POST',
            dataType:'JSON',
            data:JSON.stringify(word),
            contentType:"application/json",
            success:function(data){
                console.log(word);
            },
            error:function(){
                console.log('실패');
            }
        
        });  */
        
    });
});
</script>
</body>
</html>
