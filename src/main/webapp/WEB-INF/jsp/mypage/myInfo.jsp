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
<title>LEADME :: <spring:message code="myInfo.title" text="프로필 관리" /></title>
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
    <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
    <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
   
    <script src="/resources/js/application.89bde0a7d84a7bf87143.js"></script>
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-0d3dd8da661782e0fe69539e0c61b980912a8ee2c42e367b29dde4bcccc9dea6.css" />
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-01ea8c7c94c68924dc912350d530fb7e62968738f000a46cec5b9f8c3187e0c5.js"></script><style type="text/css"></style>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src='https://www.google.com/recaptcha/api.js'></script>

<script type="text/javascript">

var person = false;


        var onloadCallback = function() {
            grecaptcha.render('g-recaptcha', {
                'sitekey' : '<c:out value="6LdhbXkUAAAAADWF5ykxTLHiI9cnlazMp0ZD3ACv" />',
                'callback' : function(response) {
                    console.log("aaaa");
                    console.log(response);
                    /* document.getElementById('recaptchaResponse').value = response; */
                    
                    var obj = {
                            'response' : response
                    }
                    
                    $.ajax({
                        url : "/app/goodbye/recapchaRequest.do",
                        type : "POST",
                        dataType:'JSON',
                        contentType:"application/json",
                        data : JSON.stringify(obj),
                        success : function(data) {
                            console.log(data);
                            console.log('사람이다! 사람이 나타났다!!!!!');
                            person = true;
                        },
                        error : function(){
                        }
                    });
                    
                    
                    
                    
                },
                'theme' : 'light'
            });
        }
        
        
        
</script>
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>

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
    <jsp:include page="../headerTest.jsp"></jsp:include>
   </header>


<style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    .modal-backdrop {z-index: -1;}
    .modal-dialog{z-index: 9999;}
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
      
     
      .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
      
      
      .form-group{
          padding: 30px;
      }      
      .dateSeletor{
          display: inline-block;
      }
      .emailAuthUse{
          display: inline-block;
      }
  </style>

<style> 
/* 마스크 뛰우기 */
#mask {  
    position:absolute;  
    z-index:9000;  
    background-color:#000;  
    display:none;  
    left:0;
    top:0;
} 
/* 팝업으로 뜨는 윈도우 css  */ 
.window{
    display: none;
    position:absolute;  
    left:50%;
    top:50px;
    margin-left: -500px;
    width:1000px;
    height:500px;
    background-color:#FFF;
    z-index:10000;   
 }
.form-control{
     margin-top: 2px;
}
</style>
    

    <script>
      var WISH_IDS = []
  </script>
  <script type="application/json" id="js-react-on-rails-context"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
 <body class="body" data-action="index" data-controller-path="kitty/offers" data-controller="offers">
    
    
    
    
  <div id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92">
  <div class="OfferList" data-sticky-container="true" style="padding-bottom: 0px;">
  <div class="resp-container" style="top: 0px; bottom: 0px;">
  <div class="resp-container--row "><div class="OfferList__Header">
  <div class="breadcrumbs-container">
   <c:choose>
        <c:when test="${catNo eq 1}">
            <div class="breadcrumbs-item">
              <div class="OfferHeader OfferHeader__City"><spring:message code="site.cate0" text="전체" /></div>
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
                  <span class="VerticalList__Header__Title"><spring:message code="site.cate0" text="전체" /></span>
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
              <span class="VerticalList__Header__Title"><spring:message code="site.cate0" text="전체" /></span>
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
              <span class="VerticalList__Header__Title"><spring:message code="site.cate0" text="전체" /></span>
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
              <span class="VerticalList__Header__Title"><spring:message code="site.cate0" text="전체" /></span>
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
              <span class="VerticalList__Header__Title"><spring:message code="site.cate0" text="전체" /></span>
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
                
                <div class="catMid leademecate offer-category__item active" role="button" tabindex="-1" value="2">
                        <span class="offer-category__item__label" value ='2'><spring:message code="myInfo.title" text="프로필 관리" /></span>
                </div>
                <div id='changePwBtn' class="catMid leademecate offer-category__item" role="button" tabindex="-1" value="2">
                        <span class="offer-category__item__label" value ='2'><spring:message code="myInfo.changePw" text="비밀번호 변경" /></span>
                </div>
                <div id="myTourBtn" class="catMid leademecate offer-category__item" role="button" tabindex="-1" value="2">
                        <span class="offer-category__item__label" value ='2'><spring:message code="myInfo.myTour" text="내 활동" /></span>
                </div>
                
                
                    </div>
                     
                </div></div></div><div class="OfferList__Items" style="height: 1000px;">
                    
                <div class="OfferList__Items__Body " style="border:height: 1000px;">
                
  <div class="row content" style="height: 1000px;">

    <div class="col-sm-12"> 
      
      <div class="bg-1">
          <div class="container text-center col-sm-12">
          <form  id="uploadForm" method="post" enctype="multipart/form-data">
                <input id='imgBtn' type="file" name='file1' multiple accept="image/*" style ="display : none">
            </form>
          <form>
    
            
            <img src="/resources/img/${sessionScope.memberInfo.photo}" id="userImage" class="img-circle" alt="userImage" width="150" height="150" 
            onclick='document.all.file1.click();'>
          

           <c:choose>
            <c:when test="${sessionScope.memberInfo.path eq 'google'}">
            
            <div class="form-group">
            <label class="control-label col-sm-3" for="name"><spring:message code="guideSignup.name" text="이름" /></label>
            <div class="col-sm-8">
              <input type="name" class="form-control" id="name" value='${sessionScope.memberInfo.name }' readonly="readonly">
            </div>
          </div> 
            
            <div class="form-group" style="margin-bottom:20px;">
                    <label class="control-label col-sm-3" for="email"><spring:message code="guideSignup.email" text="이메일" /></label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" value='${sessionScope.memberInfo.email}' readonly="readonly">
                        </div>
                    </div>
            
            
                <div class="form-group">
                    <label class="control-label col-sm-3" style="padding-top: 0px;" for="email"><spring:message code="myInfo.sns" text="SNS 연동" /></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" style="padding-top: 3px;" for="email">Facebook</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email"></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" style="padding-top: 3px;" for="email">Google</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true' checked>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
            </c:when>
            <c:when test="${sessionScope.memberInfo.path eq 'facebook'}">
            
            <div class="form-group">
            <label class="control-label col-sm-3" for="name"><spring:message code="guideSignup.name" text="이름" /></label>
            <div class="col-sm-8">
              <input type="name" class="form-control" id="name" value='${sessionScope.memberInfo.name }' readonly="readonly">
            </div>
          </div> 
            
            <div class="form-group" style="margin-bottom:20px;">
                    <label class="control-label col-sm-3" for="email"><spring:message code="guideSignup.email" text="이메일" /></label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" value='${sessionScope.memberInfo.email}' readonly="readonly">
                        </div>
                    </div>
            
            
                <div class="form-group">
                    <label class="control-label col-sm-3" style="padding-top: 0px;" for="email"><spring:message code="myInfo.sns" text="SNS 연동" /></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Facebook</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true' checked>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email"></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Google</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
            </c:when>
            <c:otherwise>
            
            <div class="form-group formMargin">
            <label class="control-label col-sm-3" for="name"><spring:message code="guideSignup.name" text="이름" /></label>
            <div class="col-sm-8">
              <input type="name" class="form-control" id="name" value='${sessionScope.memberInfo.name }'>
            </div>
          </div>              


          <c:choose>
            <c:when test="${sessionScope.memberInfo.cert_email eq 'N'}">
            <div class="form-group has-error formMargin" style="margin-bottom:20px;">
              <label class="control-label col-sm-3" for="email"><spring:message code="guideSignup.email" text="이메일" /></label>
              <div class="col-sm-9">
                <input type="email" class="form-control emailAuthUse" id="email" style='margin-top: 2px;' value='${sessionScope.memberInfo.email }' style="width: 70%; float: left;">
                <button id="emailAuthBtn" type="button" class="btn btn-info emailAuthUse" style="margin-top: 7px; margin-right: 50px;"><spring:message code="myInfo.emailBtn" text="이메일 인증" /></button>
              </div>
            </div> 
            </c:when>
            <c:otherwise>
                <div class="form-group formMargin" style="margin-bottom:20px;">
                    <label class="control-label col-sm-3" for="email"><spring:message code="guideSignup.email" text="이메일" /></label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" value='${sessionScope.memberInfo.email}'>
                        </div>
                    </div>  
            </c:otherwise>
          </c:choose>
            
            
                <div class="form-group formMargin">
                    <label class="control-label col-sm-3" style="padding-top: 0px;" for="email"><spring:message code="myInfo.sns" text="SNS 연동" /></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Facebook</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email"></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Google</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>
            </c:otherwise>
          </c:choose>
          
          <div class="form-group formMargin">  
            <label class="control-label col-sm-3" for="sel1"><spring:message code="myInfo.prefer" text="선호 언어" /></label>
                 <div class="col-sm-8">
                  <select class="form-control" id="lang" style="width: 200px;">
                    <option value= "ko"><spring:message code="myInfo.korean" text="한국어" /></option>
                    <option value= "en"><spring:message code="myInfo.english" text="영어" /></option>
                  </select>    
                 </div>
          </div>  

           <div class="form-group">
             <div class="col-sm-11">
                  <button id='modifyBtn' type="button" class="btn btn-info" style="float: right; margin-top: 30px;"><spring:message code="myInfo.save" text="저장하기" /></button>
                  <button id='PhotoModifyBtn' type="button" class="btn btn-info" style="float: right; margin-top: 30px; margin-right: 10px;"><spring:message code="myInfo.photo" text="사진 등록" /></button>
              </div>
            </div>
 
            <div class="form-group" style="font-size: 10px;">
                <a href="#" class="openMask" data-toggle="modal" data-target="#gmyModal" style="font-size: 12px;"><spring:message code="myInfo.bye" text="회원 탈퇴" /></a>
            </div>
 
 
 
        </form>
        </div>
      </div>
      
    </div>
  </div>
                
                
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
         <div id ="wrap"> 
        
    </div>
    <!-- 광 -->
    <div class="modal fade" style="z-index:9999;" id="gmyModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="height: 430px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"> <spring:message code="myInfo.bye" text="회원 탈퇴" /> </h4>
        </div>
        <div class="modal-body center-block" style="width: 70%">
          <p style="font-style: italic; text-indent: -2em; font-size: 20px;">
              <spring:message code="myInfo.caution" text="주의" />!!<br/>
          </p>
          <p style="font-size: 12px;">
              <spring:message code="myInfo.caution2" text="LEADME \uACC4\uC815\uC744 \uC0AD\uC81C\uD558\uC2DC\uBA74 \uD504\uB85C\uD544 \uBC0F \uC18C\uC911\uD55C \uC5EC\uD589\uC758 \uAE30\uB85D\uB4E4\uC774 \uBAA8\uB450 \uC0AC\uB77C\uC9C0\uAC8C \uB429\uB2C8\uB2E4.<br/>\uD310\uB9E4\uC790\uC758 \uACBD\uC6B0, \uC815\uC0B0\uC774 \uC644\uB8CC\uB418\uAE30 \uC804\uC5D0 \uD0C8\uD1F4\uB97C \uD558\uC2DC\uBA74 \uAE08\uC804\uC0C1\uC758 \uBD88\uC774\uC775\uC774\uBC1C\uC0DD\uD560 \uC218 \uC788\uC2B5\uB2C8\uB2E4.<br>" />
          </p>
          
          <div class="form-group" style="padding: 0px;">
            <label class="control-label col-sm-5" for="email" style="padding-top: 8px;"><spring:message code="myInfo.checkPw" text="비밀번호 확인" /></label>
            <div class="col-sm-6" style="margin-bottom: 20px; width: 160px;">
              <input type="password" class="form-control" id="lastPassword" placeholder="">
            </div>
          </div> 
   
        <div class="form-group" style="padding: 0px;">

            <div id="g-recaptcha"></div>

          </div> 
           
           
            
        </div>
        <div class="modal-footer" style="margin-top: 60px;">
         <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 47%; float: left;"><spring:message code="myInfo.again" text="다시 생각 해보기" /></button>
          <button type="button" id="goodbyeBtn" class="btn btn-default" style="width: 47%"><spring:message code="myInfo.bye" text="회원 탈퇴" /></button>
        </div>
      </div>
      
    </div>
  </div>
      <form:hidden path="recaptchaResponse"/>
                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="OfferList" style="height: 1000px;" data-dom-id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92"></script>


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
   
    var emailValid = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var nameValid = /^[가-힣a-zA-Z]{2,30}$/;
    var name = $('#name');
    var email = $('#email');
    
    $('#modifyBtn').on('click', function(){
       
        if(!validCheck(nameValid,name)){
           console.log("name");
           $('#name').focus();
           return;
       }
       if(!validCheck(emailValid,email)){
           console.log("email");
           $('#email').focus();
           return;
       }
       
       console.log("pass!!!!");
       console.log($('#name').val());
       console.log($('#email').val());
       console.log($('#lang').val()); 
       console.log(${sessionScope.memberInfo.no});
       
       var userInfo = {
               'no': ${sessionScope.memberInfo.no},
               'name': $('#name').val(),
               'email': $('#email').val(),
               'lang': $('#lang').val()
       }
       
       $.ajax({
           url:'/app/user/userProfileModify.do',
           type:'POST',
           dataType:'JSON',
           data:JSON.stringify(userInfo),
           contentType:"application/json",
           success:function(data){
               console.log("바바밤");
               console.log(data);
               //location.href = "../main";
           }
       
       });
       
    });
    
    $('#PhotoModifyBtn').on('click', function(){
       console.log('된다된다'); 
       fileSubmit();
    });
    
    function validCheck(valid,value){
        if(valid.test(value.val())){
            return true;
        }
        return false;
    }

    $('#imgBtn').on('click', function(){
       console.log("111"); 
       
       
    });
    
    function fileSubmit() {
        var formData = new FormData($('#uploadForm')[0]);
        console.log($('#uploadForm'));
        console.log($('#uploadForm')[0]);
        console.log(formData.get('file1').name);
        console.log("33333");
           $.ajax({
            type : 'post',
            url : '/app/user/userFile.do',
            data : formData,
            processData : false,
            contentType : false,
            success : function(data) {
                swal("사진 업로드 완료", "", "success");
                console.log(data);
                console.log(data.image);
                var a = ("/resources/img/" + data.image);
                $('#userImage').attr('src',a);
            },
            error : function(error) {
                swal("사진 업로드 실패", "", "error")
                console.log(error);
                console.log(error.status);
            }
        });
    }


    $('#emailAuthBtn').on('click', function(){
       console.log("aaaa"); 
       
       var obj = {
               'no' : ${memberInfo.no},
               'email' : '${memberInfo.email}'
       }
       
       $.ajax({
           url:'/app/auth/emailAuth.do',
           type:'POST',
           dataType:'JSON',
           data:JSON.stringify(obj),
           contentType:"application/json",
           success:function(data){
               swal("인증 이메일을 보냈습니다.", "", "success");
           },
           error:function(){
               
           }
       
       }); 
       
    });
    
});

</script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
    
    $(document).ready(function(){
    	$('#myTourBtn').on('click', function(){
    		location.href = '/app/mypage/myTour';
    	});
    	
    	
    	
    	$('#changePwBtn').on('click', function(){
    		location.href = '/app/user/changepw';
    	});
    	
    	$('#goodbyeBtn').on('click', function(){
            console.log("okok");
            console.log(person);
            if(!person){
                console.log('당신은 사람이 아니오!!!');
                return;
            }
            console.log("다크템플러!");
            
            var password = {
                    'no' : ${sessionScope.memberInfo.no},
                    'password' : $('#lastPassword').val()
            }            
            
            $.ajax({
                url : "/app/goodbye/goodBye.do",
                type : "POST",
                dataType:'JSON',
                contentType:"application/json",
                data : JSON.stringify(password),
                success : function(data) {
                    console.log(data);
                    location.href = '/app/main';
                },
                error : function(){
                }
            });
            
            
        });
    });
    
    
    </script>
    <script>
    
    </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    
</body>
</html>