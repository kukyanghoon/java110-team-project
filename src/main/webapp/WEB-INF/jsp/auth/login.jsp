<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      
      <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="639731399858-ahjc3pap9isuk2c10qp6h3i3icu37vsc.apps.googleusercontent.com">
      
      
      <title>LEADME :: <spring:message code="login.title" text="로그인" /></title>
      <!-- <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
      <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css">
      <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-4b8ab07154cf2c04a97bb950234f455fe5a721876f501316a714f1a8b65b12ae.css" />
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.6823a52822019093f642.css" />
      <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.e01e462572b9064a1cc4.css">
      <script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.e01e462572b9064a1cc4.js"></script>
      <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-01ea8c7c94c68924dc912350d530fb7e62968738f000a46cec5b9f8c3187e0c5.js"></script>
      <style type="text/css"></style>
      Google Tag Manager
      <script>
         dataLayer = [];
         (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
         new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
         j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
         '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
         })(window,document,'script','dataLayer','GTM-NCVRS4');
      </script>
      End Google Tag Manager
      <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
      <script type="text/javascript">
         kakaoPixel('5174958686083042808').pageView();
      </script>
      <script>
         window.App = App || {};
      </script>
     
      <script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/16/intl/ko_ALL/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/16/intl/ko_ALL/util.js"></script>
      
       
       <link rel="stylesheet" type="text/css" href="css/hyun.css">
       -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   </head>
   
   <body class="body" data-action="new" data-controller-path="users/sessions" data-controller="sessions">
   
   
   <jsp:include page="../headerTest.jsp"></jsp:include>
   
      <!-- 로그인 창 -->
      <div class='member'>
         <div class='container-fluid content-wrap'>
            <div class='member-panel'>
               <div class='content-wrapper'  style=" margin-top: 0px; margint-right:130px; margint-bottom:0px; margin-left: 130px;  ">
                  <div class='form-group clearfix'>
                     <h1><b><spring:message code="login.title" text="로그인" /></b></h1>
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
                                 <div class='sub-title'><spring:message code="login.email" text="이메일" />*</div>
                              </div>
                              <div class='row'>
                                 <div class='col-xs-12'>
                                    <input autocomplete='off' class='form-control' id="userEmail" name='user[email]' placeholder='이메일' title='이메일' type='email'  autocomplete="false">
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class='content-wrapper'>
                           <div class='form-group'>
                              <div class='content-title-box'>
                                 <div class='sub-title'><spring:message code="login.password" text="비밀번호" />*</div>
                              </div>
                              <div class='row'>
                                 <div class='col-xs-12'>
                                    <input autocomplete='off' class='form-control' id="userPassword" name='user[password]' placeholder='비밀번호' title='비밀번호' type='password'>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class='content-wrapper'>
                           <div class='form-group'>
                              <div class='row row-margin'>
                                 <div class='col-xs-6'>
                                    <div class='find-password' style='width: 328px;'>
                                       <a data-turbolinks='false' href='#' id="findPwBtn"><spring:message code="login.findPassword" text="비밀번호 찾기" /></a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class='btn-wrap'>
                           <button class='btn-new btn--type-primary btn--width-100' style="height:40px" id="loginBtn" type='button'>
                           <span><spring:message code="login.loginEmail" text="이메일로 로그인" /></span>
                           </button>
                        </div>
                     </div>
                  </form>
                  <div class='panel-button' style="padding: 10px;">
                     <div class='btn-wrap' data-use-continue-as="true" id="btn-wrap-fb">
                     <div class="fb-login-button" data-max-rows="1" data-size="large" 
                     data-button-type="login_with" data-show-faces="false" data-width="100%"
                     data-auto-logout-link="false" data-use-continue-as="false" style="width: 100%;" onlogin="checkLoginState();"></div>
                     
                     <div class='btn-wrap'>
                       <div id='googleLoginBtn' class="g-signin2" 
                     data-theme="dark" data-width="standard"
                     data-onsuccess="onSignIn"></div>
                     </div>
                  </div>
                  <div class='panel-footer'>
                     <div class='footer-title'>
                        <spring:message code="login.signupText" text="아직 LEADME 회원이 아니신가요?" />&nbsp;
                        <a href='/app/auth/signup'><spring:message code="login.signup" text="회원가입" /></a>
                     </div>
                  </div>
               </div>
               
               
            </div>
         </div>
         </div>         
      </div>
      <div id="popup-mask"></div>
      <div id="gnb-popup-mask"></div>
    <footer>
        <jsp:include page="../footerTest.jsp"></jsp:include>
    </footer>
    
      <script src="/resources/js/custom.js"></script>
      
      <script>
        $(document).ready(function(){
            $('#userEmail').keydown(function(key){
                keyDown(key,13);
            });
            $('#userPassword').keydown(function(key){
                keyDown(key,13);
           });
            function keyDown(key,button){
                if (key.keyCode == button){
                    $("#loginBtn").click();
               };
            }
        });
    </script>
      
      
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
                       console.log("aaaaaaaaaaa");
                       console.log(data);
                       console.log(document.referrer);
                       location.href = '../main';
                   },
                   error:function(){
                       console.log('실패');
                       swal("로그인 실패", "일치하는 회원 정보가 없습니다", "error");
                   }
               
               }); 
               
              
           });
        });
    </script>
    
    <script src="https://apis.google.com/js/platform.js" async defer></script>
     <script>
     
     function autoServerLogin(accessToken) {
         location.href = "fblogin?&accessToken="+accessToken;
     }
     function statusChangeCallback(response) {
       console.log(response);
       if (response.status === 'connected') { // 로그인이 정상적으로 되었을 때,
           autoServerLogin(response.authResponse.accessToken);
           //location.href = '../main';
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
         appId      : '341620679957072', // 개발자가 등록한 앱 ID
         cookie     : true,  
         xfbml      : true,  
         version    : 'v3.2' 
       });
       FB.AppEvents.logPageView();
       /* FB.XFBML.parse(document.getElementsByClassName('_5h0c')[0].style.maxWidth="735px"); */
     };
     
     
     (function(d, s, id) {
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) return;
         js = d.createElement(s); js.id = id;
         js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.2&appId=1941679139472866&autoLogAppEvents=1';
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
   </script>
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
                  location.href = "../main";
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
   <script>
   window.onload=function(){
       document.getElementsByClassName('abcRioButton')[0].style.height="40px";
       document.getElementsByClassName('abcRioButtonContents')[0].firstElementChild.textContent='Google으로 로그인';
       document.getElementsByClassName('abcRioButtonContents')[0].style.lineHeight="40px";
       document.getElementsByClassName('panel-button')[0].style.paddingLeft=0;
       document.getElementsByClassName('panel-button')[0].style.paddingRight=0;
       document.getElementsByClassName('abcRioButtonIcon')[0].style.position="relative";
       document.getElementsByClassName('abcRioButtonIcon')[0].style.top="2px";
       document.getElementsByClassName('abcRioButtonIcon')[0].style.left="2px";
       /* document.getElementsByClassName('_5h0d')[0].style.maxWidth="735px"; */
       /* document.getElementById('u_0_1').children[0].style.maxWidth="735px"; */
   }
   
   
   </script>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    
    <script>
    
    $('#findPwBtn').on('click', function(){
        swal("가입 시 입력한 이메일을 입력해주세요", {
            content: "input",
          })
          .then((value) => {
              
              
              console.log(value);
              var obj = {
                      email : value
                      };
              console.log(obj);
              $.ajax({
                  url : "findPw.do",
                  type : "POST",
                  dataType:'JSON',
                  contentType:"application/json",
                  data : JSON.stringify(obj),
                  success : function(result) {
                      swal(`임시 비밀번호를 보냈습니다`,"", "success");
                      console.log(result.message);
                  },
                  error : function(){
                      swal("이메일이 정확하지 않습니다", "", "error");
                  }
              });
              
              
          });
    });
    
    </script>
    

    
    
    
   </body>
   
</html>