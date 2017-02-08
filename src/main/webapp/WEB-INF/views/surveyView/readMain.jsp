	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/resources/include/menu.jsp" %>


<style>

#imgread{

width: 300px;
height: 300px;
border-radius: 100px; 
background : url(/resources/images/no-image.jpg);
background-size:cover;
}

.allPage{

position:absolute;
position:absolute;
top:150px;
left:40%;
}

.box-main{
background-color : #ACACD1;
color:white;
border: 1px solid blue;
text-align: center;
font-size: 30px;
font-family: sans-serif, dotum,gulim, arial, helvetica;
padding: 10px;
font-weight: bold;
}


.statisticsAction{
border: 1px solid black;
font-size: 30px;
font-family: sans-serif, dotum,gulim, arial, helvetica;
font-weight: bold;
color: #E8E8E8;
background-color: #BBD1E8;
text-align: center;
}

.box-main li{
padding: 10px;
}

.box-footer{
border: 1px solid red;
text-align: right;

}

#aTag:HOVER {
	
	background : black;
	background-size:cover;
	color: white;
}
#aTag:ACTIVE {
	
	color: blue;
	background-color: red;  
	
}


</style>





<form action="/surveyView/readMain" method="get" id="f1">

	<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
	<input type="hidden" name="page" value="${param.page}">
	<input type="hidden" name="qnum" id='qnum'value="${param.qnum}">
	
	

	<div class ="allPage">
	<div class = "statisticsAction">
	
	<ul>
	<li><a id="aTag" href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1" >통계</a></li>
	</ul>
	</div>
	
	<div class="box-main">
			<ul>
				<li>글번호 : ${SurveyMainVO.smno }</li>
				<li>제목 : ${SurveyMainVO.smtitle }</li>
				<li>설문내용 : ${SurveyMainVO.smcontent }</li>
				<li>설문시작일자 : <fmt:formatDate value="${SurveyMainVO.smregdate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
				<li>설문수정일자 : <fmt:formatDate value="${SurveyMainVO.smupdatedate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
				
				<li><img id="imgread" src="show?name=${SurveyMainVO.smimage}"></li>
			</ul>
	</div>
		
		<div class="box-footer">
	
		<button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
		<button type="submit" class="btn btn-start" id="startBtn">설문 시작</button>
	</div>
	</div>
		
</form>

	
	
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




<%@ include file="/resources/include/main.jsp"%>
