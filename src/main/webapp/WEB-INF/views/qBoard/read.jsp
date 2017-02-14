<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="read" id="f1" method="post">
<input type="hidden" name="qno" value="${read.qno}">
<input type="hidden" name="page" value="${param.page}">

<ul>
<li>${read.qno}</li>

<li>${read.qtitle}</li>
<li>${read.qcontent}</li>
<li>${read.qwriter}</li>
</ul>
<button type="submit" id ="upBtn">업데이트</button>
<button type="submit" id ="delBtn">삭제</button>
<button type="submit" id ="listBtn">목록</button>
</form>

<script src="https://code.jquery.com/jquery-2.2.4.js"
integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
crossorigin="anonymous"></script>

<script>

$(document).ready(function(){
	var obj = $("#f1");
	
	$("#upBtn").on("click",function(){
		obj.attr("action","update").attr("method","get").submit();
	});
	
	$("#delBtn").on("click",function(){
		obj.attr("action","delete").attr("method","post").submit();
	});
	
});



</script>

</body>
</html>