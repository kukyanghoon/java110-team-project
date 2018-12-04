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
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
      
     
      .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
      
      
      .form-group{
          padding: 30px;
      }      
      .dateSeletor{
          display: inline-block;
      }
      .emailAuthUse{
          display: inline-block;
      }
  </style>
  
</head>
<body>

<div class="container-fluid">
  <div class="row content">

    <div class="col-sm-9">
      
      <div class="bg-1">
          <div class="container text-center">
            <img src="sponge.jpg" class="img-circle" alt="Bird" width="150" height="150">
            
          <div class="form-group">
            <label class="control-label col-sm-3" for="email">이름:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="name" placeholder="귤이귤이">
            </div>
          </div>
<!-- 
          <div class="form-group">
              <label class="control-label col-sm-3" for="email">성:</label>
              <div class="col-sm-8">
                <input type="email" class="form-control" id="email" placeholder="귤귤">
              </div>
          </div>     -->  
<!-- 
          <div class="form-group">  
            <label class="control-label col-sm-3" for="sel1">성별:</label>
                 <div class="col-sm-8">
                  <select class="form-control" id="gen" style="width: 100px;">
                    <option>남자</option>
                    <option>여자</option>
                  </select>    
                 </div>
            </div>    
             -->
           <!--  <div class="form-group">  
            <label class="control-label col-sm-3" for="sel1">생년 월일:</label>
                 <div class="col-sm-8">
                     <script> Today('null','null','null'); </script>
                 </div>
            </div>   -->  
            
           <div class="form-group has-error">
              <label class="control-label col-sm-3" for="email">이메일:</label>
              <div class="col-sm-8">
                <input type="email" class="form-control emailAuthUse" id="email" placeholder="mandarin@manda.com" style="width: 80%">
                <button type="button" class="btn btn-info emailAuthUse">이메일 연동하기</button>
              </div>
          </div> 
          
          <div class="form-group">
              <label class="control-label col-sm-3" for="tel">연락처:</label>
              <div class="col-sm-8">
               
                <input type="tel" class="form-control" id="tel" name="tel" placeholder="010-manda-manda(번호 형식 제어필요)">
              </div>
          </div> 

           <div class="form-group">
              <label class="control-label col-sm-3" for="comment">자기소개:</label>
              <div class="col-sm-8">
                  <textarea class="form-control" rows="5" id="comment" name="comment" style="resize: none"></textarea>
              </div>
            </div>

           <div class="form-group">
             <div class="col-sm-11">
                  <button type="button" id="saveBtn" class="btn btn-info" style="float: right; margin-top: 30px;">저장하기</button>
              </div>
              
            </div>
             
        </div>
  
      </div>
      
    </div>
  </div>
</div>

<script>

$(document).ready(function(){
    
    var emailValid = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var pwdValid = /^[a-zA-Z0-9]{6,20}$/;
    var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
    var nameValid = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
    
    var name = $('#name');
    var email = $('#email');
    var tel = $('#tel');
    var comment = $('#comment');
    
    $('#saveBtn').on('click', function(){
       console.log("aaaaa"); 
       
       if(!validCheck(nameValid,name)){
           console.log("name");
           return;
       }

       if(!validCheck(emailValid,email)){
           console.log("email");
           return;
       }
       
       if(!validCheck(regExp,tel)){
           console.log("tel");
           return;
       }
       
       console.log(name.val());
       console.log(email.val());
       console.log(tel.val());
       console.log(comment.val());
       
       var obj = {
               'mno' : ${memberInfo.no},
               'name' : name.val(),
               'email' : email.val(),
               'tel' : tel.val(),
               'intro' : comment.val()
       }
       
       $.ajax({
           url:'/app/guide/profileModify.do',
           type:'POST',
           dataType:'JSON',
           data:JSON.stringify(obj),
           contentType:"application/json",
           success:function(data){
               
           },
           error:function(){
               
           }
       });   
       
       
       
       
    });
    
    function validCheck(valid,value){
        if(valid.test(value.val())){
            return true;
        }
        return false;
    }
    
});


</script>



</body>
</html>