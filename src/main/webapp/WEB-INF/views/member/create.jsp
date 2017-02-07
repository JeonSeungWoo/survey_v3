<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JoinPage</title>
<style>

html { background: url(/resources/images/create11.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; }


#all{
	
	position:absolute;
  	top:30%;
  	left:50%;
 	width:100px;
  	height:100px;
	display: table;
  	margin:-50px 0 0 -50px;
	margin-left: auto;
	margin-right: auto;
	width:500px;
	padding:0.5rem;

}

.main-button{
border-radius: 10px;
}

</style>
</head>
<%@ include file="/resources/include/menu2.jsp" %>

<body>
<div id="all">
<form id="contact-form" action="/member/create" method="post">
	
	<div class="text-fields"> 
		<div class="float-input">
			<input type="text" name="userid" id ="userid" placeholder="아이디">
			<span><i class="fa fa-user"></i></span>
		</div>
		
		<div class="float-input">
			<input type="text" name="email" placeholder="이메일">
			<span><i class="fa fa-envelope-o"></i></span>
		</div>
		
		<div class="float-input">
			<input type="password" name="userpw" placeholder="비밀번호" id="password" style="width: 176px; padding: 17.5px;">
			<span><i class="fa fa-link"></i></span>
		</div>
		
		<input type="submit"  class="main-button" value="회원가입" style="margin: 1px;">
		
		<input type="submit" id="goListBtn" class="main-button" value="목록으로">
			
	</div>
		
		<div>
			<input type="submit" value="Id체크" id="chkDupId" style="width: 110.5px; border-radius: 10px;">
				<span id="idck"></span>
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
			
			$("#contact-form").submit(function(event){
				
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
		
</div>
<%@ include file="/resources/include/main.jsp"%>