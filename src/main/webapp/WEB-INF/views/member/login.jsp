<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/resources/include/menu.jsp"%>

<style>
html { background: url(/resources/images/login.gif) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; }



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

.text-fields{
width:93%;
}
</style>


<div id="all" class='col-xs-10 col-md-4 col-md-offset-9' style="margin-top: 10%">
<form action="/member/loginPost" method="post" class="comment-form">

	<div class="text-fields">
		<div class="float-input">
			<input name="userid" id="name" type="text" placeholder="아이디" style="width:173px;">
			<span><i class="fa fa-user"></i></span>
		</div>
		
		<div class="float-input">
			<input name="userpw" id="mail" type="password" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;비밀번호" style="height:58px; border: 1px solid white;">
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

<%@ include file="/resources/include/main.jsp"%>
