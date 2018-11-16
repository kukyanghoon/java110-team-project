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

       <style>
        .fb-login-button{
            margin-left:40px;
        }
        
       
     	.btn-wrap{
     		border : 1px solid silver;
     	}
       
       .panel-button
       {
     		border : 1px solid silver;
     	}
     	.wrap2{
     		width:100%;
     		text-align:center;
     	}
     	#googleLoginBtn{
     	width:100%;
     		text-align:center;
     	}
       </style>
      
   </head>
   
   <body class="body" data-action="new" data-controller-path="users/sessions" data-controller="sessions">
   
   <header>
   <jsp:include page="../headerTest.jsp"></jsp:include>
   </header>
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
                        <div class='btn-wrap'>
                           <button class='btn-new btn--type-primary btn--width-100' id="loginBtn" type='button'>
                           <span>이메일로 로그인</span>
                           </button>
                        </div>
                     </div>
                  </form>
                  <div class='panel-button' style="padding: 10px;">
                     <div class='btn-wrap' data-use-continue-as="true" id="btn-wrap-fb">
                     <div class='wrap2'>
                      <fb:login-button class='btn-wrap' scope="public_profile,email"
                     onlogin="checkLoginState();" class="fb-login-button"
                     data-max-rows="1" data-size="large" data-button-type="login_with"
                     data-show-faces="false" data-size="standard" data-auto-logout-link="false"
                     data-use-continue-as="false"></fb:login-button>
                        </div>
                     </div>
                     
                     <div class='btn-wrap'>
                     <div class='wrap2'>
                       <div id='googleLoginBtn' class="g-signin2"
                     data-theme="dark" size="standard" data-longtitle="true"
                     data-onsuccess="onSignIn"></div>
                     </div>
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
    <footer>
        <jsp:include page="../footerTest.jsp"></jsp:include>
    </footer>
      <script src="../../resources/js/custom.js"></script>
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
   </body>
   
</html>