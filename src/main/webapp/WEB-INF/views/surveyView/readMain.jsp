<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@ include file="/resources/include/menu.jsp"%>

<style>
html {
	background-color: white;
}

#imgread {
	width: 300px;
	height: 300px;
	border-radius: 50px;
	background: url(/resources/images/no-image.jpg);
	background-size: cover;
	
}



.statisticsAction {
	font-size: 30px;
	font-family: sans-serif, dotum, gulim, arial, helvetica;
	font-weight: bold;
	color: #E8E8E8;
	
}



#aTag:HOVER {
	background: #b9c9fe;
	background-size: cover;
	color: black;
}



.col-md-12 a {
  text-decoration: none;
  -webkit-transform: perspective(2.5em) rotateX(15deg) scaleY(0.8);
  -moz-transform: perspective(2.5em) rotateX(15deg) scaleY(0.8);
  -ms-transform: perspective(2.5em) rotateX(15deg) scaleY(0.8);
  -o-transform: perspective(2.5em) rotateX(15deg) scaleY(0.8);
  transform: perspective(2.5em) rotateX(15deg) scaleY(0.8);
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  transition: all 0.5s;
  display: inline-block;
  text-align: center;
  text-transform: uppercase;
  font-size: 150px;
  font-weight: 700;
  font-family: 'Exo 2';
  line-height: 0.8;
  color: rgba(36,176,174,0.9);
  text-shadow: 0 -1px 15px rgba(0, 0, 0, 0.9), 0 1px 0 #048e87, 0 3px 0 #10968f
, 0 5px 0 #1ea09a, 0 7px 0 #48a8a3, 0 9px 0 #33a09b, 0 6px 50px rgba(142, 229, 225, 0.8);
}
.col-md-12 a:first-line {
  font-size: 0.8em;
}
.col-md-12 a:hover {
  -webkit-transform: perspective(8em) rotateX(11deg) scale(1.2);
  -moz-transform: perspective(8em) rotateX(11deg) scale(1.2);
  -ms-transform: perspective(8em) rotateX(11deg) scale(1.2);
  -o-transform: perspective(8em) rotateX(11deg) scale(1.2);
  transform: perspective(8em) rotateX(11deg) scale(1.2);
  text-shadow: 0 -1px 15px black, 0 1px 0 #048e87, 0 2px 0 #10968f, 0 0px 0 #1ea09a, 0 1px 0 #48a8a3, 0 2px 0 #937203, 0 2px 30px rgba(142, 229, 225, 0.6);
}

.post-info{
text-align: center;
font-size: x-large;
}


</style>


<form action="/surveyView/readMain" method="get" id="f1">

	<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
	<input type="hidden" name="page" value="${param.page}"> <input
		type="hidden" name="qnum" id='qnum' value="${param.qnum}">	




			<div class="rounded-q4" hidden="">${SurveyMainVO.smno }</div>
			<div class="low">
			<div class="col-md-12">
				
					<a href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1">${SurveyMainVO.smtitle }</a>
			</div>
			</div>
			
			<div class="low">
				<div class="col-md-10 col-md-offset-1">
					<div class="post-info">
					<ul>
						<li>${SurveyMainVO.smcontent }</li>
						<li colspan="1" class="rounded-foot-left"><em><fmt:formatDate
								value="${SurveyMainVO.smregdate}" pattern="yyyy-MM-dd HH:mm" /></em></li>
					</ul>
					</div>
 				</div>
 			</div>
			
			<div class="low">
				
				<img class="col-md-8 col-md-offset-4" id="imgread" src="show?name=${SurveyMainVO.smimage}">
				
			</div>	

		<div class="low">
		<div class="col-md-4 col-md-offset-8">
		
		<div class="statisticsAction">
			<ul>
				<li><a id="aTag"
					href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1">설문결과</a>
			
		
				<button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
			
				<button type="submit" class="btn btn-start" id="startBtn">설문
				시작</button></li>
			
			</ul>
		</div>
		</div>
		</div>


</form>



<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous"></script>




<script>
	$(document)
			.ready(
					function() {

						var formObj = $("#f1");

						console.log(formObj);

						$("#startBtn ")
								.on(
										"click",
										function() {

											$("#qnum").val("0");
											formObj
													.attr("action",
															"/surveyView/readDetail?smno=${SurveyMainVO.smno}&page=1");
											formObj.attr("method", "get");
											formObj.submit();
										});

						$("#goListBtn ").on(
								"click",
								function() {
									formObj.attr("action",
											"/surveyMain/listPage?page=1");
									formObj.attr("method", "get");
									formObj.submit();
								});

					});
</script>




<%@ include file="/resources/include/main.jsp"%>