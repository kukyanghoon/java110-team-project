<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <form  id="uploadForm" method="post" enctype="multipart/form-data">
                <input id='imgBtn' type="file" name='file1' multiple accept="image/*" style ="display : none">
            </form>
          <form>
    
            
            <img src="/resources/img/${sessionScope.memberInfo.photo}" id="userImage" class="img-circle" alt="userImage" width="150" height="150" 
            onclick='document.all.file1.click();'>
          
          <div class="col-sm-11" style="height: 50px; padding-right: 40px;">
              <button id='PhotoModifyBtn' type="button" class="btn btn-info" style="float: right;">사진저장</button>
            </div>
          

           <c:choose>
            <c:when test="${sessionScope.memberInfo.path eq 'google'}">
            
            <div class="form-group">
            <label class="control-label col-sm-3" for="name">이름:</label>
            <div class="col-sm-8">
              <input type="name" class="form-control" id="name" value='${sessionScope.memberInfo.name }' readonly="readonly">
            </div>
          </div> 
            
            <div class="form-group">
                    <label class="control-label col-sm-3" for="email">이메일:</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" value='${sessionScope.memberInfo.email}' readonly="readonly">
                        </div>
                    </div>
            
            
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email">SNS 연동:</label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Facebook</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email"></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Google</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true' checked>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
            </c:when>
            <c:when test="${sessionScope.memberInfo.path eq 'facebook'}">
            
            <div class="form-group">
            <label class="control-label col-sm-3" for="name">이름:</label>
            <div class="col-sm-8">
              <input type="name" class="form-control" id="name" value='${sessionScope.memberInfo.name }' readonly="readonly">
            </div>
          </div> 
            
            <div class="form-group">
                    <label class="control-label col-sm-3" for="email">이메일:</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" value='${sessionScope.memberInfo.email}' readonly="readonly">
                        </div>
                    </div>
            
            
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email">SNS 연동:</label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Facebook</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true' checked>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email"></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Google</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
            </c:when>
            <c:otherwise>
            
            <div class="form-group">
            <label class="control-label col-sm-3" for="name">이름:</label>
            <div class="col-sm-8">
              <input type="name" class="form-control" id="name" value='${sessionScope.memberInfo.name }'>
            </div>
          </div>              


          <c:choose>
            <c:when test="${sessionScope.memberInfo.cert_email eq 'N'}">
            <div class="form-group has-error">
              <label class="control-label col-sm-3" for="email">이메일:</label>
              <div class="col-sm-8">
                <input type="email" class="form-control emailAuthUse" id="email" value='${sessionScope.memberInfo.email }' style="width: 80%">
                <button type="button" id="emailAuthBtn" class="btn btn-info emailAuthUse">이메일 연동하기</button>
              </div>
            </div> 
            </c:when>
            <c:otherwise>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email">이메일:</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" value='${sessionScope.memberInfo.email}'>
                        </div>
                    </div>  
            </c:otherwise>
          </c:choose>
            
            
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email">SNS 연동:</label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Facebook</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div> 
                <div class="form-group">
                    <label class="control-label col-sm-3" for="email"></label>
                    <div class="col-sm-8">
                        <label class="control-label col-sm-3" for="email">Google</label>
                        <label class="switch col-sm-3">
                        <input type="checkbox" disabled='true'>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>
            </c:otherwise>
          </c:choose>

          
          

          <div class="form-group">  
            <label class="control-label col-sm-3" for="sel1">선호하는 언어:</label>
                 <div class="col-sm-8">
                  <select class="form-control" id="lang" style="width: 200px;">
                    <option value= "ko">한국어</option>
                    <option value= "en">영어</option>
                  </select>    
                 </div>
          </div>  

           <div class="form-group">
             <div class="col-sm-11">
                  <button id='modifyBtn' type="button" class="btn btn-info" style="float: right; margin-top: 30px;">저장하기</button>
                  <button id='PhotoModifyBtn' type="button" class="btn btn-info" style="float: right; margin-top: 30px;">사진</button>
                  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">회원 탈퇴</button>
              </div>
              
            </div>
             
        </form>
        </div>
      </div>
      
    </div>
  </div>
</div>
<script>
$(document).ready(function(){
   
    var emailValid = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var nameValid = /^[가-힣a-zA-Z]{2,30}$/;
    var name = $('#name');
    var email = $('#email');
    
    $('#modifyBtn').on('click', function(){
       
        if(!validCheck(nameValid,name)){
           console.log("name");
           $('#name').focus();
           return;
       }
       if(!validCheck(emailValid,email)){
           console.log("email");
           $('#email').focus();
           return;
       }
       
       console.log("pass!!!!");
       console.log($('#name').val());
       console.log($('#email').val());
       console.log($('#lang').val()); 
       console.log(${sessionScope.memberInfo.no});
       
       var userInfo = {
               'no': ${sessionScope.memberInfo.no},
               'name': $('#name').val(),
               'email': $('#email').val(),
               'lang': $('#lang').val()
       }
       
       $.ajax({
           url:'userProfileModify.do',
           type:'POST',
           dataType:'JSON',
           data:JSON.stringify(userInfo),
           contentType:"application/json",
           success:function(data){
               console.log("바바밤");
               console.log(data);
               //location.href = "../main";
           }
       
       });
       
    });
    
    $('#PhotoModifyBtn').on('click', function(){
       console.log('된다된다'); 
       fileSubmit();
    });
    
    function validCheck(valid,value){
        if(valid.test(value.val())){
            return true;
        }
        return false;
    }

    $('#imgBtn').on('click', function(){
       console.log("111"); 
       
       
    });
    
    function fileSubmit() {
        var formData = new FormData($('#uploadForm')[0]);
        console.log($('#uploadForm'));
        console.log($('#uploadForm')[0]);
        console.log(formData.get('file1').name);
        console.log("33333");
           $.ajax({
            type : 'post',
            url : 'userFile.do',
            data : formData,
            processData : false,
            contentType : false,
            success : function(data) {
                alert("파일 업로드하였습니다.");
                console.log(data);
                console.log(data.image);
                var a = ("/resources/img/" + data.image);
                $('#userImage').attr('src',a);
            },
            error : function(error) {
                alert("파일 업로드에 실패하였습니다.");
                console.log(error);
                console.log(error.status);
            }
        });
    }

    $('#emailAuthBtn').on('click', function(){
       console.log("aaaa"); 
       
       var obj = {
               'no' : ${memberInfo.no},
               'email' : '${memberInfo.email}'
       }
       
       
       $.ajax({
           url:'/app/auth/emailAuth.do',
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
    
});

</script>
</body>
</html>