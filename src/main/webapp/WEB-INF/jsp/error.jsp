<%@page import="java.io.PrintWriter"%>
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
<meta content='KRW' name='currency'>

<meta content='https://d2yoing0loi5gh.cloudfront.net/assets/og-image-35b4b66874396ae2fc8991b926c1f0c09f27f25f9c0a23f15e5e96c73c2c9992.png' property='og:image'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon-precomposed'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png' rel='apple-touch-icon' sizes='152x152'>
<title><spring:message code="site.title" text="환영합니다" /></title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.577401eab135411fc0ec.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-228cbcfb24fac93d7b04550f45639536e3c0df2bea679e5896c8da66e6549447.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.577401eab135411fc0ec.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.577401eab135411fc0ec.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.577401eab135411fc0ec.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-6ba66004cc64d9fd87a7046970199de4a1e30759258fd02a4cad05cf427e1c47.css" />
<![endif]-->

</head>
<body class='body' data-action='show' data-controller-path='kitty/offers' data-controller='offers'>
<div class='global-alert-box'>
</div>

<jsp:include page="headerTest.jsp"></jsp:include>

<div id='mrt-header'></div>
      

<div class='clearfix'>
<section class='error' id='content'>
<div class='error-panel'>
<div class='container-fluid content-wrap'>
<div class='error-text'>
<h2 class='title'>Sorry!</h2>
<br><br>
<p><spring:message code="err.msg" text="해당 요청을 처리할 수 없습니다. 잠시 후 다시 시도해 주세요." /></p>
</div>
<img class="img" src="/resources/img/error.png" />
</div>
</div>
</section>
</div>

<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>

<!-- 푸터 -->
<c:choose>
        <c:when test="${lang == 'en'}">
            <jsp:include page="footerEng.jsp"/>    
        </c:when>
        <c:otherwise>
            <jsp:include page="footer.jsp"/>
        </c:otherwise>
</c:choose>
<!-- 푸터 끝 -->
</body>
</html>



    