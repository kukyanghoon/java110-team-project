var locale;
var ex_rate;

(function(){
    $().ready(function(){
        $.get("main/locale", function(data, status){
            locale = data;
        });
        
//        getExchangeRate();
    });
    
    function convertToCorsUrl(url){
        var protocol = (window.location.protocol === 'http:' ? 'http:' : 'https:');
        return protocol + '//cors-anywhere.herokuapp.com/' + url;
    }
    
    function getExchangeRate(){
        $.ajax(convertToCorsUrl("https://earthquake.kr:23490/query/KRWUSD"),{
               headers: {
                   'Content-Type': "application/json"
               },
               success: function(data){
                   ex_rate = data.KRWUSD[0];
               },
               error: function(xhr, status, msg){
                   console.log(status);
                   console.log(msg);
               }
           }) 
    }
    
	
})()

function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}