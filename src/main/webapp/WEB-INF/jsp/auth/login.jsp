<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      
      <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="639731399858-ahjc3pap9isuk2c10qp6h3i3icu37vsc.apps.googleusercontent.com">
      
      
      <title>LEADME</title>
      <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
      <script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NCVRS4"></script><script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.e01e462572b9064a1cc4.css">
      <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css">
      
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.e01e462572b9064a1cc4.css">
      <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
      <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.6823a52822019093f642.css" />
      <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-4b8ab07154cf2c04a97bb950234f455fe5a721876f501316a714f1a8b65b12ae.css" />
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.6823a52822019093f642.css" />
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.e01e462572b9064a1cc4.css">
      <script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.e01e462572b9064a1cc4.js"></script>
      <script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.e01e462572b9064a1cc4.js"></script>
      <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-01ea8c7c94c68924dc912350d530fb7e62968738f000a46cec5b9f8c3187e0c5.js"></script>
      <style type="text/css"></style>
      <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places&amp;language=ko" async="async" defer="defer"></script>
      <script>
         function initRaven() {
           Raven.config('https://5bfa4c779b0a477cb4cdb9b8b659cb8b@sentry.io/146345').install();
         }
      </script>
      <!-- Google Tag Manager -->
      <script>
         dataLayer = [];
         (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
         new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
         j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
         '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
         })(window,document,'script','dataLayer','GTM-NCVRS4');
      </script>
      <!-- End Google Tag Manager -->
      <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
      <script type="text/javascript">
         kakaoPixel('5174958686083042808').pageView();
      </script>
      <script>
         window.App = App || {};
      </script>
     
      <script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/16/intl/ko_ALL/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/16/intl/ko_ALL/util.js"></script>
      
       
       <link rel="stylesheet" type="text/css" href="css/hyun.css">
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
         }
       </style>
      
   </head>
   
   <body class="body" data-action="new" data-controller-path="users/sessions" data-controller="sessions">
   
   <header>
   <jsp:include page="../headerTest.jsp"></jsp:include>
   </header>
   
   
      <!-- Google Tag Manager (noscript) -->
      <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
         height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
      <!-- End Google Tag Manager (noscript) -->
      <div class="global-alert-box"></div>

      
      <!-- 로그인 창 -->
      <main class='member'>
         <div class='container-fluid content-wrap'>
            <div class='member-panel'>
               <div class='content-wrapper'  style=" margin-top: 0px; margint-right:130px; margint-bottom:0px; margin-left: 130px;  ">
                  <div class='form-group clearfix'>
                     <h1><b>로그인</b></h1>
                  </div>
               </div>
               <div class='panel-body'>
                  <form role="form" data-validation="true" action="/users/sign_in" accept-charset="UTF-8" method="post">
                     <input name="utf8" type="hidden" value="&#x2713;" />
                     <input type="hidden" name="authenticity_token" value="Zf2iVHJqvZmpjNu2ecviVjjZnvR5jz9Y95fJK3Ug7CpDD46e7cz0LaYFX1RqbtTVhFaVpENmKrT5NYcE1+shcw==" />
                     <div class='form-wrapper'>
                        <div class='content-wrapper'>
                           <div class='form-group clearfix'>
                              <div class='content-title-box'>
                                 <div class='sub-title'>이메일*</div>
                              </div>
                              <div class='row'>
                                 <div class='col-xs-12'>
                                    <input autocomplete='off' class='form-control' id="userEmail" name='user[email]' placeholder='이메일' title='이메일' type='email'>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class='content-wrapper'>
                           <div class='form-group'>
                              <div class='content-title-box'>
                                 <div class='sub-title'>비밀번호*</div>
                              </div>
                              <div class='row'>
                                 <div class='col-xs-12'>
                                    <input class='form-control' id="userPassword" name='user[password]' placeholder='비밀번호' title='비밀번호' type='password'>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class='content-wrapper'>
                           <div class='form-group'>
                              <div class='row row-margin'>
                                 <div class='col-xs-6'>
                                    <div class='checkbox-custom checkbox-primary'>
                                       <input id='remember_me' name='user[remember_me]' type='checkbox'>
                                       <label for='remember_me'>로그인 상태 유지</label>
                                    </div>
                                 </div>
                                 <div class='col-xs-6'>
                                    <div class='find-password'>
                                       <a data-turbolinks='false' href='#'>비밀번호 찾기</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <script>
                        $(document).ready(function(){
                           $('#loginBtn').on('click', function(){
                              var obj = {
                                      'email' : $('#userEmail').val(),
                                      'password' : $('#userPassword').val()
                              }
                              
                              console.log(obj);
                              
                              $.ajax({
                                  url:'loginCheck.do',
                                  type:'POST',
                                  dataType:'JSON',
                                  data:JSON.stringify(obj),
                                  contentType:"application/json",
                                  success:function(data){
                                      location.href = '../main';
                                  },
                                  error:function(){
                                      console.log('실패');
                                  }
                              
                              });
                              
                           });
                        });
                        </script>
                        <div class='btn-wrap'>
                           <button class='btn-new btn--type-primary btn--width-100' id="loginBtn" type='button'>
                           <span>이메일로 로그인</span>
                           </button>
                        </div>
                     </div>
                  </form>
                  <div class='panel-button' style="padding: 10px;">
                  
                  
                  <script src="https://apis.google.com/js/platform.js" async defer></script>
                  <script>
                  
                  function autoServerLogin(accessToken) {
                      location.href = "fblogin?&accessToken="+accessToken;
                  }
                  function statusChangeCallback(response) {
                    console.log(response);
                    if (response.status === 'connected') { // 로그인이 정상적으로 되었을 때,
                        autoServerLogin(response.authResponse.accessToken);
                    
                    } else { // 로그인이 되지 않았을 때,
                        console.log("로그인 되지 않았음");
                    }
                  }
                    
                  function checkLoginState() {
                      FB.getLoginStatus(function(response) { 
                        statusChangeCallback(response);
                      });
                  }
                  window.fbAsyncInit = function() {
                    console.log("window.fbAsyncInit() 호출됨!");
                    FB.init({
                      appId      : '1941679139472866', // 개발자가 등록한 앱 ID
                      cookie     : true,  
                      xfbml      : true,  
                      version    : 'v3.2' 
                    });
                    FB.AppEvents.logPageView();
                  };
                  (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = "https://connect.facebook.net/en_US/sdk.js";
                    fjs.parentNode.insertBefore(js, fjs);
                  }(document, 'script', 'facebook-jssdk'));

                  
                  
                  </script>
                
                     <div class='btn-wrap' id="btn-wrap-fb">
                     
                       <!--  <a class='btn-new btn--type-outline btn--width-100 btn-sns'>
                        <img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/fb-logo@2x-2a65bc6ab97a894a1baeca5b714f4201eb991cfc6d955ef657f86de8e56f89d5.png' width='18'>
                        <span>페이스북으로 로그인</span> -->
                        <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
                        
                        </a>
                     </div>
                     
                     <script>
                                 
                                 
                     function onSignIn(googleUser) {
                         // Useful data for your client-side scripts:
                         var profile = googleUser.getBasicProfile();
                         console.log("ID: " + profile.getId()); // Don't send this directly to your server!
                         console.log('Full Name: ' + profile.getName());
                         console.log('Given Name: ' + profile.getGivenName());
                         console.log('Family Name: ' + profile.getFamilyName());
                         console.log("Image URL: " + profile.getImageUrl());
                         console.log("Email: " + profile.getEmail());
                         
                            console.log("aaa"); 
                            $(document).ready(function(){
                            $.ajax({
                                url:'googleLoginCheck.do',
                                type:'POST',
                                dataType:'JSON',
                                data:JSON.stringify(makeObj(profile)),
                                contentType:"application/json",
                                success:function(data){
                                    console.log(data);
                                    //location.href = "test";
                                }
                            
                            });
                            
                         });
                         // The ID token you need to pass to your backend:
                         var id_token = googleUser.getAuthResponse().id_token;
                         console.log("ID Token: " + id_token);
                       };

                       function makeObj(profile){
                           var obj ={
                                   'name': profile.getGivenName() + profile.getFamilyName(),
                                   'email' : profile.getEmail(),
                                   'photo' : profile.getImageUrl()
                           }
                           console.log(obj);
                           return obj;
                       }
                       
                      
                     </script>
                     
                     <div class='btn-wrap'>
                        <a class='btn-new btn--type-outline btn--width-100 btn-sns'>
                        <img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png' width='18'>
                        <span>네이버로 로그인</span>
                        </a>
                        <div id='googleLoginBtn' class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
                     </div>
                  </div>
                  <div class='panel-footer'>
                     <div class='footer-title'>
                        아직 Lead Me! 회원이 아니신가요?
                        <a href='https://www.myrealtrip.com/users/sign_up'>회원가입</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </main>
      
      
      
      
      <div id="popup-mask"></div>
      <div id="gnb-popup-mask"></div>
      <!--  링크백 태그 -->
      <script type="text/javascript">
         var linkback = linkback|| {};
         (function() {
             var d = document, scr = d.createElement('script'), pro = d.location.protocol,
             tar = d.getElementsByTagName('head')[0];
             scr.type = 'text/javascript';  scr.async = true;
             scr.src = ((pro === 'https:') ? 'https' : 'http') + '://linkback.contentsfeed.com/src/lb4myrt.min.js';
             scr.charset='utf-8';
             if(!linkback.l){linkback.l=true; tar.insertBefore(scr, tar.firstChild);}
         })();
      </script>
      <script type="text/javascript">
         var google_tag_params = {
         ecomm_prodid: 'REPLACE_WITH_VALUE',
         ecomm_pagetype: 'REPLACE_WITH_VALUE',
         ecomm_totalvalue: 'REPLACE_WITH_VALUE',
         travel_destid: 'REPLACE_WITH_VALUE',
         travel_originid: 'REPLACE_WITH_VALUE',
         travel_startdate: 'REPLACE_WITH_VALUE',
         travel_enddate: 'REPLACE_WITH_VALUE',
         travel_pagetype: 'REPLACE_WITH_VALUE',
         travel_totalvalue: 'REPLACE_WITH_VALUE',
         };
      </script>
      <script type="text/javascript">
         /* <![CDATA[ */
         var google_conversion_id = 1004447359;
         var google_custom_params = window.google_tag_params;
         var google_remarketing_only = true;
         /* ]]> */
      </script>
      <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion_async.js"></script>
      <noscript>
         <div style="display:inline;">
            <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1004447359/?guid=ON&amp;script=0"/>
         </div>
      </noscript>
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
      <script>
         var user = '0'
         
         
         dataLayer.push( {
         'userID': user
         });
         /**** fire remarketingTag ******/
         dataLayer.push({
         'event': 'fireRemarketingTag',
         'google_tag_params': {
           'ecomm_prodid': '',
           'ecomm_pagetype': 'other',
           'ecomm_totalvalue': ''
         }
         });
         /****** fire remarketingTag ******/
         
         if (window.jQuery) {
         $(document).ready(function() {
           $('.offer-item-container li.item').click(function(event){
             var $offer_item = $(this);
         
             var offer_id = $offer_item.attr('data-offer-id');
             var offer_name = $offer_item.find('.name').text();
             var offer_price = $offer_item.find('.price[data-offer-price]').attr('data-offer-price');
             var offer_category = $offer_item.attr('data-offer-type');
         
             var offer_url = $offer_item.find('a.offer-link').attr('href');
         
             dataLayer.push({
               'event': 'productClick',
               'ecommerce': {
                 'click': {
                   'actionField': {'list': offer_category},      // Optional list property.
                   'products': [{
                     'name': offer_name,                      // Name or ID is required.
                     'id': offer_id,
                     'price': offer_price,
                     'category': offer_category
                    }]
                  }
                }
             });
           });
         
         
           $(document).on('wishChecked', function(e) {
             dataLayer.push({
               'event': 'addToWishlist',
               'offer_id': e.detail.offerId
             });
           });
         });
         }
      </script>
      <div style="display: none; visibility: hidden;">
         <script type="text/javascript">var ecmLogServer="adlog.cresendo.net",ecmCookieDays=45,ecmtoday=new Date,ecmToDay=ecmtoday.getFullYear()+""+FN_ZoneMark(ecmtoday.getMonth())+""+FN_ZoneMark(ecmtoday.getDate()),ecmID="myrealtrip",ecmGoodNm="",ecmAmount="",ecmTarget="",ecmLogSend="Y",ecmCV="",ecmPN="";function FN_ZoneMark(a){return 10>a?"0"+a:a}
            function FN_GetDomain(a){var b=a.split(".");return 3==b.length?2==b[1].length||"com"==b[1]?a:b[1]+"."+b[2]:3<b.length?2==b[b.length-2].length||"com"==b[b.length-2]?b[b.length-3]+"."+b[b.length-2]+"."+b[b.length-1]:b[b.length-2]+"."+b[b.length-1]:a}
            function FN_SetCookie(a,b,c,d,e){var f=new Date;_ut=f.getTime();c=c?c:"/";null==b&&(e=0);null!=e?(_et=_ut+1E3*e,f.setTime(_et),_pt=" expires\x3d"+f.toUTCString()+";"):_pt="";null!=d&&(_pt+=" domain\x3d"+d+";");document.cookie=a+"\x3d"+escape(b)+"; path\x3d"+c+";"+_pt}function FN_GetCookie(a){return(a=document.cookie.match("(^|;) ?"+a+"\x3d([^;]*)(;|$)"))?unescape(a[2]):""}function FN_StrPos(a,b){for(var c=0;c<a.length;c++)if(a.substring(c,c+1)==b)return c;return-1}
            function FN_FullDomain(a){0<FN_StrPos(a,":")&&(a=a.substring(0,FN_StrPos(a,":")));0<FN_StrPos(a,"/")&&(a=a.substring(0,FN_StrPos(a,"/")));return a=FN_GetDomain(a)}function FN_sendChk(a){for(var b=(new Date).getTime(),c=b;c-b<a;)c=(new Date).getTime()}
            var _LandYn="N",_BookMark="N",_ecmPR=location.protocol.indexOf("https"),_ecmHostName=location.hostname,_ecmSearch=location.search,_ecmHash=location.hash,_ecmUL=document.URL,_ecmRF=document.referrer,_ecmDoMain=FN_FullDomain(_ecmHostName),_ecmAK=FN_GetCookie(ecmID+"_CTNAAKEY"),_ecmCK=FN_GetCookie(ecmID+"_CTNACKEY"),_ecmSS=FN_GetCookie(ecmID+"_CTNASESSION"),_ecmDate=FN_GetCookie(ecmID+"_CTNADATE"),_ecmInKey="",_ecmCV="",_ecmPN="",_ecmK="",_ecmLogSend="",_ecmSendCheck="Y",_ecmSendParam=_ecmUL.toUpperCase().indexOf("CTNASEND\x3d"),
            _ecmULeKey=_ecmUL.toUpperCase().indexOf("CTNAKEY\x3d"),_ecmULTemp="",_ecmULSubDomain="",_ecmRFTemp="",_ecmRFSubDomain="";if(0<_ecmSendParam){var _ii=_ecmUL.indexOf("\x26",_ecmSendParam+9);_ecmSendCheck=0<_ii?_ecmUL.substring(_ecmSendParam+9,_ii):_ecmUL.substring(_ecmSendParam+9)}_ecmSendCheck=_ecmSendCheck.toUpperCase();
            if("N"!=_ecmSendCheck){"/"==_ecmUL.charAt(_ecmUL.length-1)&&(_ecmUL=_ecmUL.substring(0,_ecmUL.length-1));_ecmRF&&""!=_ecmRF?(_ecmRF=_ecmRF.replace("'",""),_ecmRFTemp=_ecmRF.replace("http://",""),_ecmRFTemp=_ecmRFTemp.replace("https://",""),_ecmRFSubDomain=FN_FullDomain(_ecmRFTemp)):_ecmRFSubDomain="";_ecmUL=_ecmUL.replace("'","");_ecmULTemp=_ecmUL.replace("http://","");_ecmULTemp=_ecmULTemp.replace("https://","");_ecmULSubDomain=FN_FullDomain(_ecmULTemp);""!=_ecmRFSubDomain?_ecmULSubDomain!=_ecmRFSubDomain&&
            0<_ecmULeKey&&(_LandYn="Y"):""!=_ecmCK&&(_BookMark="Y",_ecmInKey=_ecmCK);if("Y"==_LandYn||0<_ecmULeKey){_ii=_ecmUL.indexOf("\x26",_ecmULeKey+8);_ecmK=0<_ii?_ecmUL.substring(_ecmULeKey+8,_ii):_ecmUL.substring(_ecmULeKey+8);var _ss=_ecmK.indexOf("#");0<_ss&&(_ecmK=_ecmK.substring(0,_ss));FN_SetCookie(ecmID+"_CTNAKEY",_ecmK,"/",_ecmDoMain);_ecmK&&""!=_ecmK||(_ecmK="unknown");if("unknown"!=_ecmK){_ecmCK=_ecmK;_ecmDate=ecmToDay;FN_SetCookie(ecmID+"_CTNACKEY",_ecmK,"/",_ecmDoMain,86400*ecmCookieDays);FN_SetCookie(ecmID+
            "_CTNADATE",ecmToDay,"/",_ecmDoMain,86400*ecmCookieDays);if(!_ecmSS||""==_ecmSS){var _DT=new Date;_ecmSS=Math.round(900*Math.random())%900+100+""+_DT.getTime()}FN_SetCookie(ecmID+"_CTNASESSION",_ecmSS,"/",_ecmDoMain,86400*ecmCookieDays);_ecmAK&&""!=_ecmAK||(_ecmAK=_ecmK,FN_SetCookie(ecmID+"_CTNAAKEY",_ecmK,"/",_ecmDoMain,86400))}_ecmInKey=0<_ecmPR?_ecmCK:"unknown"==_ecmK?"unknown"==_ecmCK?_ecmAK:_ecmCK:_ecmK}if("Y"==_LandYn||"Y"==_BookMark){if(""!=_ecmInKey||""!=_ecmAK){var _ecmLogUrl="//"+ecmLogServer+
            "/?ac\x3d"+ecmID+"\x26k\x3d"+escape(_ecmInKey)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+"\x26gd\x3d"+encodeURIComponent(ecmGoodNm)+"\x26at\x3d"+ecmAmount+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d\x26pn\x3d\x26ss\x3d"+
            _ecmSS+"\x26vr\x3d6.3",eLogxhr=new Image;eLogxhr.src=_ecmLogUrl;FN_sendChk(300)}}else 0<_ecmULeKey&&(_ecmLogUrl="//"+ecmLogServer+"/?ac\x3d"+ecmID+"\x26k\x3d"+escape(_ecmInKey)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+"\x26gd\x3d"+encodeURIComponent(ecmGoodNm)+"\x26at\x3d"+ecmAmount+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+
            "\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d\x26pn\x3d\x26ss\x3d"+_ecmSS+"\x26vr\x3d6.3",eLogxhr=new Image,eLogxhr.src=_ecmLogUrl,FN_sendChk(300))}
            function csf(a,b,c,d){c="undefined"==typeof c?"":c;d="undefined"==typeof d?"":d;var e="Y",f=_ecmCK;"N"!=_ecmSendCheck&&"event"==a&&(_ecmCV="undefined"==typeof e||"string"!=typeof e?"":e,_ecmPN="undefined"==typeof b||"string"!=typeof b?"":b,_ecmLogSend="undefined"==typeof ecmLogSend||"string"!=typeof ecmLogSend?"":ecmLogSend,"Y"==_ecmLogSend?""==f&&""==_ecmAK||"Y"!=_ecmCV||(a="//"+ecmLogServer+"/?ac\x3d"+ecmID+"\x26k\x3d"+escape(f)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+
            "\x26gd\x3d"+encodeURIComponent(c)+"\x26at\x3d"+d+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d"+_ecmCV+"\x26pn\x3d"+_ecmPN+"\x26ss\x3d"+_ecmSS+"\x26vr\x3d6.3",c=new Image,c.src=a,FN_sendChk(300)):(a="//"+ecmLogServer+"/?ac\x3d"+
            ecmID+"\x26k\x3d"+escape(f)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+"\x26gd\x3d"+encodeURIComponent(c)+"\x26at\x3d"+d+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d"+_ecmCV+"\x26pn\x3d"+_ecmPN+
            "\x26ss\x3d"+_ecmSS+"\x26vr\x3d6.3",c=new Image,c.src=a,FN_sendChk(300)))};
         </script>
      </div>
      <div style="display: none; visibility: hidden;">
         <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script> 
         <script type="text/javascript">if(!wcs_add)var wcs_add={};wcs_add.wa="s_2652984f26f1";if(!_nasa)var _nasa={};wcs.inflow();wcs_do(_nasa);</script>
      </div>
      <div style="display: none; visibility: hidden;">
         <script type="text/javascript">var roosevelt_params={retargeting_id:"CO4BPcxxuPf7EMtOqlDEMw00",tag_label:"fDUszzkYQtK6Ijtu6-bHRA"};</script>
         <script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async="null"></script>
      </div>
      
      <script src="js/custom.js"></script>

    <footer>
        <jsp:include page="../footerTest.jsp"></jsp:include>
    </footer>
   </body>
</html>