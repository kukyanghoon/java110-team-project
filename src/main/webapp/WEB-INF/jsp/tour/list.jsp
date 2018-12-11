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
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
    <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
    

<link rel="stylesheet" type="text/css" href="/resources/css/hyun.css">
    <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-0d3dd8da661782e0fe69539e0c61b980912a8ee2c42e367b29dde4bcccc9dea6.css" />
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-01ea8c7c94c68924dc912350d530fb7e62968738f000a46cec5b9f8c3187e0c5.js"></script><style type="text/css"></style>




<script>
  window.App = App || {};
</script>
<style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#1d3c78;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2_mobile_chat_started{animation-duration:300ms;animation-name:fb_bounce_in_v2_mobile_chat_started;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2_mobile_chat_started{animation-duration:300ms;animation-name:fb_bounce_out_v2_mobile_chat_started;transition-timing-function:ease-in}.fb_customer_chat_bubble_pop_in{animation-duration:250ms;animation-name:fb_customer_chat_bubble_bounce_in_animation}.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_mobile_overlay_active{background-color:#fff;height:100%;overflow:hidden;position:fixed;visibility:hidden;width:100%}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_v2_mobile_chat_started{0%{opacity:0;top:20px}100%{opacity:1;top:0}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}

span.local{
    margin : 3px;
    display: inline-block;
    font-size: 16px;
}

#background-image{
    background-repeat: no-repeat;
    width: 928px;
    margin: auto;
}

#bg-image{
    width: 928px;
    height: 300px;
}


.drop ul{
    border-radius: 30px;
    position: absolute;
    display: none;
   background-color: #fff;
   border: 3px solid #fff;
   line-height: 40px;
   text-align: left;
   padding: 5px;
   float:left;
   z-index: 3333;
}
#location{
    width: 180px;
    height: 300px;
}
.drop:hover ul{
    text-align: center;
    display: block;
}
.OfferList__Sticky{
    border-radius: 20px;
}

</style>



   <header>
    <jsp:include page="../headerTest.jsp"></jsp:include>
   </header>

    <div id="background-image">
    <c:choose>
        <c:when test="${catNo eq 1}">
            <img src="/resources/img/screen1.jpg" width="928px" id="bg-image">
        </c:when>
        <c:when test="${catNo eq 10}">
            <img src="/resources/img/food.jpg" width="928px" id="bg-image">
        </c:when>
        <c:when test="${catNo eq 20}">
            <img src="/resources/img/history.jpg" width="928px" id="bg-image">
        </c:when>
        <c:when test="${catNo eq 30}">
            <img src="/resources/img/land.jpg" width="928px" id="bg-image">
        </c:when>
        <c:when test="${catNo eq 40}">
            <img src="/resources/img/acti.jpg" width="928px" id="bg-image">
        </c:when>
        <c:when test="${catNo eq 50}">
            <img src="/resources/img/shopping.png" width="928px" id="bg-image">
        </c:when>
    </c:choose>
        <!-- <img src="/resources/img/namsantower.jpg" width="928px" id="bg-image"> -->
    </div>

    <script>
      var WISH_IDS = []
  </script>
  <script type="application/json" id="js-react-on-rails-context"></script>
</head>
 <body class="body" data-action="index" data-controller-path="kitty/offers" data-controller="offers">
    
    
    
    
  <div id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92">
  <div class="OfferList" data-sticky-container="true">
  <div class="resp-container" style="top: 0px; bottom: 0px;">
  <div class="resp-container--row "><div class="OfferList__Header">
  <div class="breadcrumbs-container">
   <c:choose>
        <c:when test="${catNo eq 1}">
            <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City">전체</div>
            </div>
            
        </c:when>
        <c:when test="${catNo eq 10}">
            <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City"><spring:message code="site.cate1" text="식도락" /></div>
            </div>
            <img class="OfferHeader__Separator" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMi41IiBkPSJNMTIgNmwxMCAxMC4wMDZMMTIuMDExIDI2Ii8+Cjwvc3ZnPgo=" alt="img_separator">
            <div class="breadcrumbs-item">
              <div class="VerticalList">
                <div id="midCategoryTitleBox" class="VerticalList__Header" role="button" tabindex="-1">
                  <span class="VerticalList__Header__Title">전체</span>
                </div>
              </div>
            </div>
        </c:when>
        <c:when test="${catNo eq 20}">
        <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City"><spring:message code="site.cate2" text="역사/문화" /></div>
              </div>
              <img class="OfferHeader__Separator" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMi41IiBkPSJNMTIgNmwxMCAxMC4wMDZMMTIuMDExIDI2Ii8+Cjwvc3ZnPgo=" alt="img_separator">
              <div class="breadcrumbs-item">
              <div class="VerticalList">
              <div id="midCategoryTitleBox" class="VerticalList__Header" role="button" tabindex="-1">
              <span class="VerticalList__Header__Title">전체</span>
                </div>
  </div>
  </div>
        </c:when>
        <c:when test="${catNo eq 30}">
        <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City"><spring:message code="site.cate3" text="명소" /></div>
              </div>
              <img class="OfferHeader__Separator" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMi41IiBkPSJNMTIgNmwxMCAxMC4wMDZMMTIuMDExIDI2Ii8+Cjwvc3ZnPgo=" alt="img_separator">
              <div class="breadcrumbs-item">
              <div class="VerticalList">
              <div id="midCategoryTitleBox" class="VerticalList__Header" role="button" tabindex="-1">
              <span class="VerticalList__Header__Title">전체</span>
                </div>
                </div>
                </div>
        </c:when>
        <c:when test="${catNo eq 40}">
        <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City"><spring:message code="site.cate4" text="액티비티" /></div>
              </div>
              <img class="OfferHeader__Separator" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMi41IiBkPSJNMTIgNmwxMCAxMC4wMDZMMTIuMDExIDI2Ii8+Cjwvc3ZnPgo=" alt="img_separator">
              <div class="breadcrumbs-item">
              <div class="VerticalList">
              <div id="midCategoryTitleBox" class="VerticalList__Header" role="button" tabindex="-1">
              <span class="VerticalList__Header__Title">전체</span>
                </div>
  </div>
  </div>
        </c:when>
        <c:when test="${catNo eq 50}">
        <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City"><spring:message code="site.cate5" text="쇼핑" /></div>
              </div>
              <img class="OfferHeader__Separator" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMi41IiBkPSJNMTIgNmwxMCAxMC4wMDZMMTIuMDExIDI2Ii8+Cjwvc3ZnPgo=" alt="img_separator">
              <div class="breadcrumbs-item">
              <div class="VerticalList">
              <div id="midCategoryTitleBox" class="VerticalList__Header" role="button" tabindex="-1">
              <span class="VerticalList__Header__Title">전체</span>
                </div>
  </div>
  </div>
        </c:when>
   </c:choose>
  

  </div>
  </div>
  </div>
  </div>
  
  <div class="resp-container" style="top: 0px; bottom: 0px;">
      <div class="resp-container--row swiper__row">
          <div class="OfferList__Sidebar ">
            <div class="OfferList__Sticky" data-sticky-class="isSticky">

              <div class="OfferList__Sidebar__Item">
                <div class="offer-category__container border-shadow">
                
                <div class="catAll leademecate offer-category__item active" role="button" tabindex="-1" value="${catNo}">
                  <span class="offer-category__item__label" value ='1'>전체 </span>
                </div>
                
                <c:forEach items='${categoryList}' var="cate" varStatus="list">
                      <div class="catMid leademecate offer-category__item" role="button" tabindex="-1" value="${list.count}">
                        <span class="offer-category__item__label" value ='2'>${cate.cat_name}</span>
                      </div>
                
                </c:forEach>
                        
                        <div class=" offer-category__item " role="button" tabindex="-1">
                            <div class="drop">
                            

                            <span class="offer-category__item__label" id="aaa"><spring:message code="list.city" text="지 역" /></span>
                            <ul class="offer-filter__container border-shadow" id="location">
                                
                                <li><input type="checkbox" value="15" name="loc"><span class="local"><spring:message code="list.Seoul" text="서울" /></span>
                                <input type="checkbox" value="17" name="loc" ><span class="local"><spring:message code="list.Incheon" text="인천" /></span>
                                 <input type="checkbox" value="11" name="loc"><span class="local"><spring:message code="list.Sejong" text="세종" /></span><br></li>
                                <li><input type="checkbox" value="10" name="loc"><span class="local"><spring:message code="list.Daejeon" text="대전" /></span>
                                <input type="checkbox" value="8" name="loc"><span class="local"><spring:message code="list.Dea-gu" text="대구" /></span>
                                <input type="checkbox" value="3" name="loc"><span class="local"><spring:message code="list.Ulsan" text="울산" /></span><br></li>
                                <li><input type="checkbox" value="2" name="loc"><span class="local"><spring:message code="list.Busan" text="부산" /></span>
                                <input type="checkbox" value="5" name="loc"><span class="local"><spring:message code="list.Gwangju" text="광주" /></span>
                                <input type="checkbox" value="1" name="loc"><span class="local"><spring:message code="list.Jeju" text="제주" /></span><br></li>
                                <li><input type="checkbox" value="16" name="loc"><span class="local"><spring:message code="list.Gyeong-gi" text="경기" /></span>
                                <input type="checkbox" value="14" name="loc"><span class="local"><spring:message code="list.Gangwon" text="강원" /></span>
                                <input type="checkbox" value="12" name="loc"><span class="local"><spring:message code="list.Chungbuk" text="충북" /></span><br></li>
                                <li><input type="checkbox" value="13" name="loc"><span class="local"><spring:message code="list.Chungnam" text="충남" /></span>
                                <input type="checkbox" value="9" name="loc"><span class="local"><spring:message code="list.Kyungbuk" text="경북" /></span>
                                <input type="checkbox" value="4" name="loc"><span class="local"><spring:message code="list.Kyungnam" text="경남" /></span><br></li>
                                <li><input type="checkbox" value="7" name="loc"><span class="local"><spring:message code="list.Jeonbuk" text="전북" /></span>
                                <input type="checkbox" value="6" name="loc"><span class="local"><spring:message code="list.Jeonnam" text="전남" /></span><br>
                                <button id="allLocBtn" type="button" class="btn btn-info">전국</button>
                                
                                </li>
                                
                        </ul>
                        </div>
                        </div>
                    </div>
                     
                </div></div></div><div class="OfferList__Items">
                    <div class="FilterTopBar">
                        <div class="FilterTopBar__OrderList hide-on-tablet"><ul class="order-list__container">
                            <li class="order-list__item" role="button" tabindex="-1">
                                <div class="Dot" style="display: inline-block; vertical-align: middle; background-color: rgb(52, 58, 64); border-radius: 4px; width: 4px; height: 4px;">
                                    
                                </div>
                                <span class="order-list__item__label selected">인기순</span>
                            </li>
                            <li class="order-list__item" role="button" tabindex="-1">
                                <div class="Dot" style="display: inline-block; vertical-align: middle; background-color: rgb(206, 212, 218); border-radius: 4px; width: 4px; height: 4px;">
                                </div>
                                <span class="order-list__item__label ">후기순</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="OfferList__Items__Body ">
                <div id='list'>
                    <div class="OfferList__Cards">
                    <c:forEach items='${tourList}' var="list" varStatus="status">
                    <c:choose>
                        <c:when test="${status.index < 5}">
                              
                                       <a class="OfferListCard" href="/app/tour/detail/${list.tno}"  itemprop="itemListElement" itemscope="" itemtype="http://schema.org/Product" data-offer-type="IstanbulTicket" data-offer-id="31644"><div class="OfferListCard__Thumbnail" style="background-image: url( /resources/img/${list.pri_phot});"></div><div class="OfferListCard__Content"><div class="OfferListCard__Content__Category"><span>${list.category.cat_name}</span><span class="hide-on-mobile"><div class="Dot" style="display: inline-block; vertical-align: middle; background-color: rgb(132, 140, 148); border-radius: 2px; width: 2px; height: 2px; margin: 0px 4px;"></div><span>${list.mid_category.cat_name}</span></span></div><div class="OfferListCard__Content__Title"><div class="LinesEllipsis  ">${ list.titl}<wbr></div></div><div class="OfferListCard__Content__Guide"><span class="name">${list.member.name}</span></div><div class="OfferListCard__Content__Review">
                                       <div class='starRating starRating--m starRating--blue'>
                                       <c:forEach var="i" begin="1" end="5">
        <c:choose>
            <c:when test="${i <= list.star}">
                <svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>
                   <path class='starColor' fill='#51ABF3' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'>
                   </path>
                </svg>
            </c:when>
            <c:otherwise>
                <svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>
                   <path fill='#DEE2E6' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'>
                   </path>
                </svg>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </div>
                                       <span class="count">후기 ${list.hits} 개</span><div class="Duration hide-on-mobile"></div></div><div class="OfferListCard__Content__Price"><span class="SalePrice">${list.amt}원</span></div><div class="OfferListCard__Content__Wishlist"></div></div></a>
                                       
                                       
                    
                        </c:when>
                        <c:otherwise>
                        
                        
                                       <a class="OfferListCard" style='display: none;' href="#" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/Product" data-offer-type="IstanbulTicket" data-offer-id="31644"><div class="OfferListCard__Thumbnail" style="background-image: url( /resources/img/${list.pri_phot});"></div><div class="OfferListCard__Content"><div class="OfferListCard__Content__Category"><span>${list.category.cat_name}</span><span class="hide-on-mobile"><div class="Dot" style="display: inline-block; vertical-align: middle; background-color: rgb(132, 140, 148); border-radius: 2px; width: 2px; height: 2px; margin: 0px 4px;"></div><span>${list.mid_category.cat_name}</span></span></div><div class="OfferListCard__Content__Title"><div class="LinesEllipsis  ">${ list.titl}<wbr></div></div><div class="OfferListCard__Content__Guide"><span class="name">${list.member.name}</span></div><div class="OfferListCard__Content__Review">
                                       <div class='starRating starRating--m starRating--blue'>
                                       <c:forEach var="i" begin="1" end="5">
        <c:choose>
            <c:when test="${i <= list.star}">
                <svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>
                   <path class='starColor' fill='#51ABF3' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'>
                   </path>
                </svg>
            </c:when>
            <c:otherwise>
                <svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>
                   <path fill='#DEE2E6' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'>
                   </path>
                </svg>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </div>
                                       <span class="count">후기 ${list.hits} 개</span><div class="Duration hide-on-mobile"></div></div><div class="OfferListCard__Content__Price"><span class="SalePrice">${list.amt}원</span></div><div class="OfferListCard__Content__Wishlist"></div></div></a>
                                       
                              
                        
                        </c:otherwise>
                    </c:choose>
                   
                    </c:forEach>
                                       </div>
                                       
                 </div>          
                                       
                                       
                                     <!--   <div class="OfferList__Pagination">
                                            <div class="Pagination align-center">
                                                <a class="Pagination__Item Pagination__Item--prev disabled" role="button" tabindex="-1">
                                                    <span>이전</span>
                                                </a>
                                                <a class="active Pagination__Item" role="button" tabindex="-1">1</a>
                                                <a class="false Pagination__Item" role="button" tabindex="-1">2</a>
                                                <a class="false Pagination__Item" role="button" tabindex="-1">3</a>
                                                <a class="false Pagination__Item" role="button" tabindex="-1">4</a>
                                                <a class="Pagination__Item Pagination__Item--next disabled" role="button" tabindex="-1">
                                                    <span>다음</span>
                                                </a>
                                            </div>
                                        </div> -->

                                                                    <!-- <div class="OfferList__Loading ">
                                                                    </div> -->
                                                                    </div>
                                                                    </div>
                                                                    <!-- <div class="OfferList__float-menu show-on-tablet  ">
                                                                    <ul class="segment__container">
                                                                    <li class="segment__item" role="button" tabindex="-1">
                                                                    <img class="float-menu__item__image" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTAgMS42aDEuNTcxVi44YzAtLjQ0Mi4zNTItLjguNzg2LS44LjQzNCAwIC43ODYuMzU4Ljc4Ni44di44aDQuNzE0Vi44YzAtLjQ0Mi4zNTItLjguNzg2LS44LjQzNCAwIC43ODYuMzU4Ljc4Ni44di44SDExVjRIMG0wIDFoMTF2N0gwIi8+Cjwvc3ZnPgo=" alt="Calendar">
                                                                    <span class="float-menu__item__label Calendar ">날짜</span>
                                                                    </li>
                                                                    <li class="segment__item" role="button" tabindex="-1">
                                                                    <img class="float-menu__item__image" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTExLjk0OSAxLjMzMmMuMDk2LjIzMy4wNTYuNDMxLS4xMi41OTZMNy42MzUgNi4xMjN2NS4zMTVjMCAuMjM4LS4xMS40MDYtLjMzMi41MDJhLjU5Mi41OTIgMCAwIDEtLjIxMy4wNDMuNTA2LjUwNiAwIDAgMS0uMzgzLS4xNjJMNC41MjggOS42NDJhLjUyMy41MjMgMCAwIDEtLjE2Mi0uMzgzVjYuMTIzTC4xNyAxLjkyOGMtLjE3NS0uMTY1LS4yMTUtLjM2My0uMTE5LS41OTZBLjUwOS41MDkgMCAwIDEgLjU1MyAxaDEwLjg5NGMuMjM4IDAgLjQwNS4xMS41MDIuMzMyeiIvPgo8L3N2Zz4K" alt="Filter">
                                                                    <span class="float-menu__item__label Filter ">필터</span>
                                                                    </li>
                                                                    <li class="segment__item" role="button" tabindex="-1">
                                                                    <img class="float-menu__item__image" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTAgMTFoNlY5SDB2MnpNMCAxdjJoMTJWMUgwem0wIDZoOVY1SDB2MnoiLz4KPC9zdmc+Cg==" alt="Sorting">
                                                                    <span class="float-menu__item__label Sorting ">인기순</span>
                                                                    </li>
                                                                    </ul>
                                                                    </div> -->
                                                                    
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    
                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="OfferList" data-dom-id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92"></script>



                                                                   <!-- 푸터 -->

                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-d9e4d63b-5414-4186-84d3-188fe29c373f">{"b2b":{"status":false,"b2bCompany":null}}</script>

<footer>
        <jsp:include page="../footerTest.jsp"></jsp:include>
    </footer>
                                                                    <div id="popup-mask"></div>
                                                                    <div id="gnb-popup-mask"></div>
                                                                    <script>
                                                                      if (typeof OfferWish !== 'undefined') {
                                                                        OfferWish.check([]);
                                                                    }
                                                                </script>





    
    <script>
     $(document).ready(function(){
         
         //console.log();
         var catNo = ${catNo};
         console.log(catNo);
         var pageNum=5;
         
         $(window).scroll(function() {
        	    var scrollHeight = $(document).height();
        	    var scrollPosition = $(window).height() + $(window).scrollTop();
        	    if ((scrollHeight - scrollPosition) / scrollHeight === 0) {
        	        //$("body").css("background","red");
        	        pageNum += 5;
        	        pagingBase(pageNum);
        	    } else {
        	        //$("body").css("background","white");
        	    }
        	});
         
       $('.catMid').on('click',function(){
           $('.leademecate').attr('class','catMid leademecate offer-category__item');
           $(this).attr('class','catMid leademecate offer-category__item active');
           /* 
           console.log(Number($(this).attr("value"))+Number(${catNo}));
           console.log("=========================");
           console.log($(this));
           console.log(this);
           console.log($(this).attr("value"));
            */
           catNo = Number($(this).attr("value"))+Number(${catNo});
           
           listAjax(catNo);
           
           
       });
       
       $('.catAll').on('click',function(){
           $('.leademecate').attr('class','catMid leademecate offer-category__item');
           $(this).attr('class','catAll leademecate offer-category__item active');

           var obj ={
                   'cat_no' : $(this).attr("value")
           }
           
           $.ajax({
               url:'/app/tour/list.do',
               type:'POST',
               dataType:'JSON',
               data:JSON.stringify(obj),
               contentType:"application/json",
               success:function(data){
                   console.log($(data));
                   $('#midCategoryTitleBox').empty().append("<span class='VerticalList__Header__Title'>전체</span>");
                   $('#list').empty();
                   $(data).each(function(index, item){
                       listDiv($('#list') ,item ,starRating(item.star));
                   });
                   pagingBase(5);
               },
               error:function(){
                   console.log("실패");
               }
           
           });
           
       });
       
       $('input:checkbox[ name="loc"]').on('click', function(){
           console.log(catNo);
           
          var locList = new Array();
          $('input:checkbox[ name="loc"]').each(function(index, item){
              
              if($(item).prop('checked') == true){
                  console.log($(item).val());
                  var location = new Object();
                  location.loc = $(item).val();
                  location.cat_no = catNo;
                  locList.push(location); 
              }
              
          });
              
          $.ajax({
              url:'/app/tour/loclist.do',
              type:'POST',
              dataType:'JSON',
              data:JSON.stringify(locList),
              contentType:"application/json",
              success:function(data){
                  console.log("성공");
                  console.log($(data));
                  $('#list').empty();
                  $(data).each(function(index, item){
                      listDiv($('#list') ,item ,starRating(item.star));
                  });
                  pagingBase(5);
              },
              error:function(){
                  console.log("실패");
                  $('#list').empty();
              }
          
          });          
       });
       
       $('#allLocBtn').on('click', function(){
           $('input:checkbox[ name="loc"]').each(function(index, item){
                $(this).attr('checked', false);
           });
           var catno = ${catNo};
           $('.catMid').each(function(index, item){
               if($(item).hasClass('active')){
                   console.log($(item).attr('value'));
                   catno = Number($(item).attr("value"))+Number(${catNo});
               }
           });
           
           listAjax(catno);
           
       });
       
       function pagingBase(count){
    	   pageNum=count;
           $('.OfferListCard').each(function(index,item){
               $(item).css('display','none');
               if(index < pageNum){
               $(item).css('display','block');
               }
           });
       }
       
       function starRating(star){
           var starDiv = "";
           for(var i=0;i <Math.floor(star);i++){
               starDiv += "<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>"
                   + "<path class='starColor' fill='#51ABF3' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'>"
                   + "</path>"
                   + "</svg>";
           }
           for(var i=0;i < 5 - Math.floor(star);i++){
               starDiv += "<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>"
                   + "<path fill='#DEE2E6' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'>"
                   + "</path>"
                   + "</svg>";
           }
           return starDiv;
       }
       
       function listDiv(area, item, star){
           console.log(item);
           area.append(
                   "<div class='OfferList__Cards'>"
                   +"<a class='OfferListCard' href='/app/tour/detail/" + item.tno + "' itemprop='itemListElement' itemscope='' itemtype='http://schema.org/Product' data-offer-type='IstanbulTicket' data-offer-id='31644'>"
                   + "<div class='OfferListCard__Thumbnail' style='background-image: url(/resources/img/" + item.pri_phot + ");'>"
                   + "</div>"
                   + "<div class='OfferListCard__Content'>"
                   + "<div class='OfferListCard__Content__Category'>"
                   + "<span>" + item.category.cat_name
                   + "</span>"
                   + "<span class='hide-on-mobile'>"
                   + "<div class='Dot' style='display: inline-block; vertical-align: middle; background-color: rgb(132, 140, 148); border-radius: 2px; width: 2px; height: 2px; margin: 0px 4px;'>"
                   + "</div>"
                   + "<span>" + item.mid_category.cat_name + "</span>"
                   + "</span>"
                   + "</div>"
                   + "<div class='OfferListCard__Content__Title'>"
                   + "<div class='LinesEllipsis  '>" + item.titl + "<wbr></div>"
                   + "</div>"
                   + "<div class='OfferListCard__Content__Guide'>"
                   + "<span class='name'>" + item.member.name + "</span>"
                   + "</div>"
                   + "<div class='OfferListCard__Content__Review'>"
                   + "<div class='starRating starRating--m starRating--blue'>"
                   + star
                   + "</div>"
                   + "<span class='count'>후기 " + item.hits + " 개</span>"
                   + "<div class='Duration hide-on-mobile'>"
                   + "</div>"
                   + "</div>"
                   + "<div class='OfferListCard__Content__Price'>"
                   + "<span class='SalePrice'>" + item.amt + "원</span>"
                   + "</div>"
                   + "<div class='OfferListCard__Content__Wishlist'>"
                   + "</div>"
                   + "</div>"
                   + "</a>"
                   + "</div>");
       }
       
       function listAjax(catno){
           var obj ={
                   'cat_no' : catno
           }
           $.ajax({
               url:'/app/tour/list.do',
               type:'POST',
               dataType:'JSON',
               data:JSON.stringify(obj),
               contentType:"application/json",
               success:function(data){
                   $('#list').empty();
                   $(data).each(function(index, item){
                       $('#midCategoryTitleBox').empty().append("<span class='VerticalList__Header__Title'>" + item.mid_category.cat_name + "</span>");
                       listDiv($('#list') ,item ,starRating(item.star));
                   });
                   pagingBase(5);
               },
               error:function(){
                   console.log("실패");
               }
           });
       }
       
    }); 
    
    </script>
   
</body>
</html>