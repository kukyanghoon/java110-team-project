<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html class='no-js css-menubar' lang='en'>

        <head>
            <meta charset='utf-8'>
            <meta content='IE=edge' http-equiv='X-UA-Compatible'>
            <meta content='width=device-width, initial-scale=1.0, user-scalable=0' name='viewport'>
            <meta content='파트너 페이지' name='description'>
            <meta content='' name='author'>
            <title>LEADME :: 여행 등록 III</title>
            <meta name="csrf-param" content="authenticity_token" />
            <meta name="csrf-token" content="IJnRuhU4GljPoMKiqyR9pN/8uKGpd8t50XhRbS0ar0s6EhtkmlCEhRVWX8eBxdxI7fF/oovIF3rCNNbkWcI9Fg==" />
            <link href='https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico' rel='shortcut icon'>
            <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
            <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
            <link rel="stylesheet" media="screen" href="/resources/css/datepicker.css" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="/resources/js/datepicker.js"></script>
            <script src="/resources/js/i18n/datepicker.en.js"></script>
            <script src="/resources/js/i18n/datepicker.ko.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.1/dist/sweetalert2.all.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            
            <style>
                .date-container {
                    padding: 16px;
                }
                
                .datepicker--content{
                	display:block;
                	}
                	.panel-title{
                	   text-align: center;
                	}
            </style>
        </head>

        <body class='site-menubar-unfold' data-action='edit' data-controller-path='partner/offers' data-controller='offers' data-sign-in>
<div class='page-content container'>
            <div class='col-md-12'>
                <div class='widget'></div>
                <form data-validation="false" data-istour="true" data-isticket="false" data-ishotdeal="false" data-islodging="false" data-offer-status="temp" id="offerForm" class="panel panel-bordered" action="/partner/offers/46144" accept-charset="UTF-8" method="post">
                    <input name="utf8" type="hidden" value="&#x2713;" />
                    <input type="hidden" name="_method" value="put" />
                    <input type="hidden" name="authenticity_token" value="eyvWsuGTwRl1kUxHUWEN/YbvpE0RyqMlL6nTru9sH5phoBxsbvtfxK9n0SJ7gKwRtOJjTjN1fyY85VQnm7SNxw==" />
                    <div class='panel-heading'>
                        <div class='panel-title'>여행 등록</div>
                    </div>
                    <div class='panel-body'>
                        <div class='pearls row' data-by-row='true' data-plugin='matchHeight' role='tablist'>
                            <div class='col-xs-4 current pearl' data-target='#step1' role='tab'>
                                <a class="pearl-number" href="/partner/offers/46144/edit?step=1">1</a>
                                <span class='pearl-title'> <a
							href="/partner/offers/46144/edit?step=1">기본정보</a>
						</span>
                            </div>
                            <div class='col-xs-4 current pearl' data-target='#step2' role='tab'>
                                <a class="pearl-number" href="/partner/offers/46144/edit?step=2">2</a>
                                <span class='pearl-title'> <a
							href="/partner/offers/46144/edit?step=2">코스정보</a>
						</span>
                            </div>
                            <div class='col-xs-4 current pearl' data-target='#step3' role='tab'>
                                <a class="pearl-number" href="/partner/offers/46144/edit?step=3">3</a>
                                <span class='pearl-title'> <a
							href="/partner/offers/46144/edit?step=3">가격정보</a>
						</span>
                            </div>
                        </div>

                        <div class='wizard-content'>
                            <input name='step' type='hidden' value='3'>
                            <div class='form-group clearfix default-message'>
                                <div class='title'>여행에 대한 가격을 설정해주세요.</div>
                                <div class='guide-box'>
                                    <p class='help-block'>
                                        • 안내에 따라 여행 내용을 정확하게 설명하여 주세요.
                                        <br />
                                    </p>
                                    <p class='help-block'>* 필수항목</p>
                                </div>
                            </div>
                            <hr class='divider'>

                            <div class='form-group clearfix' data-commission-rate='20.0'>
                                <label class='control-label col-xs-12 margin-bottom-15 font-weight-600'>
                                    가격 설정 <span>*</span>
                                </label>
                                <div class='col-xs-12 margin-bottom-15'>
                                    <p class='help-block'>
                                        <br />• 가격 책정 전, 같은 도시 내 다른 가이드들의 가격 정책을 살펴보시는 것을 권장합니다.
                                        <br />• 가격의 자릿수 구분을 위해 [,]이나 [.]을 사용하지 말고 숫자만 입력해주세요. 숫자 뒷부분이 인식되지 않습니다.
                                        <br />
                                    </p>
                                </div>
                                <div class='col-xs-12'>
                                    <div class='input-group col-xs-12 form-group' data-desc='<span class="font-weight-600">[간단한 가격 설정시 주의사항]</span><br/><br/>• [여행규모]에서 [개별여행] 을 선택하셨을 경우 전체 투어에 참여하길 원하는 여행자의 최소/최대 인원을 작성해주세요.<br/><br/>• [여행규모]에서 [단체여행] 을 선택하셨을 경우 [최소 인원] 이상의 인원이 한번에 예약할 때에만 해당 투어를 예약할 수 있습니다. [최소 인원] 설정에 주의해주세요.<br/>'>
                                        <div class='margin-bottom-15'>
                                            <div class='radio-custom radio-primary clearfix'>
                                                <input checked class='col-xs-1' id='priceSingleRange' name='price_type' type='radio' value='single_range'>
                                                <label class='col-xs-12' for='priceSingleRange'>
                                                    <div class='col-xs-12'>
                                                        <div class='widget widget-shadow widget-border'>
                                                            <div class='widget-header bg-cyan-100 blue-grey-500 padding-15 clearfix'>
                                                                간단한 가격 설정</div>
                                                            <div class='widget-body'>
                                                                <div class='row'>
                                                                    <div class='col-md-1 col-xs-2 padding-0'></div>
                                                                    <div class='col-md-2 col-xs-5 padding-left-0'>
                                                                        <div class='form-group clearfix'>
                                                                            <div class='control-label'>최대 인원</div>
                                                                            <input class='form-control' name='range_price[single][][max_travelers]' placeholder='최대 인원' type='number' value='10' id='max-person'>
                                                                        </div>
                                                                    </div>
                                                                    <div class='col-md-7 col-xs-12'>
                                                                        <div class='form-group clearfix'>
                                                                            <div class='control-label'>1인당 가격</div>
                                                                            <div class='input-with-selectbox row'>
                                                                                <div class='col-xs-5 padding-right-0'>
                                                                                    <div class='form-control' name='range_price[single][][currency_code]'>

                                                                                        <option selected value='KRW'>KRW (₩)</option>

                                                                                    </div>
                                                                                </div>
                                                                                <div class='col-xs-7 padding-left-5'>
                                                                                    <input class='form-control' name='range_price[single][][amount]' id='price' type='number' value='0'>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class='row'>
                                                                    <div class='col-xs-12'>
                                                                        <p class='help-block'>
                                                                            • 인원 수에 관계 없이 1인당 여행요금이 고정되어 있는 가격 정책입니다.
                                                                            <br />• 여행 1회 진행 시 본인이 수용할 수 있는 최소, 최대 인원을 설정해주세요.
                                                                            <br />
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class='col-xs-12 top-buffer'></div>
                            </div>

                            <hr class='divider'>
                          <div class='form-group clearfix'
                          data-desc='<span class="font-weight-600">코스 설명 예시</span><br/><br/>"아치 모양이 아름다운 베네치아의 첫 번째 다리, 리알토 다리위에서 베네치아 운하를 감상하고 다리 위에 모여 있는 점포들을 구경합니다."<br/>'>
                          <label class='control-label col-xs-12'>여행 가능 날짜<span> *</span></label>
                          </div>
                            <div class="date-container">
                                <input type="hidden" id="dateInput" name="tour_date" class="datepicker-here" data-language='ko' />
                            </div>

                            <hr class='divider'>
                            <div class='form-group clearfix' data-desc='<span class="font-weight-600">필수 안내 예시</span><br/><br/>• 여행자보험 가입을 권유하는 문구<br/>• 어린이 요금 관련 안내글<br/>• 투어 중 체력 소모량<br/>• 송수신기 사용과 관련한 이어폰 지참 안내문구 (미술관 투어 시)<br/>'>
                                <label class='control-label col-xs-12'> 필수 안내 <span>*</span><br>
                                </label>
                                <div class='col-xs-12'>
                                    <textarea class='form-control' name='offer[attention]' id='req_inf' placeholder='• 옷차림, 준비물에 관해 안내해주세요.
                            • 여행자가 여행보험을 들 수 있도록 권장해주세요.
                            • 차량투어를 진행한다면 차량 종류, 승차 가능 인원수, 베이비 시트 여부에 관해 안내해주세요.
                            ' rows='6' type='text'></textarea>
                                    <div class='col-xs-12'>
                                        <p class='help-block'>
                                            • 위 사항은 여행자에게 당부하거나 중요하게 안내하고 싶은 사항에 관해 적어주세요.
                                            <br />

                                        </p>
                                    </div>
                                </div>
                            </div>

                            <hr class='divider'>

                        </div>
                        <div class='wizard-buttons'>
                            <a class='btn btn-default btn-outline' href='' role='button'>이전 단계로</a>

                            <input class='btn btn-primary btn-outline pull-right' id='save' formnovalidate='0' id='save' name='save' role='button' type='button' value='등록하기'>
                        </div>
                    </div>

                </form>

            </div>
            </div>
            <script>
                $(document).ready(function() {
                    $('#save').on('click', function() {
                        var aaa = {
                            'amt': $('#price').val(),
                            'req_inf': $('#req_inf').val(),
                            'mx_pn' : $("#max-person").val(),
                            'tour_dt' : $("#dateInput").val()
                        }
                        console.log($('#price').val());
                        console.log($('#req_inf').val());
                        console.log($('#max-person').val());
                        console.log($('#dateInput').val());

                        $.ajax({
                            url: 'page3.do',
                            type: 'POST',
                            dataType: 'JSON',
                            data: JSON.stringify(aaa),
                            contentType: "application/json",
                            success: function(data) {
                                console.log($(data));
                                swal("등록 완료", "", "success").then((value) => {
                                    location.href="/app/tour/list"
                                });
                            },
                            error: function() {
                                console.log("실패");
                                swal("등록 실패", "필수 정보가 누락되었습니다", "error");
                            }
                        });
                    });
                });
            </script>
            <script>
                var disabledDays = [0, 6];서울구청
                function priceUpdate(){
                    /* console.log($("#person-picker option:selected").val()); */
                    $('#total-price').text(numberWithCommas($("#person-picker option:selected").val() * $('#person-price').val()) );
                    $('#tot-amt').val($("#person-picker option:selected").val() * $('#person-price').val());
                }
                
                
                $('#go-payment').on("click",goPayment);
                
                function goPayment(){
                  console.log('aaa');
                  
                  if ( $('#dateInput').val() == ''){
                    swal({
                        type: 'warning',
                        text: '여행 날짜를 선택해 주세요',
                        title: '입력 항목 누락'
                    })
                    $('#dateInput').focus();
                    return;
                  }
                  
                  if($('#person-picker option:selected').val() == ''){
                    swal({
                        type: 'warning',
                        text: '인원을 선택해 주세요',
                        title: '입력 항목 누락'
                    })
                    $('#person-picker').focus();
                    return;
                  }
                  
                  document.detailForm.tot_price.value = $('#tot-amt').val();
                  document.detailForm.submit();
                }
                
            </script>


            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

<script>
$("#datecheck").on('click',function(){
	var a = $("#dateInput").val();
	console.log(a);
	
});
	
</script>

<script>
	$("#save").on('click',function(){
		var a = $("#dateInput").val();
		var b = $("#max-person").val();
		var c = $("#price").val();
		var d = $("#req_inf").val();
		console.log(a);
		console.log(b);
		console.log(c);
		console.log(d);
	});
</script>
  <!--  상품 페이지 -->
  <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
        </body>

        </html>