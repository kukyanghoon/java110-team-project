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
<title>LEADME :: <spring:message code="myTour.title" text="내 활동" /></title>
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
    <link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
    <link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
    <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
   
    <script src="/resources/js/application.89bde0a7d84a7bf87143.js"></script>
    
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
    <jsp:include page="../headerTest.jsp"></jsp:include>
   </header>


    

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
                
                <div id="goneBtn" class="catMid leademecate offer-category__item" role="button" tabindex="-1" value="2">
                        <span class="offer-category__item__label" value ='2'><spring:message code="myTour.past" text="지나간 여행" /></span>
                </div>
                <div id="commingBtn" class="catMid leademecate offer-category__item" role="button" tabindex="-1" value="2">
                        <span class="offer-category__item__label" value ='2'><spring:message code="myTour.upcoming" text="다가올 여행" /></span>
                </div>
                <div id="cancelBtn" class="catMid leademecate offer-category__item" role="button" tabindex="-1" value="2">
                        <span class="offer-category__item__label" value ='2'><spring:message code="myTour.canceled" text="취소된 여행" /></span>
                </div>
                
                    </div>
                     
                </div></div></div><div id="OfferList__Items" class="OfferList__Items" style="height: 1000px;">
                    
                
                
                
                
                
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    
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





    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
    
    $(document).ready(function(){
        $('#commingBtn').on('click', function(){
           console.log("aaaaa"); 
           
           $('.catMid').attr('class','catMid leademecate offer-category__item');
           $(this).attr('class','catMid leademecate offer-category__item active');
           
           
           var obj ={
                   'mno': ${memberInfo.no}
           }
           
           $.ajax({
               url:'/app/mypage/coming.do',
               type:'POST',
               dataType:'JSON',
               data:JSON.stringify(obj),
               contentType:"application/json",
               success:function(data){
                   $('#OfferList__Items').empty();
                   $(data).each(function(index,item){
                       console.log(item);
                       console.log(item.tour.titl);
                       console.log(item.tour.pri_phot);
                       console.log(item.tour.mid_category.cat_name);
                       console.log(item.tot_pay);
                       console.log(item.tday);
                       console.log(item.dDay);
                       $('#OfferList__Items').append(
                               "<div class='planned-container'>"+
                               "<div class='planned-country-container'>"+
                               "<img style='object-fit: cover; height: 200px; width: 100%;' src=/resources/img/"+
                               item.tour.pri_phot + 
                               ">"+
                               "<div class='planned-cover'></div>"+
                               "<div class='planned-info content-middle'>"+
                                   "<div class='text-lg'> "+
                                    //item.tour.mid_category.cat_name + 
                                    item.tour.titl +
                                   "</div>"+
                                   "<div class='text-lg planned-d-day'>D - "+
                                    item.dDay + 
                                   "</div>"+
                               "</div>"+
                           "</div>"+
                           "<div class='planned-reservation'>"+
                               "<div class='traveler-reservation box clearfix' data-date='2018-12-08' data-src='/traveler/reservations/2121109'>"+
                                   "<div class='detail-wrapper' style='font-size: 150%; border-bottom: none; padding-bottom: 15px;'>"+
                                       "<div class='status'>"+
                                           "<div class='status-success text-lg'>Ready</div>"+
                                       "</div>"+
                                       "<div class='info'>"+
                                           "<div class='text-lg title'>"+
                                          item.tour.titl +
                                                   "</div>"+
                                           "<div class='detail text-md'>"+
                                               "<div class='row'>"+
                                                   "<div class='col-xs-3 name'>Date</div>"+
                                                   "<div class='col-xs-9 value'>"+
                                                        item.tday +
                                                   "</div>"+
                                               "</div>"+
                                               "<div class='row'>"+
                                                   "<div class='col-xs-3 name'>Guide</div>"+
                                                   "<div class='col-xs-9 value'>"+
                                                   item.tour.member.name +
                                                   "</div>"+
                                               "</div>"+
                                               "<div class='row'>"+
                                                   "<div class='col-xs-3 name'> Amount</div>"+
                                                   "<div class='col-xs-9 value'>$ "+
                                                     item.tot_pay +
                                                   "</div>"+
                                               "</div>"+
                                           "</div>"+
                                       "</div>"+
                                   "</div>"+
                                   "<div class='traveler-message-container' style='padding-top: 0px;'>"+
                                       "<div>"+
                                           "<img alt='예약내역' class='icon item-inline' height='21px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/invoice/ic_notice@2x-2c79035b3272ddf36629f7be1f7d5516af6f3871d49b963fe33d4b91763fdd3a.png' width='17px'>"+
                                           "<div class='message-wrapper'>"+
                                               "<div class='text-md' style='font-size: 130%; padding-bottom: 50px;'>Have a nice tour!</div>"+
                                               "<div class='status-message-warning text-sm'>"+
                                               "</div>"+
                                           "</div>"+
                                               "<button id='tourCancelBtn" +index+ "' type='button' class='btn btn-info' style='float: right'>Cancel</button>"+
                                       "</div>"+
                                   "</div>"+
                                   "<a class='arrow-link' href='/app/tour/detail/"
                                   + item.tour.tno +
                                   "'>"+
                                       "<img alt='예약내역' class='icon item-inline' height='21px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_arrow@2x-36047570d74d5ea07df4eb4b2d4febc6a8aba4244e06c4b84f13654b8b6dc1dd.png' width='12px'>"+
                                   "</a>"+
                               "</div>"+
                           "</div>"+
                       "</div>");
                       
                       
                       $('#tourCancelBtn'+index).on('click', function(){
                           console.log("취소해주세염@!"); 
                           console.log("해당 투어번호 : " + item.tour.tno);
                           console.log("해당 날짜 : " + item.tday);
                           
                           var cancelTour = {
                                   'tno' : item.tour.tno,
                                   'tday' : item.tday
                           }
                           
                           $.ajax({
                               url:'/app/tour/cancel.do',
                               type:'POST',
                               dataType:'JSON',
                               data:JSON.stringify(cancelTour),
                               contentType:"application/json",
                               success:function(data){
                                   
                               }
                           });
                           
                           
                           
                        });
                       
                       
                   });
                   /* console.log(data);
                   console.log(data.tour);
                   console.log(data.tour.titl);
                   console.log(data.tour.pri_photo);
                   console.log(data.tour.mid_category.cat_name);
                   console.log(data.tot_pay);
                   console.log(data.tday);
                   console.log(data.dDay);  */
                   
               },
               error:function(){
                   console.log("실패");
               }
           });
        });
        
        
        
        $('#goneBtn').on('click', function(){
            console.log("sss");
            

            $('.catMid').attr('class','catMid leademecate offer-category__item');
            $(this).attr('class','catMid leademecate offer-category__item active');
            
            
            var obj ={
                    'mno': ${memberInfo.no}
            }
            
            $.ajax({
                url:'/app/mypage/gone.do',
                type:'POST',
                dataType:'JSON',
                data:JSON.stringify(obj),
                contentType:"application/json",
                success:function(data){
                    var link = "";
                   console.log(data);
                   $('#OfferList__Items').empty();
                   $(data).each(function(index, item){
                        link = " ";
                        if(item.tourAvail != null){
                           link = "<a class='btn btn-blue btn-outline hide-on-mobile' href="+
                           item.tourAvail.tour_albm + 
                           ">Album</a>"+
                           "<a class='btn btn-blue btn-outline show-on-mobile' href="+
                           item.tourAvail.tour_albm + 
                           ">Album</a>";
                       }
                       
                       $('#OfferList__Items').append(
                               "<div class='traveler-finished-reservation box clearfix'>"+
                               "<div class='box-header clearfix'>"+
                       "<div class='offer-photo-container'>"+
                           "<div class='offer-photo-wrapper'>"+
                               "<img style='object-fit:cover; max-height: 20rem;' src=/resources/img/"+
                               item.tour.pri_phot + 
                                       ">"+
                           "</div>"+
                       "</div>"+
                       "<div class='info'>"+
                          "<a class='text-lg title' href=/app/tour/detail/"+
                          item.tno +
                           " style='font-size: 200%'>"+
                           item.tour.titl +
                           "</a>"+
                           "<div class='detail text-md' style='font-size: 150%;'>"+
                               item.tday +
                           "</div>"+
                       "</div>"+
                   "</div>"+
                   "<div class='box-btns'>"+
                       link+
                       "<a class='btn btn-blue hide-on-mobile' href='/app/tour/comment/mno=" + ${memberInfo.no} + ";tno=" + item.tno + "'>Write a review</a>"+
                       "<a class='btn btn-blue show-on-mobile' href='/app/tour/comment/mno=" + ${memberInfo.no} + ";tno=" + item.tno + "'>Review</a>"+
                   "</div>"+
               "</div>");
                   });
                   
                },
                error:function(){
                    console.log("실패");
                }
            });
        
        });
        
        $('#cancelBtn').on('click', function(){
            console.log("sss");
            

            $('.catMid').attr('class','catMid leademecate offer-category__item');
            $(this).attr('class','catMid leademecate offer-category__item active');
            
            
            var obj ={
                    'mno': ${memberInfo.no}
            }
            
            $.ajax({
                url:'/app/mypage/cancel.do',
                type:'POST',
                dataType:'JSON',
                data:JSON.stringify(obj),
                contentType:"application/json",
                success:function(data){
                    console.log(data);
                    $('#OfferList__Items').empty();
                    $(data).each(function(index, item){
                        $('#OfferList__Items').append(
                                "<div class='traveler-reservation box clearfix' data-date='2018-12-08' data-src='/traveler/reservations/2121109'>" +
                    "<div class='detail-wrapper' style='font-size: 150%; padding-top: 30px;'>" +
                        "<div class='status'>" +
                            "<div class='status-default text-lg'>Canceled</div>" +
                        "</div>" +
                        "<div class='info'>" +
                            "<div class='text-lg title'>" +
                            item.tour.titl +
                                    "</div>" +
                            "<div class='detail text-md'>" +
                                "<div class='row'>" +
                                    "<div class='col-xs-3 name'>Date</div>" +
                                    "<div class='col-xs-9 value'>" +
                                        item.tday +
                                    "</div>" +
                                "</div>" +
                                "<div class='row'>" +
                                    "<div class='col-xs-3 name'>Guide</div>" +
                                    "<div class='col-xs-9 value'>" +
                                        item.tour.member.name +
                                    "</div>" +
                                "</div>" +
                                "<div class='row'>" +
                                    "<div class='col-xs-3 name'>Amount</div>" +
                                    "<div class='col-xs-9 value'>$ " +
                                    item.tot_pay +
                                    "</div>" +
                                "</div>" +
                            "</div>" +
                        "</div>" +
                    "</div>" +
                    "<div class='cancel-wrapper traveler-message-container' style='margin-bottom: 45px;'>" +
                        "<div class='text-md item-inline title'></div>" +
                        "<div class='text-md item-inline message'>" +
                            "<div class='message-inner' style='font-size: 130%;'>A full refund will be processed within 3 days prior to the tour date.</div>" +
                        "</div>" +
                    "</div>" +
                    "<a class='arrow-link' href=/app/tour/detail" +
                    item.tour.tno + 
                    ">" +
                        "<img alt='예약내역' class='icon item-inline' height='21px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_arrow@2x-36047570d74d5ea07df4eb4b2d4febc6a8aba4244e06c4b84f13654b8b6dc1dd.png' width='12px'>" +
                    "</a>" +
                "</div>"
                                );
                    });
                    
                },
                error:function(){
                    console.log("실패");
                }
            });
        
        });
        
        
        $('#goneBtn').trigger('click');
        
        
        
        
    });
    
    
    </script>
    
   
</body>
</html>