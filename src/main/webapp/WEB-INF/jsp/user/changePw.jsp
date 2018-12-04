<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>LEADME || 비밀번호 변경</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
     #pwTitl{color: #495056; font-size: 24px; font-weight: 600; margin-bottom: 17px;}
    .errorBox{color: #ff0000; display: none;}
    .errorBox_green{color: #0000ff;}
  </style>
</head>
<body>

<div class="container">
  <h2 id="pwTitl">비밀번호 변경</h2>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="nowPw"></label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="nowPw" placeholder="현재 비밀번호" name="nowPw">
        <span class='errorBox' id='nowPwErrorMsg'></span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="newPw"></label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="newPw" placeholder="새 비밀번호" name="newPw">
        <span class='errorBox' id='newPwErrorMsg'></span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="newPwAgain"></label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="newPwAgain" placeholder="새 비밀번호 확인" name="newPwAgain">
        <span class='errorBox' id='newPwAgainErrorMsg'></span>
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
    
    var pwdValid = /^[a-zA-Z0-9]{6,20}$/;
    var nowPw = $('#nowPw');
    var newPw = $('#newPw');
    var newPwAgain = $('#newPwAgain');
    
   $('#pwChangeBtn').on('click', function(){
       console.log("aaa");
       
       nowPw.focus();
       newPw.focus();
       $('body').focus();
       
       if(!validCheck(pwdValid,nowPw)){
           nowPw.focus();
           console.log("nowPw");
           return;
       }
       if(!validCheck(pwdValid,newPw)){
           newPw.focus();
           console.log("newPw");
           return;
       }
       if(!pwdCheck()){
           return;
       }
       
       var pwInfo = {
               'mno' : ${memberInfo.no},
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
               
               console.log(data);
               console.log(data.aaa);
               console.log("비밀번호 변경 성공ㅋ");
               swal("비밀번호 변경 완료", "", "success");
           },
           error:function(){
               console.log("비변실 ㅎ");
               swal("비밀번호 변경 실패", "정보를 확인해 주세요.", "error");
           }
       
       }); 
   }) ;
   
   nowPw.blur(function(){
       
       var nowPwErrorMsg = $('#nowPwErrorMsg');
       
       if(nowPw.val() == ""){
           nowPwErrorMsg.attr('class','errorBox').css('display','block').text("입력해 주세용...ㅠㅠ");
       }else if(!validCheck(pwdValid, nowPw)){
           nowPwErrorMsg.attr('class','errorBox').css('display','block').text("비밀번호는 6~20자 입니다!!");
       }else {
           nowPwErrorMsg.css('display','none');
       }
   });
   
   newPw.blur(function(){
       
       var nowPwErrorMsg = $('#newPwErrorMsg');
       
       if(newPw.val() == ""){
           nowPwErrorMsg.attr('class','errorBox').css('display','block').text("입력해 주세용...ㅠㅠ");
       }else if(!validCheck(pwdValid, nowPw)){
           nowPwErrorMsg.attr('class','errorBox').css('display','block').text("비밀번호는 6~20자 입니다!!");
       }else {
           nowPwErrorMsg.css('display','none');
       }
   });
   
   
   newPwAgain.blur(function(){
       
       var nowPwErrorMsg = $('#newPwAgainErrorMsg');
       
       if(newPwAgain.val() != newPw.val()){
           nowPwErrorMsg.attr('class','errorBox').css('display','block').text("다른걸 입력하시면 어쩝니까?!");
       }else if(newPwAgain.val() == newPw.val()){
           nowPwErrorMsg.css('display','none');
       }
   });

   function validCheck(valid,value){
       if(valid.test(value.val())){
           return true;
       }
   }
       return false;
   function pwdCheck(){
       if(newPwAgain.val() == ""){
           newPwAgain.focus();
           return false;
       }else if(!(newPw.val() == newPwAgain.val())){
           newPwAgain.focus();
           return false;
       }
           return true;
   }
   
});

</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
</html>
