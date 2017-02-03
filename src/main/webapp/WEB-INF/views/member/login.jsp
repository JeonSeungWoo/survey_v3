<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.body-box ul li input{
	width: 150px;
   	height: 25px;
    border-radius: 10px;
}




</style>
</head>
<%@ include file="/resources/include/menu.jsp" %>

<body>

<form action="/member/loginPost" method="post" class="comment-form">

<h1> 회원 로그인</h1>
<div class="text-fields">


<div class="body-box">
	<ul>
		<li>아이디 : 	<input type="text" name ="userid"></li>

		<li>비밀번호 : <input type="text" name ="userpw"></li>
			<div class="button">
				<button type="submit" style="border: 0; background: transparent;">
    			<img src="/images/loginbutton.gif" width="90" height="100" alt="submit" />
				</button>
			</div>

	<input type="checkbox" name ="useCookie">로그인 상태 유지

</ul>
</div>

<div class="footer-box">
<button><a href="/member/create"> 회원가입</a></button>
<button><a href="/"> 홈으로</a></button>
</div>



</form>
<form class="comment-form">
					<h1>Leave a comment</h1>
									<div class="text-fields">
										<div class="float-input">
											<input name="name" id="name" type="text" placeholder="Name">
											<span><i class="fa fa-user"></i></span>
										</div>
										<div class="float-input">
											<input name="mail" id="mail" type="text" placeholder="e-mail">
											<span><i class="fa fa-envelope-o"></i></span>
										</div>
										<div class="float-input">
											<input name="website" id="website" type="text" placeholder="website">
											<span><i class="fa fa-link"></i></span>
										</div>
									</div>

									<div class="submit-area">
										<textarea name="comment" id="comment" placeholder="Message"></textarea>
										<input type="submit" id="submit_contact" class="main-button" value="Send Now">
									</div>
								</form>


	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
	


</body>
</html>