/* header */

var locale;

(function(){
    
    $().ready(function(){
        $('.city-name').each(function(index,value){
            $(this).text(getLocalName($(value).text())); 
        });
    });
    
    
    
	$('.ProfilePhoto').on('click',openMenu);

	function openMenu(){
		/* to do */
	}

	$('.gnb-menu__container').on('click',openAside);

	function openAside(){
		console.log($('.Drawer.Drawer--appear'));
		$('.Drawer.Drawer--appear').css('visibility','visible');
	}
	

	
	var r_itm = 10; /* start val */
	
	var timer = setInterval(function() {
	       loadThemeBestView(r_itm % 50 + 10);
	       r_itm += 10;
	  }, 5000);
	
	
	function loadThemeBestView(rnk_item){

	    $.ajax("/app/main/theme/"+rnk_item,{
	        headers: {
	            'Content-Type': "application/json"
	        },
//	        data: {rnk_item: rnk_item},
	        success: function(data){
	            createTourItems(data, rnk_item);
	        },
	        error: function(xhr, status, msg){
	            console.log(status);
	            console.log(msg);
	        }
	    }) 
	}
	
	function createTourItems(data, rnk_item){
	    
        var title;
        var innerHtml;
        
        if (locale === 'en'){
            switch(rnk_item){
            case 10:
                title = 'Foodie BEST';
                break;
            case 20:
                title = 'History/Culture BEST';
                break;
            case 30:
                title = 'Attraction BEST';
                break;
            case 40:
                title = 'Activity BEST';
                break;
            case 50:
                title = 'Shopping BEST';
                break;
            }
        } else {
        
            switch(rnk_item){
            case 10:
                title = '식도락 BEST';
                break;
            case 20:
                title = '역사/문화 BEST';
                break;
            case 30:
                title = '명소 BEST';
                break;
            case 40:
                title = '액티비티 BEST';
                break;
            case 50:
                title = '쇼핑 BEST';
                break;
            }
        }
	        
	    
        $('#theme-title').text(title);
        $('#theme-item-container').empty();
        for(var i=0; i<data.length; i++){
            innerHtml = "";
                
            innerHtml += "<li class='card-type-a item swiper-slide' data-gtm-action='인기 티켓/교통패스' data-gtm-category='투어&amp;티켓_홈' data-gtm-label='5683' data-offer-id='5683' data-offer-type='ETicket' style='margin-right: 20px;'>"
                       + "<div class='card-cover'>"
                       + "<a class='offer-link' href='tour/detail/"+data[i].tno+"'>"
                       + "<div class='img-container'>"
                       + "<div class='img-placeholder'>"
                       + "<img class='img-small' src='/resources/img/"+data[i].pri_phot+"'>"
                       + "<div class='img-padding'></div>"
                       + "<img class='img img landscape loaded' src='/resources/img/"+data[i].pri_phot+"'>"
                       + "</div>"
                       + "</div>"
                       + "<div class='content-box'>"
                       + "<div class='city-name'>"+getLocalName(data[i].loc)+"</div>"
                       + "<div class='name'>"+data[i].titl+"</div>"
                       + "<div class='inner-container'>"
                       + "<div class='review'>"
                       + "<div class='rating-box'>";
        
        for (var j=1; j<=5; j++){
            if(j <= data[i].star){
                innerHtml += "<span class='icon active'></span>";
            } else {
                innerHtml += "<span class='icon'></span>";
            }
        }
        
        if('${lang}' == 'en'){
            
            innerHtml += "</div>"
                + "<div class='text'>review "+data[i].cmt_cnt+"</div>"
                + "</div>"
                + "<div class='price' data-offer-price='53,600원' itemprop='offers' itemscope='true' itemtype='http://schema.org/Offer'>"
                + "<span>"+numberWithCommas(data[i].amt)+"won</span>"
                + "<span class='unit'> per person</span>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</a>"
                + "</div>"
                + "</li>";
            
        }else{
            
            innerHtml += "</div>"
                + "<div class='text'>후기 "+data[i].cmt_cnt+"개</div>"
                + "</div>"
                + "<div class='price' data-offer-price='53,600원' itemprop='offers' itemscope='true' itemtype='http://schema.org/Offer'>"
                + "<span>"+numberWithCommas(data[i].amt)+"원</span>"
                + "<span class='unit'>/ 1인</span>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</a>"
                + "</div>"
                + "</li>";
            
        }
        
        
        
        
        $('#theme-item-container').append(innerHtml);
        }
	}
	$('.map-link').each(function(index, value){
	    console.log(value);
	    $(this).on('click',addClickEvent.bind(index));
	});
	
	function addClickEvent(){
	    console.log("먹혔다!");
	    var paramStr;
	    if(this+1<10){
	        paramStr = "0"+(this+1);
	    } else {
	        paramStr = ""+(this+1);
	    }
	    
       $.ajax("/app/main/local/"+paramStr,{
            headers: {
                'Content-Type': "application/json"
            },
//            data: {rnk_item: paramStr},
            success: function(data){
                var innerHtml;
                $('.OfferList__Cards').empty();
                
                var loc = getLocalName(paramStr);
                
                for(var i=0; i<data.length; i++){
                innerHtml = "";
                innerHtml += "<a class='OfferListCard' href='tour/detail/"+data[i].tno+"' itemprop='itemListElement' itemscope='' itemtype='http://schema.org/Product' data-offer-type='HotDeal' data-offer-id='30629'>"

                + "<div class='OfferListCard__Thumbnail' style='background-image: url(&quot;/resources/img/"+ data[i].pri_phot+"&quot;);'></div>"
                + "<div class='OfferListCard__Content'><div class='OfferListCard__Content__Category'><span>"+ loc +"</span><span class='hide-on-mobile'></span></div>"
                + "<div class='OfferListCard__Content__Title'>"
                + "<div class='LinesEllipsis  '>" + data[i].titl +"<wbr></div>"
                + "</div>"
                + "<div class='OfferListCard__Content__Review'>"
                + "<div class='starRating starRating--m starRating--blue'>";
                
                for (var j=1; j<=5; j++){
                    if(j <= data[i].star){
                        innerHtml += "<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>"
                                   + "<path class='starColor' fill='#51ABF3' fill-rule='evenodd' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'></path>"
                                   + "</svg>";
                        
                    } else {
                        innerHtml += "<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'>"
                                   + "<path fill='#DEE2E6' d='M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z'></path>"
                                   + "</svg>";
                    }
                }
                
                innerHtml += "</div>"
                + "<span class='count'>"+data[i].cmt_cnt+"</span></div>"
                + "<div class='OfferListCard__Content__Price'><span class='SalePrice'>"+numberWithCommas(data[i].amt)+"원</span></div>"
                + "</div>"
                + "</a>";
                
                $('.OfferList__Cards').append(innerHtml);
                }
                
                
            },
            error: function(xhr, status, msg){
                console.log(status);
                console.log(msg);
            }
        })
	}
	
	function getLocalName(localCd){
	    var name;
	    if (locale === 'en'){
	        switch(localCd){
            case "01":
                name = 'Jeju';
                break;
            case "02":
                name = 'Busan';
                break;
            case "03":
                name = 'Ulsan';
                break;
            case "04":
                name = 'GyeongNam';
                break;
            case "05":
                name = 'GwangJu';
                break;
            case "06":
                name = 'JeonNam';
                break;
            case "07":
                name = 'JeonBuk';
                break;
            case "08":
                name = 'Daegu';
                break;
            case "09":
                name = 'GyeongBuk';
                break;
            case "10":
                name = 'Daejun';
                break;
            case "11":
                name = 'Sejong';
                break;
            case "12":
                name = 'ChungBuk';
                break;
            case "13":
                name = 'ChungNam';
                break;
            case "14":
                name = 'Gangwon';
                break;
            case "15":
                name = 'Seoul';
                break;
            case "16":
                name = 'Gyeonggi';
                break;
            case "17":
                name = 'Incheon';
                break;
            }	        
	    } else {
    	    switch(localCd){
            case "01":
                name = '제주도';
                break;
            case "02":
                name = '부산시';
                break;
            case "03":
                name = '울산시';
                break;
            case "04":
                name = '경상남도';
                break;
            case "05":
                name = '광주시';
                break;
            case "06":
                name = '전라남도';
                break;
            case "07":
                name = '전라북도';
                break;
            case "08":
                name = '대구시';
                break;
            case "09":
                name = '경상북도';
                break;
            case "10":
                name = '대전시';
                break;
            case "11":
                name = '세종시';
                break;
            case "12":
                name = '충청북도';
                break;
            case "13":
                name = '충청남도';
                break;
            case "14":
                name = '강원도';
                break;
            case "15":
                name = '서울시';
                break;
            case "16":
                name = '경기도';
                break;
            case "17":
                name = '인천시';
                break;
            }
	    }
	    return name;
	}
	
})()


/* main page */
$('.map-link').on('mouseenter', function () {
		
		var classNm = $(this).attr('class');
		var currentNm = classNm.split("-").pop();

		$('#map-img').attr('src', '/resources/img/map_korea_' + currentNm + '.jpg');
		
	}).on('mouseleave', function () {
		 var classNm = $(this).attr('class');
		 var currentNm = classNm.split("-").pop();
		 if($('#map-img').hasClass('clicked')) {
			$('#map-img').attr('src', '/resources/img/map_korea_' + currentNm + '.jpg');
		 } else {
			$('#map-img').attr('src', '/resources/img/map_korea.jpg');
		 }
		 
	}).on('click', function (e) {
		e.preventDefault();
	});
