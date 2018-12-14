<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta content='Content-type: text/html; charset=UTF-8' name='http-equiv'>

<title>LEADME :: 가이드 프로필</title>
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
    src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
<link rel="stylesheet" media="all"
    href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all"
    href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-58626b3385ab2502017698c1681214bc0e110444decd0120edf7b029d4258d62.css" />
<link rel="stylesheet" media="screen"
    href="/resources/css/application.6823a52822019093f642.css" />

<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-b751bcff1f912d9f2d6eb3f5f25a09494364fee359047b3bcf9e161c4d714527.css" />
<![endif]-->

</head>
<body class='body' data-action='show'
    data-controller-path='kitty/guides' data-controller='guides'>

    <div class='global-alert-box'></div>


    <main class='guide-detail' itemscope
        itemtype='http://schema.org/Person'>
    <div class='header-container'>
        <div class='bg-img'><img style="object-fit: cover; width: 100%; height:100%" src="/resources/img/image1.jpg"></div>
        <div class='dark-cover'></div>
        <div class='content'>
            <div class='title-box'>
                <div id='guideName' class='text-lg item-inline' itemprop='name'></div>
            </div>
        </div>
    </div>

    <section class='clearfix body-container'>
        <div class='introduce-container content-center-narrow'>
            <div class='guide-profile'>
                <img id='guideImg' alt='guide image' class='img img-circle' itemprop='image' src="/resources/img/default.jpg">

            </div>
            <div id='guideIntro' class='guide-content'>

                <div class='real-guide-content'>
                    <div class='heading'></div>
                </div>
            </div>
    </section>
    </main>

    
    <div id='popup-mask'></div>
    <div id='gnb-popup-mask'></div>


    <script>
$(document).ready(function(){
   console.log(${gmno}); 
   
   var guide = {
           'mno' : ${gmno}
   }
   console.log(guide); 
   $.ajax({
       url:'/app/guide/guideProfile.do',
       type:'POST',
       dataType:'JSON',
       data:JSON.stringify(guide),
       contentType:"application/json",
       success:function(data){
           console.log(data.member.name);
           console.log(data.member.guide.intro);
           $('#guideName').text(data.member.name);
           $('#guideImg').attr('src','/resources/img/'+data.member.photo);
           $('#guideIntro').empty().append("<p class='text' itemprop='description'>" 
                   + data.member.guide.intro
                   + "</p>");
       }, error : function(){
          location.href =  "/app/guide/profile";
       }
   
   });
});
</script>

</body>
</html>
