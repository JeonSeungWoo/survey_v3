	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/resources/include/menu.jsp" %>
</head>
<style>

#imgread{
width: 200px;
height: 200px;
background-: 
}

.statisticsAction{

}

.box-main{
 position: relative;
 top: 100px;
 right: 50;
}

.box-main ul{
border: 3px solid #73AD21;
width:700px;
height:400px;
padding: 10px;
text-align: center;
}

.box-main li{

}

.box-footer{

}
</style>
<body>



<form action="/surveyView/readMain" method="get" id="f1">

	<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
	<input type="hidden" name="page" value="${param.page}">
	<input type="hidden" name="qnum" id='qnum'value="${param.qnum}">
	
	

	
	<div class = "statisticsAction">
	<ul>
	<li><a href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1">통계</a></li>
	</ul>
	</div>
	
	<div class="box-main">
			<ul>
				<li>글번호 : ${SurveyMainVO.smno }</li>
				<li>제목 : ${SurveyMainVO.smtitle }</li>
				<li>설문내용 : ${SurveyMainVO.smcontent }</li>
				<li><img id="imgread" src="show?name=${SurveyMainVO.smimage}"></li>

				<li>설문시작일자 : <fmt:formatDate value="${SurveyMainVO.smregdate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
				<li>설문수정일자 : <fmt:formatDate value="${SurveyMainVO.smupdatedate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
			</ul>
	</div>
		


	<div class="box-footer">
	
		<button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
		<button type="submit" class="btn btn-start" id="startBtn">설문 시작</button>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
		
	
		
		
	<script>
		$(document).ready(function() {
			
			var formObj = $("#f1");

			console.log(formObj);
			
			$("#startBtn ").on("click", function() {
				
				$("#qnum").val("0");
				formObj.attr("action","/surveyView/readDetail?smno=${SurveyMainVO.smno}&page=1");
				formObj.attr("method", "get");
				formObj.submit();
			}); 

			
			$("#goListBtn ").on("click", function() {
				formObj.attr("action","/surveyMain/listPage?page=1");
				formObj.attr("method", "get");
				formObj.submit();
			});

		});
		
	</script>		


</form>


</body>
