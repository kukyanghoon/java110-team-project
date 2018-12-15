<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>LEADME :: 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-58626b3385ab2502017698c1681214bc0e110444decd0120edf7b029d4258d62.css" />
<link rel="stylesheet" media="screen" href="/resources/css/application.cac8b307dbe32bcdbd67.css" />
<link rel="stylesheet" media="screen" href="/resources/css/application.89bde0a7d84a7bf87143.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/hyun.css">
<script src="/resources/js/application.cac8b307dbe32bcdbd67.js"></script>
<!-- <script src="/resources/js/application-86de1be31d401529a297febaf961a82ebf2ba60f6dd1f2b9c4b833b5753dcb7f.js"></script> -->



<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-b751bcff1f912d9f2d6eb3f5f25a09494364fee359047b3bcf9e161c4d714527.css" />
<![endif]-->
<!-- <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-ce3fc3507853263820d2d1429b62056a0198477b4727cfb36e1facadea05fbcd.js"></script> -->
<style>
.gnb-common-menu__container .gnb-common-menu__list .gnb-common-menu__item .gnb-common-menu__item__link .gnb-common-menu__item--text.transparent{
  color: black;
}

.lnb-menu .lnb-menu__item .lnb-menu__item--link.transparent{
  color: black;
}

.lnb-container.transparent{
  border-bottom: 1px solid #e9ecef;
}

.main__header.main__header--experience{
  height: 300px;
}
.main__header .main__header__search{
  top: 150px;
}
.mrt-button{
  background-color: #51abf3;
  color: #fff;
}

.vertical-main{
    padding-bottom: 0;
}
</style>
</head>
<body class='body' data-action='index' data-controller-path='kitty/experiences/main' data-controller='main'>

<div class='global-alert-box'>
</div>
      
      <div id='mrt-header'></div>
      <div id="Header-react-component-b71c031f-0e79-40fc-972d-7a2f7d4f7889">
      <header class="mrt-component mrt-header mrt-header--transparent header--transparent">
         <nav class="mrt-gnb-header transparent">
            <div class="mrt-container gnb-container">
               <div class="mrt-logo-container gtm-gnb-logo">
                  <a href="/app/main" onclick="event.preventDefault(); location.href='/app/main'"><img src="/resources/img/logo.png" alt="리드미 로고"></a>
               </div>
               <div class="gnb-menu__container">
                  <a data-turbolinks="false">
                  <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAY1BMVEUAAABhYWGBgYFsbGxnZ2dhYWFlZWVhYWFiYmJiYmJlZWViYmJkZGRiYmJhYWFhYWFhYWFhYWFhYWFiYmJjY2NiYmJiYmJjY2NhYWFiYmJjY2NiYmJiYmJiYmJhYWFhYWFhYWEnKJQUAAAAIHRSTlMA9AMKE9wo6tOwGp1BOeTIwIVuSyGmUzKTi3ZkX1m4fYHowO0AAADkSURBVDjLhZPZDoMgEEVx3xfcrVr5/6/sHUJCzUB7H2Qy56hDAkKIRgp3oiqmpQ7U7ua9SkqslVJKOjnAiSIsUNycv9EeUBjjZRFrGpnz+/m74ZvPdjBrHE++P0fq9MgUs7ENKzMuzm3iHO2Fqg1FZQEzduKh8BmjxGPWnKdMlE4B7jc090aSUPv5oChB84t3LYzVzQ/wPkozn3HS+5EQZGQp5xfxmKrVaSzgObg2Am6MliMNjHbyc27g5OsTzjpuznoN1fgenyqJ2f9cc83gZk9854e+AtizM5e5OeEkPMGL//MBxc0ahK0WpxMAAAAASUVORK5CYII=" alt="menu" class="gnb-menu__icon gnb-menu__icon--close btn-close">
                  <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAOBJREFUaAXt1jEOgjAUxvHvEcNF1Ls4OnsAEwddXRxdXHUwcVZnR++iXoSBSpkqnQgkQPx36gul7+svJFRiIIAAAggggEB3AlZt7Zyz1Wa7kGlafdZp7fQ6Hw93M3NhjlFY+LkPn8td9bOsuqqbusjmG9/C7klYDHE++E9oiOhkRgABBBBoTyD6kS3Xu7GUPSU3aa9NGzvZW0pnl9P+E+4WXyWSbN6/8D5yAVpmC+NL8QHy9CH50/ZtFJnKbH3LRR4EEEAAAQQaCHAXaoBX81XuQjXBWI4AAggggAACfyDwBcPlP04v6vDBAAAAAElFTkSuQmCC" alt="menu" class="gnb-menu__icon gnb-menu__icon--menu show">
                  </a>
               </div>
                   <%--   아이디 : ${memberInfo.email } --%>
               <div class="gnb-common-menu__container">
                  <ul class="gnb-common-menu__list">
                     <c:choose>
                        <c:when test="${sessionScope.memberInfo.email eq null}">
                            <li class="gnb-common-menu__item gtm-gnb-becomeguide-before-login hidden-tablet-down">
                                <a href="/app/auth/guideSignup" onclick="event.preventDefault(); location.href='/app/auth/guideSignup'" class="gnb-common-menu__item__link">
                                <span class="gnb-common-menu__item--text transparent">가이드 등록하기</span>
                                </a>
                            </li>
                            <li class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
                                <a href="#" class="gnb-common-menu__item__link">
                                    <span class="gnb-common-menu__item--text transparent"><spring:message code="login.title" text="로그인" /></span>
                                </a>
                            </li>
                            <li class="gnb-common-menu__item gtm-gnb-signup hidden-tablet-down" style="padding-top:7px; padding-left:12px;">
                                <div class="ProfileNavItems__item gtm-gnb-signup" ><a class="ProfileNavItems__button ProfileNavItems__button--outline" href="/app/auth/signup" data-turbolinks="false" ><spring:message code="login.signup" text="회원가입" /></a>
                                </div>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${sessionScope.guideInfo eq null}"></c:when>
                                <c:otherwise>
                                    <li class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
                                        <a href="/app/enroll/page1" class="gnb-common-menu__item__link">
                                            <span class="gnb-common-menu__item--text transparent">여행 등록하기</span>
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        <li class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
                                <a href="/app/mypage/myInfo" class="gnb-common-menu__item__link">
                                    <span class="gnb-common-menu__item--text transparent"><spring:message code="header.mypage" text="마이페이지" /></span>
                                </a>
                            </li> 
                            <li class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
                                <a href="/app/auth/logout" class="gnb-common-menu__item__link" onclick="event.preventDefault(); location.href='/app/auth/logout'">
                                    <span class="gnb-common-menu__item--text transparent"><spring:message code="header.logout" text="로그아웃" /></span>
                                </a>
                            </li>   
                        </c:otherwise>
                    </c:choose>
                     <!-- <li class="gnb-common-menu__item gtm-gnb-signin hidden-tablet-down">
                        <a href="#" class="gnb-common-menu__item__link">
                        <span class="gnb-common-menu__item--text transparent">로그인</span>
                        </a>
                     </li>
                     <li class="gnb-common-menu__item gtm-gnb-signup hidden-tablet-down" style="padding-top:7px; padding-left:12px;">
                        <div class="ProfileNavItems__item gtm-gnb-signup" ><a class="ProfileNavItems__button ProfileNavItems__button--outline" href="/users/sign_up" data-turbolinks="false" >회원가입</a>
                        </div>
                     </li> -->
                  </ul>
               </div>
               
               <div class="mrt-notify-popup">
                  <div class="mrt-notify-popup--arrow"></div>
                  <div class="mrt-notify__content">
                     <div class="mrt-notify__content--heading">
                        <span>알림 센터</span>
                        <img class="close-noti show-on-tablet" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAYFBMVEUAAABhYWFlZWVra2thYWFhYWFkZGRiYmJkZGRkZGRycnJiYmJiYmJhYWFiYmJiYmJiYmJjY2NjY2NhYWFhYWFhYWFhYWFiYmJiYmJiYmJiYmJkZGRubm5jY2NhYWFhYWFgDpVSAAAAH3RSTlMA+xcN9NsfqUAoBeTTybSdj0w47um/hV1vZVUwCHZ9ag0QdwAAAQJJREFUWMPtlcuSgjAQRZuEyMMHDwVEx+n//8u52VCjLWXTVe5yliHnJCRVQIlEIvFF+pHe4xun8cuc2/f+wEFTaJh5JMnPgAeTIlAXmPgr/ROGr6ShjlMfikGBWExuS1sYXgvRH0mPj4X52W9pC/74/8gb4esK2ST8rYUbgRZ+Q9txBxS6xTcXRvgF2XABBbsPdoHBqSYzcf9ZafevHMl7qz/DPu6Zz73dH3x1QeFu8acM63uipWDzwf3MfKm2+jf4B/jWQhd9t3ync+b9zuJbCyX84J5GUAiKgpgtmlpf7rfTFOT7ynP5TAG/WrvZWfVfWblzFB6koV497YoSiURinT93GBjpyu+H5QAAAABJRU5ErkJggg==" alt="close_notify">
                     </div>
                     <div class="mrt-notify__content--body">
                        <ul class="notify-list">
                           <li class="notify-list__item--empty">
                              <image class="empty-icon" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEQAAABKCAMAAAA1xwLwAAAAZlBMVEUAAADg4ODi4uLm5ub5+fnh4eHh4eHi4uLk5OTh4eHh4eHh4eHi4uLh4eHi4uLh4eHh4eHh4eHh4eHh4eHj4+Pl5eXh4eHh4eHh4eHh4eHg4ODi4uLh4eHh4eHi4uLn5+fh4eHg4OBbR+cJAAAAIXRSTlMAnVURBsFtMx2rpIJe4Xrq29CVdEIm+O/XoY05ybVLGGcciDnlAAABTUlEQVRYw+3WW26DMBAF0EkwYAhvKAmQ193/JtuPSFFSQ3yxP1qJs4Arz3g0tixQ8b5t0nQosi6QNVQ31j2e8jRjg/ShxG/JREQEDWaEsVjKjpjXKKtmNFhUa4uMEB8cY5sM55QEFsqbLIlgJZQFXz3stDIvhKVey5wO1nYy5wJrfSBmGoSIuBr6gi5gzNRzBONqHhJQCjG5gpISfSU7W4BSi8kBlOrPhJwceuI3pPZxxWcxufuYkwyUi5jsQUmI5UguyAmU0ccqOBArlnx6AlAiHyF33ydxb6z/YWtAKcVAleB0RDVMPaoCa5J3A2j57W1GEqyQx/J0K0qsMzxisvEMB/kQaRE4228hW8gW8v9DKriKjd9X/i+q2p1ZjhfnndmoZUGKF5ms0b5XTpj5JeSyTmqohhZUhoeXpms8pEpWU9EJP8KruNFTHMgn36/DqLw81+59AAAAAElFTkSuQmCC" width="32px">
                              <div class="empty-text">
                                 새로운 알림이 없습니다.<br>
                                 리드미와 즐거운 여행을 계획해보세요!
                              </div>
                               </image>
                            </li>
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
                                 <a id class="gnb-menu__list__item__link" href="#" data-turbolinks="false">이용방법</a>
                              </li>
                              <li class="gnb-menu__list__item gtm-gnb-becomeguide-before-login undefined">
                                 <a id class="gnb-menu__list__item__link" href="/app/auth/guideSignup" onclick="event.preventDefault(); location.href='/app/auth/guideSignup'" data-turbolinks="false">가이드 등록하기</a>
                              </li>
                           </ul>
                           <ul class="gnb-menu__list gnb-menu__bottom">
                              <li class="gnb-menu__list__item">
                                 <div class="gnb-menu__button gtm-gnb-signin">
                                    <a data-turbolinks="false">
                                       <button class="mrt-button outline" style="font-size: 16px;">
                                          <soan class="btn-label"><spring:message code="login.title" text="로그인" /></soan>
                                       </button>
                                    </a>
                                 </div>
                                 <div class="gnb-menu__button gtm-gnb-signup">
                                    <a data-turbolinks="false">
                                       <button class="mrt-button primary" style="font-size: 16px;">
                                          <soan class="btn-label"><spring:message code="login.signup" text="회원가입" /></soan>
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
      <a class="" href="/" data-turbolinks="false"><img class="mrt-logo-img" src="/resources/img/logo.png" alt="logo"></a>
      </div>
      </li>
      
      
      
      <c:choose>
                        <c:when test="${sessionScope.memberInfo.email eq null}">
                            <li class="DrawerItem  DrawerItem--bottom-spacing-8 gtm-gnb-signin"><a class="DrawerItem__button DrawerItem__button--normal" href="/users/sign_in" data-turbolinks="false"><spring:message code="login.title" text="로그인" /></a></li>
      <li class="DrawerItem  gtm-gnb-signup">
      <a class="DrawerItem__button DrawerItem__button--outline" href="/users/sign_up" data-turbolinks="false"><spring:message code="login.signup" text="회원가입" /></a>
      </li>
      </ul>
      <div class="Drawer__section Drawer__section--no-border">
      <li class="DrawerItem  DrawerItem--bottom-spacing-20 gtm-gnb-becomeguide-before-login">
      <a class="DrawerItem__link" href="/app/auth/guideSignup"  onclick="event.preventDefault(); location.href='/app/auth/guideSignup'" data-turbolinks="false">가이드 등록하기</a>
      </li>
                        </c:when>
                        <c:otherwise>
                            <li class="DrawerItem  DrawerItem--bottom-spacing-8 gtm-gnb-signin"><a class="DrawerItem__button DrawerItem__button--normal" href="/users/sign_in" data-turbolinks="false"><spring:message code="header.logout" text="로그아웃" /></a></li>
                            <div class="Drawer__section Drawer__section--no-border">
                        </c:otherwise>
                    </c:choose>
      
      
      <li class="DrawerItem  gtm-lnb-howtouse">
      <a class="DrawerItem__link" href="/about/howitworks" data-turbolinks="false">이용 방법</a>
      </li>
      </div>
      </aside>
      </div>
      <main class='vertical-main'>
         <div class='main__header main__header--experience'>
            <div class='main__header__container'>
               <div class='carousel slide carousel-fade' data-pause='false' data-ride='carousel'>
                  <div class='carousel-inner' role='listbox'>
                     <div class='active carousel-item item'>
                     </div>
                     <div class='item carousel-item'>
                     </div>
                     <div class='item carousel-item'>
                     </div>
                  </div>
               </div>
               <div class='main__header__search'>
                  <div class='search__wrapper'>
                     <img class='search__icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/gnb/experience/ic-search-md-gray-500-6a187a261605c7d19ed2208391ae26f29e387b7f26a9b86b32dd5e1fd1a48561.svg' width='22'>
                     <!--<input class='search__input' data-home-search placeholder='여행 또는 테마를 검색해보세요.' type='text'>-->
                     <input class='search__input' data-home-search placeholder='궁궐 밤산책. 덕수궁의 밤을 걸어요.' type='text'>
                  </div>
               </div>
               <div class="lnb-container transparent">
                  <nav class="mrt-container">
                     <ul class="lnb-menu">
                        <li class="lnb-menu__item gtm-lnb-home">
                           <a href="/app/tour/list" class="lnb-menu__item--link transparent" id="home-link1" data-turbolinks="false"><spring:message code="site.cate0" text="전체" /></a>
                        </li>
                        <li class="lnb-menu__item gtm-lnb-home">
                           <a href="/app/tour/list/10" class="lnb-menu__item--link transparent" id="home-link2" data-turbolinks="false"><spring:message code="site.cate1" text="식도락" /></a>
                           <!-- <ul class="sub-menu__item-contain">
                              <li><a href="#">전통음식</a></li>
                              <li><a href="#">고급식당</a></li>
                              <li><a href="#">일반식당</a></li>
                              <li><a href="#">채식</a></li>
                           </ul> -->
                        </li>
                        <li class="lnb-menu__item gtm-lnb-home">
                           <a href="/app/tour/list/20" class="lnb-menu__item--link transparent" id="home-link3" data-turbolinks="false"><spring:message code="site.cate2" text="역사/문화" /></a>
                           <!-- <ul class="sub-menu__item-contain">
                              <li><a href="#">고궁</a></li>
                              <li><a href="#">박물관</a></li>
                              <li><a href="#">유적지</a></li>
                              <li><a href="#">민속마을</a></li>
                           </ul> -->
                        </li>
                        <li class="lnb-menu__item gtm-lnb-home">
                           <a href="/app/tour/list/30" class="lnb-menu__item--link transparent" id="home-link4" data-turbolinks="false"><spring:message code="site.cate3" text="명소" /></a>
                           <!-- <ul class="sub-menu__item-contain">
                              <li><a href="#">랜드마크</a></li>
                              <li><a href="#">자연</a></li>
                              <li><a href="#">테마거리</a></li>
                           </ul> -->
                        </li>
                        <li class="lnb-menu__item gtm-lnb-home">
                           <a href="/app/tour/list/40" class="lnb-menu__item--link transparent" id="home-link5" data-turbolinks="false"><spring:message code="site.cate4" text="액티비티" /></a>
                           <!-- <ul class="sub-menu__item-contain">
                              <li><a href="#">문화체험</a></li>
                              <li><a href="#">스포츠</a></li>
                              <li><a href="#">트래킹</a></li>
                              <li><a href="#">힐링</a></li>
                              <li><a href="#">나이트라이프</a></li>
                           </ul> -->
                        </li>
                        <li class="lnb-menu__item gtm-lnb-home">
                           <a href="/app/tour/list/50" class="lnb-menu__item--link transparent" id="home-link6" data-turbolinks="false"><spring:message code="site.cate5" text="쇼핑" /></a>
                        </li>
                     </ul>
                  </nav>
               </div>
               <!--nav theme -->
            </div>
         </div>
      </main>
      
      
      <div id='popup-mask'></div>
      <div id='gnb-popup-mask'></div>
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
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   </body>
</html></html>