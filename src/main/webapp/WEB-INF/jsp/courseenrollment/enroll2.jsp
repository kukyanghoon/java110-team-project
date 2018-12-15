<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class='no-js css-menubar' lang='en'>

<head>
<meta charset='utf-8'>
<meta content='IE=edge' http-equiv='X-UA-Compatible'>
<meta content='width=device-width, initial-scale=1.0, user-scalable=0'
	name='viewport'>
<meta content='파트너 페이지' name='description'>
<meta content='' name='author'>
<title>LEADME :: 여행 등록 II</title>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="fZaiFsCe1YtqnZJ9OBlDXgZzM63/iQ9SZeKUUYfowrtnHWjIT/ZLVrBrDxgS+OKyNH70rt0201F2rhPY8zBQ5g==" />
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico'
	rel='shortcut icon'>
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-b2b3ec7a443b9e7a9b7ec7bafcb9479a5433b522844cc66fbb0b5014f2c1fc03.css" />

<style>
input[type=file] {
	display: none;
}
.panel-title{
                       text-align: center;
                    }
body {
	padding-top: 66px;
	margin: 0px;
}

th {
	width: 10%;
	text-align: center;
}
.photo-web{
	width:100%;
}
tr, td {
	width: 100%;
}

div.meeting_geocoder {
	max-width: 700px;
	width: 100%;
}

input#address {
	margin: 2px;
	width: 90%;
}

.input_wrap {
	background-color: white;
}

img {
	max-width: 706px;
	max-height: 290px;
	object-fit: contain;
}

a.my_button {
	background-color: white;
}

.photo-btn-add-container {
	text-align: center;
}
</style>

<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon-precomposed'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon' sizes='76x76'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png'
	rel='apple-touch-icon' sizes='120x120'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/icon-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png'
	rel='apple-touch-icon' sizes='152x152'>

<script
	src="/resources/js/ko-9d53604fb5c8a610df23b77f7135903c1affe982fa1d15f3354fdc521e10862a.js"></script>
<script
	src="/resources/js/application-0a1f0d84b41d048d5930089311ad8e11e301bd606ee17fa9b2c5b3d74f7bec4a.js"></script>

</head>

<body class='site-menubar-unfold' data-action='edit'
	data-controller-path='partner/offers' data-controller='offers'
	data-sign-in>

<div class='page-content container'>
	<div class='col-md-12'>
	   
		<div class='panel-heading'>
			<div class='panel-title'>여행 등록</div>
		</div>
		<hr class='divider'>
		<div class='panel-body'>
			<div class='pearls row' data-by-row='true' data-plugin='matchHeight'
				role='tablist'>
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
				<div class='col-xs-4 pearl' data-target='#step3' role='tab'>
					<a class="pearl-number" href="/partner/offers/46144/edit?step=3">3</a>
					<span class='pearl-title'> <a
						href="/partner/offers/46144/edit?step=3">가격정보</a>
					</span>
				</div>
			</div>

			<div class='wizard-content'>
				<div class='form-group clearfix default-message'>
					<div class='title'>여행에 대해 풍부한 이미지와 글로 자세한 설명을 해주세요.</div>
					<div class='guide-box'>
						<p class='help-block'>
							• 안내에 따라 여행 내용을 정확하게 설명하여 주세요. <br />
						</p>
						<p class='help-block'>* 필수항목</p>
					</div>
				</div>
				<hr class='divider'>

				<div class='form-group clearfix'
					data-desc='• 정확한 시간을 안내하여 주세요.<br/>• 여행자와 첫 만남을 원활하게 진행하는데 도움이 됩니다.<br/>'>
					<label
						class='control-label col-xs-12 margin-bottom-15 font-weight-600'
						form='offerMeetingTime'> 만나는 시간 <span>*</span>
					</label>
					<div class='col-xs-12'>
						<div class='col-xs-12'>
							<div class='input-group col-xs-12'>
								<div class='margin-bottom-15'>
									<div class='radio-custom radio-primary clearfix'>
										<input checked id='meeting_time_a' name='meeting_time_check'
											type='radio' value='time'> <label class='col-xs-12'
											for='meeting_time_a'>
											<div class='col-xs-6'>
												<select class='form-control ignore' id='meeting_time'
													name='offer[meeting_time][hour]'>
													<option disabled selected value=''>시간 선택</option>
													<option value='0'>오전 00</option>
													<option value='1'>오전 01</option>
													<option value='2'>오전 02</option>
													<option value='3'>오전 03</option>
													<option value='4'>오전 04</option>
													<option value='5'>오전 05</option>
													<option value='6'>오전 06</option>
													<option value='7'>오전 07</option>
													<option value='8'>오전 08</option>
													<option value='9'>오전 09</option>
													<option value='10'>오전 10</option>
													<option value='11'>오전 11</option>
													<option value='12'>오후 12</option>
													<option value='13'>오후 1</option>
													<option value='14'>오후 2</option>
													<option value='15'>오후 3</option>
													<option value='16'>오후 4</option>
													<option value='17'>오후 5</option>
													<option value='18'>오후 6</option>
													<option value='19'>오후 7</option>
													<option value='20'>오후 8</option>
													<option value='21'>오후 9</option>
													<option value='22'>오후 10</option>
													<option value='23'>오후 11</option>
												</select>
											</div>
											<div class='col-xs-6'>
												<select class='form-control' id='meeting_timet'
													name='offer[meeting_time][min]'>
													<option disabled selected value=''>분 선택</option>
													<option value='0'>00</option>
													<option value='10'>10</option>
													<option value='20'>20</option>
													<option value='30'>30</option>
													<option value='40'>40</option>
													<option value='50'>50</option>
												</select>
											</div>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<hr class='divider'>
				<div class='form-group clearfix'
					data-desc='• 넓은 범위의 장소를 설정하면 만남에 많은 시간이 소요됩니다.<br/>• 나쁜 예) 그린파크역, 시청역<br/>• 좋은 예) 그린파크역 1번 출구 앞 벤치, 시청역 2번 출구 오른쪽 스타벅스 입구 앞<br/>'>
					<label
						class='control-label col-xs-12 margin-bottom-15 font-weight-600'>
						만나는 장소 </label>
					<div class='col-xs-12'>
						<div class='row'>
							<div class='form-group clearfix'>
								<label class='control-label col-xs-12' for='offerMeetingPoint'>
									만나는 장소 이름 <span>*</span>
								</label>
								<div class='col-xs-12'>
									<input class='form-control' id='offerMeetingPoint'
										name='offer[meeting_point]' type='text'>
								</div>
							</div>
							<div class='form-group clearfix'>
								<div class='col-xs-12'>
									<p class='help-block'>
										• 만남을 위한 구체적인 장소를 알려주세요. <br />• 낯선 곳에서의 여행자의 불안감을 해소해줍니다. <br />
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class='col-xs-12'>
						<div class='row'>
							<div class='form-group clearfix'>
								<label class='control-label col-xs-12'> 만나는 장소 위치 <span>*</span>
								</label>
							</div>
						</div>
					</div>

					<div class='meeting_geocoder' style="width:100%;">
						<table border="1">
							<tr>
								<td colspan="2">
									<div id="map_canvas" style="width: 100%; height: 400px;"></div>
								</td>
							</tr>
							<tr style="display: none;">
								<th>위도</th>
								<td id="lat"></td>
							</tr>
							<tr style="display: none;">
								<th>경도</th>
								<td id="lng"></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" id="address" value="" size="50" />
									<div id="search_submit"
										style="display: inline-block; cursor: pointer; border: 1px solid silver;">검색</div>
								</td>

							</tr>
						</table>
						<hr class='divider'>

					</div>

				</div>

				<div class='form-group clearfix'
					data-desc='• 정확한 시간을 안내하여 주세요.<br/>• 여행자와 첫 만남을 원활하게 진행하는데 도움이 됩니다.<br/>'>
					<label
						class='control-label col-xs-12 margin-bottom-15 font-weight-600'
						form='offerMeetingTime'> 사진첩 웹주소 <span>*</span>
					</label>
					<div class='col-xs-12'>
						<div class='col-xs-12'>
							<input id='albm_link' class='photo-web'
								name='photo-web' type='text'>
						</div>
					</div>
				</div>


				<hr class='divider'>



				<div class='form-group clearfix'>
					<label class='control-label col-lg-12 font-weight-600'> 투어
						코스 </label><span>*</span>
					<div class='col-lg-12'>
						<p class='help-block'>
							• 여행 중 방문할 장소 또는 활동에 대하여 설명해주세요. <br />
						</p>
					</div>
					<div class='col-xs-12'>
						<ul class='margin-top-20 sortable-list clearfix'
							id='sortableCourseList'>
							<li class='col-xs-12 course-item ui-state-default'>
								<form data-validation="false" data-istour="true"
									data-isticket="false" data-ishotdeal="false"
									data-islodging="false" data-offer-status="temp"
									class="panel panel-bordered" accept-charset="UTF-8"
									id="fileForm" action="fileUpload" method="post"
									enctype="multipart/form-data">
									<div class="coursedetail1 widget widget-shadow widget-border">

										<div class='widget-body course-plus'
											 border: 1px solid silver;">
											<input name='offer[courses_attributes][][id]' type='hidden'>
											<input name='offer[courses_attributes][][position]'
												type='hidden' value='1'> <input
												name='offer[courses_attributes][][_destroy]' type='hidden'
												value='0'>
											<div class='row'>
												<div class='col-xs-12'>
													<div class='form-group clearfix'
														data-desc='• 투어를 진행할 장소나 활동의 이름을 써주세요.<br/>• 예) 리알토다리<br/>• 예) 바다 카약체험<br/>'>
														<label class='control-label col-xs-12'
															for='offerCourseTitle'> 코스 제목 <span>*</span>
														</label>
														<div class='col-xs-12'>
															<input class='form-control offerCourseTitle1'
																name='offer[courses_attributes][][title]' type='text'>
														</div>
													</div>
												</div>
											</div>

											<div class='row'>
												<div class='col-xs-12'>
													<div class='form-group clearfix'
														data-desc='<span class="font-weight-600">코스 설명 예시</span><br/><br/>"아치 모양이 아름다운 베네치아의 첫 번째 다리, 리알토 다리위에서 베네치아 운하를 감상하고 다리 위에 모여 있는 점포들을 구경합니다."<br/>'>
														<label class='control-label col-xs-12'> 코스 내용 </label>
														<div class='col-xs-12'>
															<textarea class='form-control offerCourseIntro1'
																name='offer[courses_attributes][][description]'
																placeholder='여행자들이 어떤 것을 기대할 수 있는지 사전에 머릿속에 그려볼 수 있도록 무엇을 하는 코스인지 자세하게 적어주세요.'
																rows='4'></textarea>
														</div>
													</div>
												</div>
											</div>
											<div class='row'>
												<div class='col-xs-12'>
													<div class='form-group clearfix'
														data-desc='• 직접 촬영하셨거나 상업적 이용이 허용된 선명한 사진을 사용하셔야 합니다.<br/>• 코스 내용에 가장 적합한 사진 사이즈는 815*460 입니다.<br/>• 브라우저에 따라 사진의 위, 아래가 잘려서 노출될 수 있습니다.<br/>• 7mb 이하의 사진을 올려주세요.<br/>'>
														<div class='col-xs-12 course-photo-container'>
															<div class='widget margin-5 photo-btn-add-container'>
																<div
																	class='widget-body text-center bg-blue-grey-100 blue-grey-700 offerCoursePhoto'>
																	<div class="input_wrap">
																		<a href="javascript:"
																			onclick="fileUploadAction(event);" data-index='1'
																			class="my_button">사진 업로드</a> <input type="file"
																			id="input_imgs1" accept="image/*" name="upload1"
																			data-index='1' class='image-files'>
																	</div>




																	<div class="imgs_wrap1">
																		<img src="" />
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div onclick='ajaxTest();'></div>
									</div>
								</form>
							</li>

						</ul>
					</div>
					<div class='col-xs-12'>
						<div class='col-xs-12'>
							<div class='widget widget-border-dashed' id='addCourse'>
								<div id='courseplus'
									class='widget-body text-center bg-blue-grey-100 blue-grey-700'>
									<i class='fa fa-plus padding-right-5'></i> 코스 추가
								</div>

							</div>
						</div>
					</div>
				</div>
				<hr class='divider'>

			</div>
			<div class='wizard-buttons'>
				<a class='btn btn-default btn-outline'
					href='/partner/offers/46144/edit?step=1' role='button'>이전 단계로</a> <input
					class='btn btn-primary btn-outline pull-right' id='save'
					onclick="ajaxTest();" formnovalidate='0' name='save' role='button'
					type='button' value='저장후 다음으로'>
			</div>

		</div>


	</div>
	</div>

	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js">
    </script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?sensor=false">
    </script>

	<script type="text/javascript">
        function initMap() {
            var latlng = new google.maps.LatLng(37.5640, 126.9751);
            var myOptions = {

                zoom: 15,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            var marker = new google.maps.Marker({
                position: latlng,
                map: map
            });

            var geocoder = new google.maps.Geocoder();

            google.maps.event.addListener(map, 'click', function(event) {
                var location = event.latLng;
                geocoder.geocode({
                    'latLng': location
                }, function(results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        $('#address').val(results[0].formatted_address);
                        $('#lat').html(results[0].geometry.location.lat());
                        $('#lng').html(results[0].geometry.location.lng());
                    } else {
                        alert("Geocoder failed due to: " + status);
                    }
                    console.log(results[0].geometry.location.lat());
                    console.log(results[0].geometry.location.lng());
                    console.log(results[0].formatted_address);
                });
                if (!marker) {
                    marker = new google.maps.Marker({
                        position: location,
                        map: map
                    });
                } else {
                    marker.setMap(null);
                    marker = new google.maps.Marker({
                        position: location,
                        map: map
                    });
                }
                map.setCenter(location);
            });

            function init() {
                var input = document.getElementById('address');
                var autocomplete = new google.maps.places.Autocomplete(input);
            }
 
            google.maps.event.addDomListener(window, 'load', init);
            
            
            $("#search_submit").click(function() {
                var address = $('#address').val();
                if (address != '') {
                    geocoder.geocode({
                        'address': address
                    }, function(results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            $('#lat').html(results[0].geometry.location.lat());
                            $('#lng').html(results[0].geometry.location.lng());
                            map.setCenter(results[0].geometry.location);
                            if (!marker) {
                                marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map

                                });
                            } else {
                                marker.setMap(null);
                                marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map
                                });
                            }
                        } else {
                            alert("Geocoder failed due to: " + status);
                        }
                    });
                }
            });
        };
    </script>


	<script>
        $(document).ready(function(){
        	var i = 1;
            $('#courseplus').on('click',function(){
            	
            	$('.coursedetail'+i).append("<div class='coursedetail"+(i+1)+
            			"' class='widget widget-shadow widget-border'><div class='widget-body course-plus'  border:1px solid silver;'><input name='offer[courses_attributes][][id]' type='hidden'><input name='offer[courses_attributes][][position]'type='hidden' value='1'> <inputname='offer[courses_attributes][][_destroy]' type='hidden'value='0'><div class='row'><div class='col-xs-12'><div class='form-group clearfix'> 코스 제목 <span>*</span></label><div class='col-xs-12'><input class='form-control offerCourseTitle"+(i+1)+"'name='offer[courses_attributes][][title]' type='text'></div></div></div></div><div class='row'><div class='col-xs-12'><div class='form-group clearfix'><label class='control-label col-xs-12'> 코스 내용 </label><div class='col-xs-12'><textarea class='form-control offerCourseIntro"+(i+1)+"' name='offer[courses_attributes][][description]' placeholder='여행자들이 어떤 것을 기대할 수 있는지 사전에 머릿속에 그려볼 수 있도록 무엇을 하는 코스인지 자세하게 적어주세요.' rows='4'></textarea></div></div></div></div><div class='row'><div class='col-xs-12'><div class='form-group clearfix'><div class='col-xs-12 course-photo-container'><div class='widget margin-5 photo-btn-add-container'><div class='widget-body text-center bg-blue-grey-100 blue-grey-700 offerCoursePhoto'><div class='input_wrap"+(i+1)+
            			"'><a href='javascript:' onclick='fileUploadAction(event);' data-index='" + (i+1) + "' class='my_button'>사진 업로드</a> <input type='file'id='input_imgs"+(i+1)+
            			"' accept='image/*' name='upload" + (i+1) + "' data-index='" + (i+1) + "' class='image-files'></div><div class='imgs_wrap"+(i+1)+
            			"'><img src='' /></div></div></div></div></div></div></div></div></div>");
				i++;
				console.log("첫번째"+i);
            });
        });
    </script>

	<script type="text/javascript">

        // 이미지 정보들을 담을 배열
        var sel_files = [];

        /*
	    $(document.body).on('click', '.my_button', function(e) {
	    	handleImgFileSelect($(e.target).attr('data-index'))
	    });
        */
        
        $(document.body).on("change", ".image-files", handleImgFileSelect);
        
        function handleImgFileSelect(e) {
        	var no = $(e.target).attr('data-index');
        	console.log(no);
            sel_files = [];
            $(".imgs_wrap").empty();
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
            var index = 0;
            
            filesArr.forEach(function(f) {
            	
                if(!f.type.match("image.*")) {
                    swal("실패", "확장자는 이미지 확장자만 가능합니다", "error");
                    return;
                }
                sel_files.push(f);
                var reader = new FileReader();
                reader.onload = function(e) {
                	
                    var html = "<a href=\"javascript:void("+index+")';\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                    $(".imgs_wrap" + no).append(html);
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

        function fileUploadAction(e) {
            console.log("fileUploadAction");
            $("#input_imgs" + $(e.target).attr('data-index')).trigger('click');
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
                swal("실패", "한 개 이상의 파일을 선택해주세요", "error");
                return;
            }           


        }

    </script>


	<script>
	 function ajaxTest(){
		 
		 console.log("ddddddddddddddd");
         console.log( $('#meeting_time').val()+":"+$('#meeting_timet').val());
         if($('#meeting_time').val() == null){
             swal("실패", "필수 정보가 누락되었습니다.", "error");
             return;
         }
    
         var aaa ={
                 'join_tm' : $('#meeting_time').val()+":"+$('#meeting_timet').val(),
                 'join_plc' : $('#offerMeetingPoint').val(),
                 'lat' : $('#lat').text(),
                 'lon' : $('#lng').text(),
                 'albm_link' : $('#albm_link').val()
              
         } 
         console.log($('#offerMeetingPoint').val());
         console.log($('#lat').text());
         console.log($('#lng').text());
         console.log($('#albm_link').val());
         console.log(aaa);
         
          $.ajax({
             url: '/app/enroll/page2.do',
             type: 'POST',
             dataType: 'JSON',
             data: JSON.stringify(aaa),
             contentType: "application/json",
             success: function(data) {
                 console.log($(data));
                 var formData = new FormData($("#fileForm")[0]);
         	     $.ajax({
         	             type: 'POST',
         	             url: 'upload.do',
         	             data: formData,
         	             processData: false,
         	             contentType: false,
         	             success: function(data) {
         	            	 console.log("데이터입니다.");
         	            	 console.log(data);
         	            	 console.log("데이터입니다.");
         	                 var arr = new Array(); //Object를 배열로 저장할 Array
         	                 
         	                 $.each($('.course-plus'), function(index, item) {
         	                         console.log("aaaaaaa");
         	                         console.log(index);
         	                         console.log("aaaaaaa");
         	                         console.log(item);
         	                         console.log("aaaaaaa");
         	                         
         	                         var obj = new Object(); //key, value형태로 저장할 Object        
         	                         obj.cr_name = $('.offerCourseTitle'+(index+1)).val(); 
         		                     obj.cr_intro = $('.offerCourseIntro'+(index+1)).val(); 
         		                     obj.cr_phot = data[index]; 
         		                     arr.push(obj);
         	                     });
         	                     $.ajax({
         	                         url: "ajaxJsonTest.do",
         	                         type: "POST",
         	                         data: JSON.stringify(arr), //Array를 JSON string형태로 변환
         	                         dataType: "json",
         	                         contentType: "application/json",
         	                         success: function(data) {
         	                        	 location.href = "/app/enroll/page3"
         	                         },
         	                         error: function(data) {
         	                             swal("실패", "", "error");
         	                         }
         	                     });
         	                 }, error: function(data) {
         	                     swal("실패", "", "error");
         	                 }
         	             });
             },
             error: function() {
                 console.log("실패");
                 swal("실패", "필수 정보가 누락되었습니다", "error");
             }
          });
	 }
	 
</script>



	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgateWzuSDzB4eXge3FbM9uGq13JearvI&libraries=places&callback=initMap"
		type="text/javascript"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<div class='global-alert-box'></div>

</body>

</html>