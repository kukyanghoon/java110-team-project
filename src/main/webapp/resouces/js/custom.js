/* header */

(function(){
	$('.ProfilePhoto').on('click',openMenu);

	function openMenu(){
		/* to do */
	}

	$('.gnb-menu__container').on('click',openAside);

	function openAside(){
		console.log($('.Drawer.Drawer--appear'));
		$('.Drawer.Drawer--appear').css('visibility','visible');
	}
})()


/* main page */
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
