<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/member/loginPost" method="post">

<div class="header-box">
<h1> 회원 로그인</h1>
</div>

<div class="body-box">
<ul>
<li>아이디 : <input type="text" name ="userid"></li>

<li>비밀번호 : <input type="text" name ="userpw"></li>

<li> <input type="checkbox" name ="useCookie"></li>
</ul>
</div>

<div class="footer-box">
<button type="submit"> 로그인</button>
<button><a href="/member/create"> 회원가입</a></button>
<button><a href="/"> 홈으로</a></button>
</div>



</form>


	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
	


</body>
</html>