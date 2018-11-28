<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
      #pwTitl{
          color: #495056;
    font-size: 24px;
    font-weight: 600;
    margin-bottom: 17px;
      }
    
  </style>
</head>
<body>

<div class="container">
  <h2 id="pwTitl">비밀번호 변경</h2>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"></label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="nowPw" placeholder="현재 비밀번호" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"></label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="newPw" placeholder="새 비밀번호" name="pwd">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"></label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="newPwAgain" placeholder="새 비밀번호 확인" name="pwd">
      </div>
    </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-5">
        <button type="button" class="btn btn-default" style="width: 100%;">취소</button>
      </div>
      <div class="col-sm-5">
        <button type="button" id="pwChangeBtn" class="btn btn-info" style="width: 100%;">비밀번호 변경</button>
      </div>
    </div>
  </form>
</div>

<script>

$(document).ready(function(){
   $('#pwChangeBtn').on('click', function(){
       console.log("aaa");
       
       var pwInfo = {
               'oldPw': $('#nowPw').val(),
               'newPw': $('#newPw').val()
       }
       
       console.log(pwInfo);
       
         $.ajax({
           url:'pwChange.do',
           type:'POST',
           dataType:'JSON',
           data:JSON.stringify(pwInfo),
           contentType:"application/json",
           success:function(data){
               
               
               
           }
       
       }); 
   }) ;
});

</script>

</body>
</html>
