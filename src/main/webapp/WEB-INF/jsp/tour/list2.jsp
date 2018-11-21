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
    <script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
    <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css">
    <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-7b75ddbcbc29ee6675e55a815248aafac2d3add88bef4eb1270c80bbef92b020.css">
   

    <link rel="stylesheet" media="screen" href="/resources/css/application.89bde0a7d84a7bf87143.css">
    <script src="/resources/js/application.89bde0a7d84a7bf87143.js"></script>
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
    background-image: url('C:\\Users\\bit\\git\\java110-team-project\\html\\img\\namsantower.jpg');
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



<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/16/intl/ko_ALL/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/16/intl/ko_ALL/util.js"></script>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div class="global-alert-box">
    </div>

    <div id="mrt-header"></div>
    <script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/offers?city=Seoul\u0026country=Korea%2C+Republic+of\u0026group_category=experience","location":"/offers?city=Seoul\u0026country=Korea%2C+Republic+of\u0026group_category=experience","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/offers","search":"city=Seoul\u0026country=Korea%2C+Republic+of\u0026group_category=experience","httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>
    

    <div id="background-image">

        <img src="C:\\Users\\bit\\git\\java110-team-project\\html\\img\\namsantower.jpg" width="928px" id="bg-image">
    </div>

    <script>
      var WISH_IDS = []
  </script>
  <script type="application/json" id="js-react-on-rails-context"></script>
</head>
 <body class="body" data-action="index" data-controller-path="kitty/offers" data-controller="offers">
    
    
    
    
  <div id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92"><div class="OfferList" data-sticky-container="true"><div class="resp-container" style="top: 0px; bottom: 0px;"><div class="resp-container--row "><div class="OfferList__Header"><a class="OfferHeader OfferHeader__Country" href="https://www.myrealtrip.com/offers?country=Korea, Republic of">대한민국</a><div class="breadcrumbs-container"><div class="breadcrumbs-item"><div class="OfferHeader OfferHeader__City">서울</div></div><img class="OfferHeader__Separator" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMi41IiBkPSJNMTIgNmwxMCAxMC4wMDZMMTIuMDExIDI2Ii8+Cjwvc3ZnPgo=" alt="img_separator"><div class="breadcrumbs-item"><div class="VerticalList"><div class="VerticalList__Header" role="button" tabindex="-1"><span class="VerticalList__Header__Title">투어&amp;티켓</span><img class="VerticalList__Header__Image " src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTYgOWw2IDYgNi02eiIvPgo8L3N2Zz4K" alt="arrow-down"></div></div></div></div></div></div></div>
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
                            

                            <span class="offer-category__item__label" id="aaa">지 역</span>
                            <ul class="offer-filter__container border-shadow" id="location">
                            
                                <li><input type="checkbox"  checked ><span class="local">서울</span>
                                <input type="checkbox"><span class="local">인천</span>
                                 <input type="checkbox"><span class="local">세종</span><br></li>
                                <li><input type="checkbox"><span class="local">대전</span>
                                <input type="checkbox"><span class="local">대구</span>
                                <input type="checkbox"><span class="local">울산</span><br></li>
                                <li><input type="checkbox"><span class="local">부산</span>
                                <input type="checkbox"><span class="local">광주</span>
                                <input type="checkbox"><span class="local">제주</span><br></li>
                                <li><input type="checkbox"><span class="local">경기</span>
                                <input type="checkbox"><span class="local">강원</span>
                                <input type="checkbox"><span class="local">충북</span><br></li>
                                <li><input type="checkbox"><span class="local">충남</span>
                                <input type="checkbox"><span class="local">경북</span>
                                <input type="checkbox"><span class="local">경남</span><br></li>
                                <li><input type="checkbox"><span class="local">전북</span>
                                <input type="checkbox"><span class="local">전남</span><br></li>

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
                    <c:forEach items='${tourList}' var="list">
                    
                     
                                       <a class="OfferListCard" href="/offers/31644" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/Product" data-offer-type="IstanbulTicket" data-offer-id="31644"><div class="OfferListCard__Thumbnail" style="background-image: url(${list.pri_phot});"></div><div class="OfferListCard__Content"><div class="OfferListCard__Content__Category"><span>${list.category.cat_name}</span><span class="hide-on-mobile"><div class="Dot" style="display: inline-block; vertical-align: middle; background-color: rgb(132, 140, 148); border-radius: 2px; width: 2px; height: 2px; margin: 0px 4px;"></div><span>${list.mid_category.cat_name}</span></span></div><div class="OfferListCard__Content__Title"><div class="LinesEllipsis  ">${ list.titl}<wbr></div></div><div class="OfferListCard__Content__Guide"><span class="name">${list.member.name}</span></div><div class="OfferListCard__Content__Review">
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
                                       
                                       
                    
                    </c:forEach>
                                       </div>
                                       
                           </div>          
                                       
                                       
                                       
                                       <div class="OfferList__Pagination"><div class="Pagination align-center"><a class="Pagination__Item Pagination__Item--prev disabled" role="button" tabindex="-1">
                                                                    <span>이전</span></a><a class="active Pagination__Item" role="button" tabindex="-1">1</a><a class="false Pagination__Item" role="button" tabindex="-1">2</a><a class="false Pagination__Item" role="button" tabindex="-1">3</a><a class="false Pagination__Item" role="button" tabindex="-1">4</a><a class="Pagination__Item Pagination__Item--next disabled" role="button" tabindex="-1"><span>다음</span></a></div></div><div class="OfferList__Loading "></div></div></div><div class="OfferList__float-menu show-on-tablet  "><ul class="segment__container"><li class="segment__item" role="button" tabindex="-1"><img class="float-menu__item__image" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTAgMS42aDEuNTcxVi44YzAtLjQ0Mi4zNTItLjguNzg2LS44LjQzNCAwIC43ODYuMzU4Ljc4Ni44di44aDQuNzE0Vi44YzAtLjQ0Mi4zNTItLjguNzg2LS44LjQzNCAwIC43ODYuMzU4Ljc4Ni44di44SDExVjRIMG0wIDFoMTF2N0gwIi8+Cjwvc3ZnPgo=" alt="Calendar"><span class="float-menu__item__label Calendar ">날짜</span></li><li class="segment__item" role="button" tabindex="-1"><img class="float-menu__item__image" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTExLjk0OSAxLjMzMmMuMDk2LjIzMy4wNTYuNDMxLS4xMi41OTZMNy42MzUgNi4xMjN2NS4zMTVjMCAuMjM4LS4xMS40MDYtLjMzMi41MDJhLjU5Mi41OTIgMCAwIDEtLjIxMy4wNDMuNTA2LjUwNiAwIDAgMS0uMzgzLS4xNjJMNC41MjggOS42NDJhLjUyMy41MjMgMCAwIDEtLjE2Mi0uMzgzVjYuMTIzTC4xNyAxLjkyOGMtLjE3NS0uMTY1LS4yMTUtLjM2My0uMTE5LS41OTZBLjUwOS41MDkgMCAwIDEgLjU1MyAxaDEwLjg5NGMuMjM4IDAgLjQwNS4xMS41MDIuMzMyeiIvPgo8L3N2Zz4K" alt="Filter"><span class="float-menu__item__label Filter ">필터</span></li><li class="segment__item" role="button" tabindex="-1"><img class="float-menu__item__image" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM0OTUwNTYiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTAgMTFoNlY5SDB2MnpNMCAxdjJoMTJWMUgwem0wIDZoOVY1SDB2MnoiLz4KPC9zdmc+Cg==" alt="Sorting"><span class="float-menu__item__label Sorting ">인기순</span></li></ul></div></div></div></div></div>
                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="OfferList" data-dom-id="OfferList-react-component-e75ec749-a9a2-4944-a6a5-ae8c2ab32e92"></script>



                                                                   <!-- 푸터 -->

                                                                    <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-d9e4d63b-5414-4186-84d3-188fe29c373f">{"b2b":{"status":false,"b2bCompany":null}}</script>


                                                                    <div id="popup-mask"></div>
                                                                    <div id="gnb-popup-mask"></div>
                                                                    <script>
                                                                      if (typeof OfferWish !== 'undefined') {
                                                                        OfferWish.check([]);
                                                                    }
                                                                </script>



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



<!—  리스팅페이지 —>
<script type="text/javascript">
    var items = [];

    items.push("225");
    items.push("43365");
    items.push("25307");

    window.criteo_q.push(
        { event: "setAccount", account: 17926 },
        { event: "setHashedEmail", email: window.userEmail },
        { event: "setSiteType", type: window.userAgent },
        { event: "viewList", item: items }
        );
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
              'ecomm_pagetype': 'searchresults',
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
    
    <script>
     $(document).ready(function(){
       $('.catMid').on('click',function(){
           $('.leademecate').attr('class','leademecate offer-category__item');
           $(this).attr('class','leademecate offer-category__item active');

           console.log(Number($(this).attr("value"))+Number(${catNo}));
           var obj ={
                   'cat_no' : Number($(this).attr("value"))+Number(${catNo})
           }
           
           $.ajax({
               url:'list.do',
                type:'POST',
               dataType:'JSON',
               data:JSON.stringify(obj),
               contentType:"application/json",
               success:function(data){
                   console.log($(data));
                   $('#list').empty();
                   $(data).each(function(index, item){
                       
                       listDiv($('#list') ,item ,starRating(item.star));
                       
                   });
               },
               error:function(){
                   console.log("실패");
               }
           
           });
           
           
           
       });
       
       $('.catAll').on('click',function(){
           $('.leademecate').attr('class','leademecate offer-category__item');
           $(this).attr('class','leademecate offer-category__item active');

           var obj ={
                   'cat_no' : $(this).attr("value")
           }
           
           $.ajax({
               url:'listAll.do',
                type:'POST',
               dataType:'JSON',
               data:JSON.stringify(obj),
               contentType:"application/json",
               success:function(data){
                   console.log($(data));
                   $('#list').empty();
                   $(data).each(function(index, item){
                       listDiv($('#list') ,item ,starRating(item.star));
                   });
               },
               error:function(){
                   console.log("실패");
               }
           
           });
           
           
           
       });
       
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
                   +"<a class='OfferListCard' href='#' itemprop='itemListElement' itemscope='' itemtype='http://schema.org/Product' data-offer-type='IstanbulTicket' data-offer-id='31644'>"
                   + "<div class='OfferListCard__Thumbnail' style='background-image: url(" + item.pri_phot + ");'>"
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
       
       
       
    }); 
    
    </script>
   
</body>
</html>