<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="update" method="post">
<div id="updateMain">
<input type ="hidden" name="smno" value="${vo.smno}">
<input type="hidden" name = "page" value ="${param.page}">

<input type="text" name="smtitle" value="설문조사 제목">

<input type="text" name = "smcontent" value="설문조사 설명">
<input type="text" name = "smwriter" value ="user">
<input type ="file" name ="smimage" value="${vo.smimage}">
</div>

<button type = "submit" id= "updateBtn">수정</button>
<button type="submit" id = "listBtn">목록으로</button>

</form>
<form action="listSearch" id= "f2">
<input type ="hidden" name="smno" value="${vo.smno}">
<input type="hidden" name = "page" value ="${param.page}">
</form>

<script src="https://code.jquery.com/jquery-2.2.4.js"
integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
crossorigin="anonymous"></script>

<script>


$(document).ready(function(){

	$("#updateBtn").on("click",function(){
		
		obj.attr("action","update").attr("method","post").submit();
	});

	$("#listBtn").on("click",function(){
		$("#f2").attr("action","listPage").submit();
		
	});

});

</script>

</body>
</html>