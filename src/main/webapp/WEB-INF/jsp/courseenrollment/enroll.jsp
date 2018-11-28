<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>파트너 페이지 | LEADME 리드미</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-b2b3ec7a443b9e7a9b7ec7bafcb9479a5433b522844cc66fbb0b5014f2c1fc03.css" />
<script
	src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
<script
	src="/resources/js/application-0a1f0d84b41d048d5930089311ad8e11e301bd606ee17fa9b2c5b3d74f7bec4a.js"></script>
	<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style type="text/css">

        input[type=file] {
        
            display: none;
        }

        .my_button {
            display: inline-block;
            width: 200px;
            text-align: center;
            padding: 10px;
            background-color: #006BCC;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .imgs_wrap {

            border: 1px solid #A8A8A8;
            margin-top: 30px;
            margin-bottom: 30px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .imgs_wrap img {
            max-width: 150px;
            margin-left: 10px;
            margin-right: 10px;
        }
        div.col-md-9{
        	vertical-align : middel;
        }
    </style>
</head>
<body>
	<div class='page-content container-fluid'>
		<div class='row'>
			<div class='col-md-9'>
				<div class='widget'></div>
				<form data-validation="false" data-istour="true"
					data-isticket="false" data-ishotdeal="false" data-islodging="false"
					data-offer-status="temp" id="offerForm"
					class="panel panel-bordered" action="/partner/offers/46144"
					accept-charset="UTF-8" method="post">
					<input name="utf8" type="hidden" value="&#x2713;" /><input
						type="hidden" name="_method" value="put" /><input type="hidden"
						name="authenticity_token"
						value="TAOvsxei/QDfF2iPbMHKFWm80rDcUunLcWf5pIaZx4lWiGVtmMpj3QXh9epGIGv5W7EVs/7tNchiK34t8kFV1A==" />
					<div class='panel-heading'>
						<div class='panel-title'>여행 등록</div>
					</div>
					<div class='panel-body' style="background-color: saddlebrown;">
						<div class='pearls row' data-by-row='true'
							data-plugin='matchHeight' role='tablist'>
							<div class='col-xs-4 current pearl' data-target='#step1'
								role='tab'>
								<a class="pearl-number" href="/partner/offers/46144/edit?step=1">1</a>
								<span class='pearl-title'> <a
									href="/partner/offers/46144/edit?step=1">기본정보</a>
								</span>
							</div>
							<div class='col-xs-4 pearl' data-target='#step2' role='tab'>
								<a class="pearl-number" href="/partner/offers/46144/edit?step=2">2</a>
								<span class='pearl-title'> <a
									href="/partner/offers/46144/edit?step=2">코스정보</a>
								</span>
							</div>
							<div class='col-xs-4 pearl' data-target='#step3' role='tab'>
								<a class="pearl-number" href="/partner/offers/46144/edit?step=3">3</a>
								<span class='pearl-title'> <a
									href="/partner/offers/46144/edit?step=3">가격정보</a>
								</span>
							</div>
						</div>
						<div class='wizard-content'>
							<input name='step' type='hidden' value='1'>
							<div class='form-group clearfix default-message'>
								<div class='title'>당신만의 특별한 여행을 만들어 보세요.</div>

							</div>
							<hr class='divider'>
							<div class='form-group clearfix'
								data-desc='* 카테고리 예시<br/>레스토랑: 식사 이용권 상품<br/>액티비티: 스포츠, 수상레저 상품<br/>여행편의: 통역, 픽업/샌딩, 유심/와이파이, 짐 보관 서비스 등<br/>즐길거리: 나머지 카테고리에 포함되지 않은 상품으로 요트, 크루즈, 그림그리기, 기모노체험 등<br/>'
								data-name='offer[category]'>
								<label class='control-label col-xs-12' for='category'>
									카테고리 <span>*</span>
								</label>
								<div class='col-xs-12'>
									<div class='testimonial testimonial-top margin-bottom-10'>
										<div class='testimonial-content margin-top-10'>
											<p>
												• 아래의 카테고리 중 1개만 선택이 가능합니다.<br />• 여행을 가장 잘 표현하는 카테고리를
												선택해주세요.<br />
											</p>
										</div>
									</div>
								</div>
								<div class='col-xs-12'>

									<div class='check-item-container'>
										<div class='radio-custom radio-primary'>
											<input id='first_category' name='offer[category]'
												type='radio' value='10'> <label for='10'>식도락</label>
										</div>
										<div class='radio-custom radio-primary'>
											<input id='second_category' name='offer[category]'
												type='radio' value='20'> <label for='20'>역사/문화</label>
										</div>
										<div class='radio-custom radio-primary'>
											<input id='third_category' name='offer[category]'
												type='radio' value='30'> <label for='30'>명소</label>
										</div>
										<div class='radio-custom radio-primary'>
											<input id='fourth_category' name='offer[category]'
												type='radio' value='40'> <label for='40'>액티비티</label>
										</div>
										<div class='radio-custom radio-primary'>
											<input id='fifth_category' name='offer[language_list][]'
												type='radio' value='51'> <label for='51'>쇼핑</label>
										</div>
									</div>
								</div>

							</div>
							<hr class='divider'>
							<div class='form-group clearfix'
								data-desc='• 투어 중 잠시 사용되는 언어일 경우 선택하지 않으셔도 됩니다.<br/>• 통역 서비스일 경우에는 여행자에게는 한국어를 사용하시기 때문에 [한국어]를 선택해주세요.<br/>• 해당 투어의 진행 언어를 여러가지 선택할 수 있을 경우 복수 선택해주세요.<br/>'
								id="division">
								<label class='control-label col-xs-12' for='language_list'>
									중분류 카테고리 <span>*</span>
								</label>
								<div class='col-xs-12'>
									<div class='check-item-container language-list'
										id="first_division" style="display: none">
										<div class='item-group radio-custom radio-primary'>
											<input id='ko' name='offer[language_list][]' type='radio'
												value='11'> <label for='11'>전통</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='en' name='offer[language_list][]' type='radio'
												value='12'> <label for='12'>고급</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='es' name='offer[language_list][]' type='radio'
												value='13'> <label for='13'>일반</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='de' name='offer[language_list][]' type='radio'
												value='14'> <label for='14'>채식</label>
										</div>
									</div>
									<div class='check-item-container language-list'
										id="second_division" style="display: none">
										<div class='item-group radio-custom radio-primary'>
											<input id='en' name='offer[language_list][]' type='radio'
												value='21'> <label for='21'>고궁</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='ko' name='offer[language_list][]' type='radio'
												value='22'> <label for='22'>박물관</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='es' name='offer[language_list][]' type='radio'
												value='23'> <label for='23'>유적지</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='de' name='offer[language_list][]' type='radio'
												value='24'> <label for='24'>민속마을</label>
										</div>
									</div>
									<div class='check-item-container language-list'
										id="third_division" style="display: none">
										<div class='item-group radio-custom radio-primary'>
											<input id='ko' name='offer[language_list][]' type='radio'
												value='31'> <label for='31'>랜드마크</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='en' name='offer[language_list][]' type='radio'
												value='32'> <label for='32'>자연</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='es' name='offer[language_list][]' type='radio'
												value='33'> <label for='33'>테마거리</label>
										</div>

									</div>
									<div class='check-item-container language-list'
										id="fourth_division" style="display: none">
										<div class='item-group radio-custom radio-primary'>
											<input id='ko' name='offer[language_list][]' type='radio'
												value='41'> <label for='41'>문화체험</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='en' name='offer[language_list][]' type='radio'
												value='42'> <label for='42'>스포츠</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='es' name='offer[language_list][]' type='radio'
												value='43'> <label for='43'>트래픽/하이킹</label>
										</div>
										<div class='item-group radio-custom radio-primary'>
											<input id='de' name='offer[language_list][]' type='radio'
												value='44'> <label for='44'>채식</label>
										</div>
									</div>


								</div>

							</div>
							<hr class='divider'>
							<div class='form-group clearfix'
								data-desc='&lt;span class=&quot;font-weight-600&quot;&gt;제목 예시&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&quot;가우디 필수코스! 바르셀로나 반나절 코스&quot;&lt;br/&gt;&quot;영화 미드나잇인파리 명소 따라 파리 곳곳 다녀보기&quot;&lt;br/&gt;&lt;br/&gt;주의: 맞춤법에 맞게 작성하여주세요. 특수문자를 사용하지 마세요.&lt;br/&gt;'>
								<label class='control-label col-xs-12' for='offerTitle'>
									여행 제목 <span>*</span>
								</label>
								<div class='col-xs-12'>
									<input class='form-control required' id='offerTitle_title'
										name='offer[title]' type='text'>
								</div>
								<div class='form-group clearfix'>
									<div class='col-xs-12 guide-box'>
										<p class='help-block'>
											• 여행 주제를 정확하고 간결하게 표현해주세요.<br /> • 지역명이 포함된 제목은 상품 노출에 더
											효과적입니다. (도쿄, 산책하는 여행 / 샌프란시스코! 요세미티 당일치기 등)<br />
										</p>
									</div>
								</div>
							</div>

							<div class='form-group clearfix'
								data-desc='• 본인의 경험과 관심사를 바탕으로 여행을 기획해 보세요.&lt;br/&gt;• 해당 내용은 진행될 여행의 내용과 정확하게 일치해야 합니다.&lt;br/&gt;• 같은 도시에서 판매되는 다른 상품도 참고해보세요.&lt;br/&gt;'>
								<label class='control-label col-xs-12' for='offerIntroduction'>
									여행 소개 <span>*</span>

								</label>
								<div class='col-xs-12'>
									<textarea class='form-control' id='offerIntroduction'
										name='offer[introduction]'
										placeholder='• 상품 작성 예시
                                 [매력 포인트 - 투어의 매력 포인트에 관해 간단히 소개해주세요]
                                 ex) 서울을 소개합니다. 서울은 대한민국의 수도이며 경제적 문화적 중심지이기도 합니다. 서울에서 여러분께 저만이 알고 있는 특별한 여행지들을 소개할게요
                                 [투어 코스 - 구체적인 코스와 각각의 소요 시간에 관해 간단히 설명해주세요]
                                 ex)
                                 1. 서촌 골목을 소개합니다. (2시간)
                                 2. 서촌 맛집 여행을 함께 해요 (1시간)
                                 3. 경복궁을 마지막으로 둘러봅니다. (2시간)
                                 '
										rows='10' type='text'></textarea>
								</div>

							</div>
							<hr class='divider'>

							<div>
										<label class='control-label col-xs-12' for='offerTitle'>
									여행 제목 <span>*</span>
								</label>
								<div class="input_wrap">
									<a href="javascript:" onclick="fileUploadAction();"
										class="my_button">파일 업로드</a> <input type="file"
										id="input_imgs" multiple accept="image/*" />
								</div>
							</div>

							<div>
								<div class="imgs_wrap">
									<img id="img" />
								</div>
							</div>
							<div class="form-group clearfix">
								<div class="col-lg-12">
									<p class="help-block">
										• 대표사진을 등록해 주세요.<br>
									</p>
								</div>
								<div class="col-xs-12">
									<ul class="image-list row clearfix ui-sortable"
										id="sortableOfferPhoto">
									</ul>
									<div class="row">
										<div class="col-sm-6 col-xs-12">
											<div
												class="hidden margin-5 photo-add-container widget widget-border-dashed"
												style="display: block;">
												<div
													class="widget-body text-center bg-blue-grey-100 blue-grey-700">
													<div class="file-upload-btn">
														<input name="file" id="offerPhotoFileBtnBottom"
															type="file" multiple>
														<div
															class="btn btn-default btn-picture-add btn-picture-add-bottom btn-block ladda-button"
															id="btnOfferPhotoBottom" data-style="zoom-out"
															data-spinner-color="DarkGrey"
															for="offerPhotoFileBtnBottom">
															<span class="ladda-label"> <i
																class="fa fa-plus padding-right-5"></i> 사진등록
															</span> <span class="ladda-spinner"></span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<hr class='divider'>

						</div>
						<div class='wizard-buttons'>
							<a class='btn btn-default btn-outline' href='/auth/login'
								role='button'>취소하기</a> <input
								class='btn btn-primary btn-outline pull-right' id='save'
								formnovalidate='0' name='save' role='button' type='button'
								value='저장후 다음으로'>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#first_category").on('click', function() {
				if ($(this).is(':checked')) {
					$('#division').css('display', 'block');
					$('#first_division').css('display', 'block');
					$('#second_division').css('display', 'none');
					$('#third_division').css('display', 'none');
					$('#fourth_division').css('display', 'none');
				}
			});

			$("#second_category").on('click', function() {
				if ($(this).is(':checked')) {
					$('#division').css('display', 'block');
					$('#first_division').css('display', 'none');
					$('#second_division').css('display', 'block');
					$('#third_division').css('display', 'none');
					$('#fourth_division').css('display', 'none');
				}
			});
			$("#third_category").on('click', function() {
				if ($(this).is(':checked')) {
					$('#division').css('display', 'block');
					$('#first_division').css('display', 'none');
					$('#second_division').css('display', 'none');
					$('#third_division').css('display', 'block');
					$('#fourth_division').css('display', 'none');
				}
			});
			$("#fourth_category").on('click', function() {
				if ($(this).is(':checked')) {
					$('#division').css('display', 'block');
					$('#first_division').css('display', 'none');
					$('#second_division').css('display', 'none');
					$('#third_division').css('display', 'none');
					$('#fourth_division').css('display', 'block');
				}
			});
			$("#fifth_category").on('click', function() {
				if ($(this).is(':checked')) {
					$('#division').css('display', 'block');
					$('#first_division').css('display', 'none');
					$('#second_division').css('display', 'none');
					$('#third_division').css('display', 'none');
					$('#fourth_division').css('display', 'none');
				}
			});
		});
		$(document).ready(function() {
			$('#save').on('click', function() {
				var aaa = {
						'titl' : $('#offerTitle_title').val(),
						'tour_intro' : $('#offerIntroduction').val(),
						'cat_no' : $('input[name="offer[language_list][]"]:checked').val()
						}
				$.ajax({
					url : '/app/enroll/page1.do',
					type : 'POST',
					dataType : 'JSON',
					data : JSON.stringify(aaa),
					contentType : "application/json",
					success : function(data) {
						console.log($(data));
						location.href = "/app/enroll/page2";
						},error : function() {
							console.log("실패");
							swal("실패", "필수 정보가 누락되었습니다.", "error");
							}
						});
				});
			});
	</script>
	<script type="text/javascript">

        // 이미지 정보들을 담을 배열
        var sel_files = [];


        $(document).ready(function() {
            $("#input_imgs").on("change", handleImgFileSelect);
        }); 

        function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_imgs").trigger('click');
        }

        function handleImgFileSelect(e) {

            // 이미지 정보들을 초기화
            sel_files = [];
            $(".imgs_wrap").empty();

            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            var index = 0;
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }

                sel_files.push(f);

                var reader = new FileReader();
                reader.onload = function(e) {
                    var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                    $(".imgs_wrap").append(html);
                    index++;

                }
                reader.readAsDataURL(f);
                
            });
        }



        function deleteImageAction(index) {
            console.log("index : "+index);
            console.log("sel length : "+sel_files.length);

            sel_files.splice(index, 1);

            var img_id = "#img_id_"+index;
            $(img_id).remove(); 
        }

        function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_imgs").trigger('click');
        }

        function submitAction() {
            console.log("업로드 파일 갯수 : "+sel_files.length);
            var data = new FormData();

            for(var i=0, len=sel_files.length; i<len; i++) {
                var name = "image_"+i;
                data.append(name, sel_files[i]);
            }
            data.append("image_count", sel_files.length);
            
            if(sel_files.length < 1) {
                alert("한개이상의 파일을 선택해주세요.");
                return;
            }           

            var xhr = new XMLHttpRequest();
            xhr.open("POST","./study01_af.php");
            xhr.onload = function(e) {
                if(this.status == 200) {
                    console.log("Result : "+e.currentTarget.responseText);
                }
            }

            xhr.send(data);

        }

    </script>


	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>