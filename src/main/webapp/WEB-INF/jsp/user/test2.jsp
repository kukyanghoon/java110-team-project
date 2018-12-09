<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html class=" flexbox"><head>

<meta charset="UTF-8">
<meta content="Content-type: text/html; charset=UTF-8" name="http-equiv">
<meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta content="ko" name="locale">
<meta content="KRW" name="currency">

<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon-precomposed">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" rel="apple-touch-icon" sizes="76x76">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png" rel="apple-touch-icon" sizes="120x120">
<link href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png" rel="apple-touch-icon" sizes="152x152">
<title>리드미 :: 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.4385e182f137c2993c60.css">
<!-- <link rel="stylesheet" type="text/css" href="css/custom1.css"> -->
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-0d3dd8da661782e0fe69539e0c61b980912a8ee2c42e367b29dde4bcccc9dea6.css" />
<![endif]-->


<style>
#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: block;  
 opacity: 0.7;  
 background-color: #fff;
 z-index: 99;  
 text-align: center; } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 45%; 
 z-index: 100; }
</style>



</head>
<body class="body" data-action="new" data-controller-path="kitty/traveler/reviews" data-controller="reviews" data-sign-in="">
<jsp:include page="../headerTest.jsp"></jsp:include>
<div class="global-alert-box">
</div>

<main class="traveler">
            <div class="traveler-body">
                <div class="traveler-review-container box clearfix">
                    <div class="review-header-title">
                        후기작성

                    </div>
                    <form id="uploadForm" class="review-content-wrapper" enctype="multipart/form-data" action="/traveler/reservations/1200604/review" accept-charset="UTF-8" method="post">
                        <input name="utf8" type="hidden" value="✓">
                        <input type="hidden" name="authenticity_token" value="NSin8trYeWUJddkG/jO6XEZcuVVJppsRhY05QwNktfeQNTmmgqfACtEZq7W3nTNyH3Qx2iPGvMYA9zH6cV00iA==">
                        <div class="review-travel-info-wrapper">
                            
                            <!-- <a href="/offers/22565" target="_blank"> -->
                                <div class="review-travel-info-detail">${tour.titl}</div>
                            <!-- </a> -->
                        </div>

                        <div class="review-divider"></div>
                        <div id="stepOne">
                            <div class="review-container review-rating-container">
                                <div class="review-title">
                                    여행이 만족스러우셨나요?
                                    <span class="required">필수</span>
                                </div>
                                <div class="rating-container2" id="ratingContainer2" style="cursor: pointer;">
                                    <script type="text/javascript">
                                        $('#ratingContainer2').raty({
                                          click: function(score, evt) {
                                            //alert('ID: ' + this.attr('id') + '\nscore: ' + score + '\nevent: ' + evt);
                                            console.log(score + " 선택 하셨다!!!!!!");
                                            $('#ratingContainer2').attr('value', score);
                                        }
                                    });



                                    </script>

                                    <input name="score" type="hidden">
                                </div>
                                <div class="rating-detail" id="ratingDetail"></div>
                            </div>

                            

                          
                        </div>
                        
                            <div class="review-container review-writing-container">
                                <div class="review-title">
                                    다른 여행자들을 위한 상품평과 팁
                                    <span class="required">필수</span>
                                </div>
                                <textarea class="form-control" id="reviewTextarea" name="message" placeholder="이 상품을 구매하려는 여행자에게 도움이 될만한 팁이나 조언을 담아 작성해주세요." style="overflow: hidden visible; overflow-wrap: break-word;"></textarea>
                            </div>

                            <div class="review-container review-photo-container">
                                <div class="review-title">사진 등록</div>
                                <div class="review-desc">현지에서 촬영하신 사진 중 베스트샷을 등록해보세요</div>
                                <div  class="review-photo-wrapper ladda-button" data-spinner-size="35" data-style="slide-down" id="uploadPhoto">
                                    <img id="img-preview" class="img-preview">
                                    <img  class="no-photo-img ladda-label" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/finish/ic_photo@2x-4b383fb2d5709e4d101b49f60490c091c045afdebe00c8fa9d4fe5e4c40cd55b.png" width="29px">
                                    <input id="photoSelecter"  name="photo" type="file" onchange="readURL1(this)" >
                                    <input name="photo_destroy" type="hidden">
                                    <div class="review-delete-container" id="photoDelete">
                                        <img class="review-delete-icon" height="10px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/finish/ic_delete_photo@2x-296e095b9268ec0761925ce25ef7d5670925922eaca3308c1ddda2b77a5551e5.png" width="12px">
                                        <div class="review-delete-text">삭제하기</div>
                                    </div>
                                </div>
                            </div>
                            <!-- 
                            <div class="review-container review-secret-container">
                                <div class="review-title">
                                    마이리얼트립 님에게만 보내는 메시지
                                </div>
                                <textarea class="form-control" name="comment_to_guide" placeholder="이 글은 가이드/셀러에게 직접 전해집니다. 개선사항이나 개인적으로 전할 메시지가 있다면 작성해주세요." style="overflow: hidden visible; overflow-wrap: break-word;"></textarea>
                            </div>
 -->
                            <div class="review-btn-container">
                                <a class="btn btn-silver" id="cancelSubmit">취소</a>
                                <button class="btn btn-blue next" id="commentBtn" type="button">등록</button>
                            </div>
                      
                    </form>

                </div>

            </div>

    </main>


<!-- 푸터 -->
<c:choose>
        <c:when test="${lang == 'en'}">
            <jsp:include page="../footerEng.jsp"/>    
        </c:when>
        <c:otherwise>
            <jsp:include page="../footer.jsp"/>
        </c:otherwise>
</c:choose>
<!-- 푸터 끝 -->


<div id="popup-mask"></div>
<div id="gnb-popup-mask"></div>

<!--  공통 스크립트 -->

<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-7d27ea8334aef60e7e45f2e267dd1aee4667b38dd60ca09967b0a5fc4c5f44bf.js"></script>
<script src="/resources/js/util.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.1/dist/sweetalert2.all.min.js"></script>
<script type="text/javascript">

  if(navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //모바일(스마트폰+태블릿)일 때
    window.userAgent = "t";
    if(navigator.userAgent.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
      //스마트폰일 때
      window.userAgent = "m";
    }
  }
</script>


</body>
</html>