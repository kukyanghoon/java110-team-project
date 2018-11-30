<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<button type="button" id="aaaaa">aaaaa</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
    $('#aaaaa').on('click', function(){
        
        var obj ={
                "client_id": "l7xxd19bee30de034dcaa0ddf7ec3fe11792",
                "client_secret": "90aca2eab4f04ee28f68ef4d8f1105fa",
                "scope": "oob",
                "grant_type": "client_credentials"
        }
        
        $.ajax({
            url:'requestToken.do',
            type:'POST',
            dataType:'JSON',
            data:JSON.stringify(obj),
            contentType:"application/x-www-form-urlencoded; charset=UTF-8",
            success:function(data){
                console.log(data);
            },
            error:function(){
                console.log("실패");
            }
        });
        
        
        
        /* var obj ={
                "bank_code_std": "021",
                "account_num": "110369493054",
                "account_holder_info": "931015",
                "tran_dtime": "20191130101921"
        }
        
        $.ajax({
            url:'https://openapi.open-platform.or.kr/inquiry/real_name',
            type:'POST',
            dataType:'JSON',
            data:JSON.stringify(obj),
            contentType:"application/json; charset=UTF-8",
            success:function(data){
                console.log(data);                
            },
            error:function(){
                console.log("실패");
            }
        }); */
    });
});

</script>

</body>
</html>