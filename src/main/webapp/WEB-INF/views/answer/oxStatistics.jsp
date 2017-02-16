<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/resources/include/menu.jsp"%>

<style>
/* .comment-form {
	color: white;
	border-radius: 10px;
	font-size: 14px;
	padding: 10px;  
	text-transform: uppercase;
	transition: all 0.2s ease-in-out;
	-moz-transition: all 0.2s ease-in-out;
	-webkit-transition: all 0.2s ease-in-out;
	-o-transition: all 0.2s ease-in-out;
	background-color:#488d91;
} */
.html{
background-color: red;
}

.listMain li{
	text-align: center;
	font-size: 25px;
	padding: 10px;
	margin: 30px;
	
	
}



</style>


	<form action="/answer/oxStatistics/" method="get">
		<input type="hidden" name="page" value="${param.page}">

		<h1 ID="animate"></h1>

		<div class="answerList"></div>


		<c:forEach var="an" items="${answerList}" varStatus="status">

			<c:set var="current" value="${an.sdno} : ${an.sdcontent} "></c:set>

			<ul>

				<c:if test="${current != text}">
					<li>${an.sdcontent}</li>
				</c:if>

				<li>${status.index}</li>
				<li>${an.sdno}</li>

				<li>${an.answer}</li>
				<li>${an.count}</li>
			</ul>

			<c:set var="text" value="${an.sdno} : ${an.sdcontent} "></c:set>

		</c:forEach>



	</form>

	<div id='graphDiv'>


		

		<c:forEach varStatus="st" items="${list}" var="list">
		
		<div class="listMain">
		<ul>
		

		<li class="text"><B>제목 : </B>${list.sdtitle}</li>
	
		
		
		<li class="text"><B>내용 : </B>${list.sdcontent}</li>	
		
		
			
		</ul>
		</div>	 
		
		
			<div id='g${st.index}' class="listDetail"></div>
		</c:forEach>
		
	</div>




	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
		

		
		
		
		
<script language="javascript">
var ie4 = false;
if(document.all) {
		ie4 = true; 
}       
function setContent(name, value) {
		var d;  
		if (ie4) { 
				d = document.all[name];
		} else {
				d = document.getElementById(name);
		}       
		d.innerHTML = value;    
}       

function getContent(name) {
var d;
		if (ie4) {
				d = document.all[name];
		} else {
				d = document.getElementById(name);
		}
		return d.innerHTML;
}

function setColor(name, value) {
		var d;  
		if (ie4) { 
				d = document.all[name];
		} else {
				d = document.getElementById(name);
		}
		d.style.color = value;  
}

function getColor(name) {
		var d;
		if (ie4) {
				d = document.all[name];
		} else {
				d = document.getElementById(name);
		}
		return d.style.color;
}

function animate(name, col) {
var value = getContent(name);
if (value.indexOf('<span') >= 0) { return; }
var length = 0;
		var str = '';
var ch;
var token = '';
var htmltag = false;	
		for (i = 0; i < value.length; i++) {
	ch = value.substring(i, i+1);
	if (i < value.length - 1) { nextch = value.substring(i+1, i+2); } else { nextch = ' '; }
	token += ch;
	if (ch == '<' && '/aAbBpPhHiIoOuUlLtT'.indexOf(nextch) >= 0) { htmltag = true; }
	if (ch == '>' && htmltag) { htmltag = false; }
	if (!htmltag && ch.charCodeAt(0) > 30 && ch != ' ' && ch != '\n') {		
					str += '<span id="' + name + '_' + length + '">' + token + '</span>';
		token = '';
		length++;
	}
		}
		setContent(name, str);
		command = 'animateloop(\'' + name + '\', ' + length + ', 0, 1, \'' + col + '\')';
		setTimeout(command , 100);
}

function animateloop(name, length, ind, delta, col) {
var next = ind + delta;
if (next >= length) { delta = delta * -1; next = ind + delta; }
if (next < 0) { delta = delta * -1; next = ind + delta; }
		setColor(name + '_' + ind, getColor(name + '_' + next));
		setColor(name + '_' + next, col);
		command = 'animateloop(\'' + name + '\', ' + length + ', ' + next + ', ' + delta + ', \'' + col + '\')';
		setTimeout(command , 100);
}
</script>



	<SCRIPT language="JavaScript">
   			animate('animate', 'silver');
		</SCRIPT>

	<SCRIPT language="JavaScript">
         animate('animate1', 'blue');
 	</SCRIPT>
	
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		function getData() {

			$.getJSON("/answer/oxStatisticsAjax", {smno : ${list[0].smno}}, function(result) {

				console.log("---------------------------------");
				console.log(result);
				console.log("---------------------------------");

				var str = "";

				for (var i = 0; i < result.length; i++) {

					result[i]['target'] = 'g' + i;

					str += "<div id='g"+i+"'></div>";

				}

				$("#graphDiv").append(str);

				drawGraph(result);
			})

		}

		getData();

		function drawGraph(resultArr) {

			//console.log("====================================");
			//console.log(resultArr);

			var that = this;

			for (var i = 0; i < resultArr.length; i++) {

				//console.log('drawGraph' + resultArr[i]);
				console.log(resultArr[i]);

				//google.charts.load("current", {packages:["corechart"]});
				//google.charts.setOnLoadCallback(drawChart);

				(function(targetData) {

					google.charts.load("current", {
						packages : [ "corechart" ]
					});
					google.charts.setOnLoadCallback(drawChart);

					//console.log("-----------------------");
					//console.log(targetData);
					//console.log("-----------------------");

					function drawChart() {
						var data = google.visualization.arrayToDataTable([
								[ 'Task', 'Hours per Day' ],
								[ 'O', targetData.oresult ],
								[ 'X', targetData.xresult ] ]);

						var options = {
							/* title : 'My Daily Activities', */
							is3D : true,
						};

						console.log("CHART==================");
						console.log(targetData.target);

						var chart = new google.visualization.PieChart(document
								.getElementById(targetData.target));

						chart.draw(data, options);
					}

				})(resultArr[i]);

			}

		}
	//drawGraph(['aaa','bbb','ccc']);
	</script>


<!-- 	<script>
		$(document)
				.ready(
						function() {
							$('#rBtn')
									.on(
											"click",
											function(event) {
												self.location = "/surveyView/readMain?smno=${param.smno}&page=${param.page}";

											});
						});
	</script> -->



<%@ include file="/resources/include/main.jsp"%>