<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<form role="form" action="update" method="post">

		<input type='hidden' name='smno' value="${SurveyMainVO.smno}">
		<input type='hidden' name='page' value="${cri.page}"> <input
			type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
			type='hidden' name='searchType' value="${cri.searchType}"> <input
			type='hidden' name='keyword' value="${cri.keyword}">

	</form>

	<form action="SurveyMainVO" id="f1">
		<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
		<input type="hidden" name="page" value="${param.page}">

		<div>
			<ul>
				<li>글번호 : ${SurveyMainVO.smno }</li>
				<li>제목 : ${SurveyMainVO.smtitle }</li>
				<li>설문내용 : ${SurveyMainVO.smcontent }</li>
				<li>이미지 : ${SurveyMainVO.smimage }</li>

				<li>설문시작일자 : ${SurveyMainVO.smregdate }</li>
				<li>설문수정일자 : ${SurveyMainVO.smupdatedate }</li>
			</ul>
		</div>
	</form>

	<div class="box-footer">
		<button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
		<button type="submit" class="btn btn-danger" id="removeBtn">삭제</button>
		<button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
	</div>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

	<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			$("#modifyBtn").on("click", function() {
				formObj.attr("action", "/surveyMain/update");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$("#removeBtn").on("click", function() {
				formObj.attr("action", "/surveyMain/delete");
				formObj.submit();
			});

			$("#goListBtn ").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/surveyMain/listPage");
				formObj.submit();
			});

		});
	</script>
</html>