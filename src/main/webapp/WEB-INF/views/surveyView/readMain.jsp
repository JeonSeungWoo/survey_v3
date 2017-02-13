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

.box-main {
	color: black;
	text-align: center;
	font-size: 30px;
	font-family: sans-serif, dotum, gulim, arial, helvetica;
	padding: 10px;
	font-weight: bold;
	width: 100%;
}

.statisticsAction {
	font-size: 30px;
	font-family: sans-serif, dotum, gulim, arial, helvetica;
	font-weight: bold;
	color: #E8E8E8;
	text-align: center;
}

.box-main ul li {
	background: #eee url(/data/201012/IJ12929573850979/c_bl.gif) bottom left
		no-repeat;
	margin: 5px 0;
	padding: 0;
	float: left;
	margin-left: 50px;
	margin-right: 20px;
	width: 40%;
}

.box-footer {
	float: right;
}

#aTag{
margin-right: 18%;
}

#aTag:HOVER {
	background: #b9c9fe;
	background-size: cover;
	color: black;
}

#aTag:ACTIVE {
	color: blue;
	background-color: white;
}

#f1 {
	background-color: white;
}

/* #rounded-corner {
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 30px;
	margin-left: 14%;
	width: 550x;
	text-align: left;
	border-collapse: collapse;
	text-align: center;
} 

#rounded-corner thead th.rounded-company {
	background: #b9c9fe url('/resources/images/left.png') left -1px
		no-repeat;
}

#rounded-corner thead th.rounded-q4 {
	background: #b9c9fe url('/resources/images/right.png') right -1px
		no-repeat;
}

#rounded-corner th {
	padding: 8px;
	font-weight: normal;
	font-size: 30px;
	color: #039;
	background: #b9c9fe;
	text-align: center;
}

#rounded-corner td {
	padding: 8px;
	background: #e8edff;
	border-top: 1px solid #fff;
	color: #669;
}

#rounded-corner tfoot td.rounded-foot-left {
	background: #e8edff url('/resources/images/botleft.png') left bottom
		no-repeat;
}

#rounded-corner tfoot td.rounded-foot-right {
	background: #e8edff url('/resources/images/botright.png') right bottom
		no-repeat;
}

#rounded-corner tbody tr:hover td {
	background: #d0dafd;
} */








.logo{

}


.logo a {
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
.logo a:first-line {
  font-size: 0.8em;
}
.logo a:hover {
  -webkit-transform: perspective(8em) rotateX(11deg) scale(1.2);
  -moz-transform: perspective(8em) rotateX(11deg) scale(1.2);
  -ms-transform: perspective(8em) rotateX(11deg) scale(1.2);
  -o-transform: perspective(8em) rotateX(11deg) scale(1.2);
  transform: perspective(8em) rotateX(11deg) scale(1.2);
  text-shadow: 0 -1px 15px black, 0 1px 0 #048e87, 0 2px 0 #10968f, 0 0px 0 #1ea09a, 0 1px 0 #48a8a3, 0 2px 0 #937203, 0 2px 30px rgba(142, 229, 225, 0.6);
}




</style>




<form action="/surveyView/readMain" method="get" id="f1">

	<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
	<input type="hidden" name="page" value="${param.page}"> <input
		type="hidden" name="qnum" id='qnum' value="${param.qnum}">



	<div class="allPage">


		<%-- <div class="box-main">
			<tr>
				<td>글번호 : ${SurveyMainVO.smno }</td>
				<td>${SurveyMainVO.smtitle }</td>
				<td>${SurveyMainVO.smcontent }</td> 설문시작일자 :
				<td>
			<fmt:formatDate value="${SurveyMainVO.smregdate}"
					pattern="yyyy-MM-dd HH:mm:ss" />
				</td>


				<img id="imgread" src="show?name=${SurveyMainVO.smimage}">
				</tr>
		</div> --%>
		
		
		

		<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
			
					<!-- <th scope="col" class="rounded-company">글번호</th> -->

					<th scope="col" class="rounded-q4" hidden="">${SurveyMainVO.smno }</th>
			
			<div class="logo">
				
					<a href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1">${SurveyMainVO.smtitle }</a>
				
			</div>
					<li>${SurveyMainVO.smcontent }</li>
					<li colspan="1" class="rounded-foot-left"><em><fmt:formatDate
								value="${SurveyMainVO.smregdate}" pattern="yyyy-MM-dd HH:mm" /></em></li>
			
 
			
		</table>
		
  			
		</div>
		
		



		<img id="imgread" style="margin-left: 22%;"
			src="show?name=${SurveyMainVO.smimage}">


		<div class="statisticsAction">
			<ul>
				<li><a id="aTag"
					href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1">설문결과</a></li>
			</ul>
		</div>


		<div class="box-footer">

			<button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
			&nbsp;
			<button type="submit" class="btn btn-start" id="startBtn">설문
				시작</button>
			&emsp;
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