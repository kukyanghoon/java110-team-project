$('.map-link').on('mouseenter', function () {
		
		var classNm = $(this).attr('class');
		var currentNm = classNm.split("-").pop();
		$('#map-img').attr('src', 'img/map_korea_' + currentNm + '.jpg');
		
	}).on('mouseleave', function () {
		 var classNm = $(this).attr('class');
		 var currentNm = classNm.split("-").pop();
		 if($('#map-img').hasClass('clicked')) {
			$('#map-img').attr('src', 'img/map_korea_' + currentNm + '.jpg');
		 } else {
			$('#map-img').attr('src', 'img/map_korea.jpg');
		 }
		 
	}).on('click', function (e) {
		e.preventDefault();
	});
