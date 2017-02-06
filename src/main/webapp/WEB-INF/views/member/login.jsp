<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
html { background: url(/resources/images/login.gif) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; }




#all{
	
	position:absolute;
  	top:25%;
  	left:80%;
 	width:100px;
  	height:100px;
	display: table;
  	margin:-50px 0 0 -50px;
	margin-left: auto;
	margin-right: auto;
	width:500px;
	padding:0.5rem;
	
	
}

#join input{
width:235px;
border-radius: 10px;

}
#home input{
width:235px;
border-radius: 10px;

}

.comment-form{
padding:1.5px;
}

</style>
</head>
<%@ include file="/resources/include/menu.jsp" %>

<body>
<div id="all">
<form action="/member/loginPost" method="post" class="comment-form">

	<div class="text-fields">
		<div class="float-input">
			<input name="userid" id="name" type="text" placeholder="아이디">
			<span><i class="fa fa-user"></i></span>
		</div>
		
		<div class="float-input">
			<input name="userpw" id="mail" type="password" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;비밀번호" style="height:58px;">
			<span><i class="fa fa-envelope-o"></i></span>
		</div>
		
		
		<input type="checkbox" name ="useCookie" >로그인 상태 유지
		
			<input type="submit" class="join-button" style="width: 110.5px; border-radius: 10px;" value="로그인">
		
	</div>	
</form>

<form action="/member/create" method="get" class="comment-form">
	<div id="join">
		<input type="submit" class="main-button" value="회원가입">
	</div>			
</form>

<form action="/" method="get" class="comment-form">
	<div id="home">
		<input type="submit" class="main-button" value="홈으로">
	</div>		
</form>			

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
</div>	

</body>
</html>