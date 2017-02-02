<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/member/create" method="post" id ="f1">
<div class="box-header"> 
<h1>회원가입 </h1>
</div>

<div class="box-body">
<ul>
<li>
아이디 : <input type="text" name="userid" id ="userid">
<input type="button" value="Id체크" id="chkDupId">
<span id="idck"></span>
</li>

<li>비밀번호  : <input type="password" name="userpw"></li>
<li>이메일 : <input type="text" name="email"></li>
</ul>
</div>

<div class="box-footer">
<button type="submit">회원 가입</button>

<button id="goListBtn">목록으로</button>
</div>

</form>




	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
		
<script>

$("#goListBtn ").on("click", function(event) {
	event.preventDefault();
	self.location = "/member/login";
});

		$(document).ready(function(){
			
			
			
			
			var checkedId = false;
			
			$("#f1").submit(function(event){
				
				if(checkedId == true){
					alert("회원가입 되셨습니다.");
					return true;
				}
				if(checkedId ==false){
					alert("아이디를 확인해 주세요");
					return false;
				}
				
			});
			
$("#chkDupId").on("click",function(){
	$.ajax({
		type:"POST",
		url : "/member/chkDupid",
		data : {"userid" : $("#userid").val()},
		
		success: function(data){
			
			if($.trim(data) == 0){
				alert("가입가능");
				$("#idck").html('<b style ="font-size:18px; color:blue">사용가능</b>');
				checkedId = true;
			}else{
				alert("사용불가");
				$("#idck").html('<b style ="font-size:18px; color:red">사용불가</b>');
				checkedId = false;
			}
		}
		
	});
	return false;
});
});


		
</script>
		

</body>
</html>