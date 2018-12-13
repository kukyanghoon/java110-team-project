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
<title>LEADME :: 검색</title>
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
    <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
    <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
   
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
.formMargin{margin-top: 30px; margin-bottom: 30px;}
</style>

 
   <header>
    <jsp:include page="headerTest.jsp"></jsp:include>
   </header>


    

    <script>
      var WISH_IDS = []
  </script>
  <script type="application/json" id="js-react-on-rails-context"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
 <body class="body" data-action="index" data-controller-path="kitty/offers" data-controller="offers">
    
    
    
    
  <div id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92">
  <div class="OfferList" data-sticky-container="true">
  <div class="resp-container" style="top: 0px; bottom: 0px;">
  <div class="resp-container--row "><div class="OfferList__Header">
  <div class="breadcrumbs-container">
   
  

  </div>
  </div>
  </div>
  </div>
  
  <div class="resp-container" style="top: 0px; bottom: 0px;">
      <div class="resp-container--row swiper__row">
          <div id="OfferList__Items" class="OfferList__Items" style="height: 1000px;">
                    
                
                   
               <c:forEach items="${searchList}" var='item' varStatus="list">
               <div class="offer-result clearfix gtm-search-offer" style="padding-left: 0px; width:1330px;">
   <%-- <a href=# target="_blank">
      <div class="wrapper">
         <div class="offer-title">${item.titl}</div>
         <div class="offer-subtitle">${item.intro }</div>
         <div class="offer-info clearfix">
            <div class="city-container"><img class="icon" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAgCAMAAAA/gEgKAAAASFBMVEUAAAC+vr7Kysq9vb2+vr7CwsK/v7+9vb2/v7++vr7AwMC9vb2+vr69vb3AwMC/v7++vr69vb29vb29vb2/v7+9vb2/v7+9vb1SRXcDAAAAF3RSTlMA8Qb2xBpf2mxMIZrRtlQ0lOXJxndlKEejpE0AAADFSURBVCjPbZBbFoQgDEPTIqIjiG/2v9M5CuWgcL8goU0LEnpwhsi4QaNETyEzFdZIoYBG0YfwYUjvQ8VTo6k26M7JuarrVJ4A0PKoZ4B7KdeSTD88/EjyXTz0SPTx7mBifxaDY45BLO2Q6WJrqLahYNutLJZ2+ALfHtcDtrWgBXC2vuS800yoMM8sc23MMvkH2epSb11dSBxv44DAW6lvDEHWklUL5moiYRJ9wRveo74zPuj11leNCq9CUB4NRqIRTbjs/wc0FiN+wLftkAAAAABJRU5ErkJggg==" width="12px"><span>서울</span></div>
            <div class="score-container">
               <div class="star-container" title="gorgeous"><img alt="1" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="2" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="3" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="4" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="5" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous"><input name="score" type="hidden" value="5" readonly=""></div>
               <span class="score">후기 ${list.cmt_cnt}</span>
            </div>
            <div class="price-container"><span class="unit">1인</span><span class="price ">₩ ${list.amt}</span></div>
         </div>
      </div>
      <div class="img-container"><img class="offer-img" src='/resources/img/'><mark class="hide-in-production offer-score hide">1123.9341</mark></div>
   </a> --%>
               
               <a href='/app/tour/detail/${item.tno}' target="_blank">
      <div class="wrapper">
         <div class="offer-title">${item.titl}</div>
         <div class="offer-subtitle">${item.tour_intro}</div>
         <div class="offer-info clearfix">
            <div class="city-container"><img class="icon" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAgCAMAAAA/gEgKAAAASFBMVEUAAAC+vr7Kysq9vb2+vr7CwsK/v7+9vb2/v7++vr7AwMC9vb2+vr69vb3AwMC/v7++vr69vb29vb29vb2/v7+9vb2/v7+9vb1SRXcDAAAAF3RSTlMA8Qb2xBpf2mxMIZrRtlQ0lOXJxndlKEejpE0AAADFSURBVCjPbZBbFoQgDEPTIqIjiG/2v9M5CuWgcL8goU0LEnpwhsi4QaNETyEzFdZIoYBG0YfwYUjvQ8VTo6k26M7JuarrVJ4A0PKoZ4B7KdeSTD88/EjyXTz0SPTx7mBifxaDY45BLO2Q6WJrqLahYNutLJZ2+ALfHtcDtrWgBXC2vuS800yoMM8sc23MMvkH2epSb11dSBxv44DAW6lvDEHWklUL5moiYRJ9wRveo74zPuj11leNCq9CUB4NRqIRTbjs/wc0FiN+wLftkAAAAABJRU5ErkJggg==" width="12px"><span>서울</span></div>
            <div class="score-container">
            <!--    <div class="star-container" title="gorgeous">
               
               <img alt="1" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="2" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="3" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="4" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous">&nbsp;<img alt="5" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAMAAADto6y6AAAAV1BMVEUAAABltvdltvdpuv9tu/9ktvZktvdktvdktvdmuPhlt/eA1f9ltfdktfZltfZktvZltfdktvdltvdltvdktvdktvhluPdktvlntvhnt/ZltfhmzP9ktfZI6hcbAAAAHHRSTlMA8oMVEMupn41HQQb26M/OxcS5fnlwXVRNOSYKXGRQdwAAAJVJREFUKM9tkTcWxCAMBWXAgI1zDrr/OVdAYbEw5Uyj9wWMtoUy81z2DWJTDDViXfIXElchDD4MuT8xcHIn70PoPoZei+OW3m5jhRnVuIGasMCkAN4l98sLhNP/XjsIOJN6433Ecm/5wTxIPjgPfPydh50Fw4NJFieqdaUR0u070kIBKEGp+/wTNBHT8z3VSna6DQ/+AUloF6+6QMTgAAAAAElFTkSuQmCC" title="gorgeous"><input name="score" type="hidden" value="5" readonly="">
               
               </div>
             -->   
               <c:forEach var="i" begin="1" end="5">
        <c:choose>
            <c:when test="${i <= item.star}">
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
               <span class="score" style='padding-left: 10px; '>후기 ${item.cmt_cnt}</span>
            </div>
            <div class="price-container"><span class="unit">1인</span><span class="price ">₩ ${item.amt}</span></div>
         </div>
      </div>
      <div class="img-container"><img class="offer-img" src="/resources/img/${item.pri_phot}"><mark class="hide-in-production offer-score hide">1123.9341</mark></div>
   </a>
              </div>
              </c:forEach>
              
                
                
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    
                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="OfferList" style="height: 1000px;" data-dom-id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92"></script>



                                                                   <!-- 푸터 -->

                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-d9e4d63b-5414-4186-84d3-188fe29c373f">{"b2b":{"status":false,"b2bCompany":null}}</script>

<footer>
        <jsp:include page="footerTest.jsp"></jsp:include>
    </footer>
                                                                    <div id="popup-mask"></div>
                                                                    <div id="gnb-popup-mask"></div>
                                                                    <script>
                                                                      if (typeof OfferWish !== 'undefined') {
                                                                        OfferWish.check([]);
                                                                    }
                                                                </script>





    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   
</body>
</html>