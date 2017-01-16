<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="read" id="f1">
		<input type="hidden" name="smno" value="${read.smno}"> <input
			type="hidden" name="page" value="${param.page}">

		<div>
			<ul>
				<li>글번호 : ${read.smno }</li>
				<li>제목 : ${read.smtitle }</li>
				<li>설문내용 : ${read.smcontent }</li>
				<li>이미지 : ${read.smimage }</li>

				<li>설문시작일자 : ${read.smregdate }</li>
				<li>설문수정일자 : ${read.smupdatedate }</li>
			</ul>
		</div>
	</form>

	<div id="Btn">
		<button type="submit" id="updateBtn">수정</button>
		<button type="submit" id="delBtn">삭제</button>
		<button type="submit" id="listBtn">홈으로</button>
	</div>


	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

	<script>
		$(document).ready(
				function() {

					var obj = $("#f1");

					$("#updateBtn").on(
							"click",
							function() {

								obj.attr("action", "update").attr("method",
										"get").submit();
							});

					$("#delBtn").on(
							"click",
							function() {

								obj.attr("action", "delete").attr("method",
										"post").submit();
							});

					$("#listBtn").on(
							"click",
							function() {

								obj.attr("action", "listSearch").attr("method",
										"get").submit();
							});

				});
	</script>





</body>


</html>