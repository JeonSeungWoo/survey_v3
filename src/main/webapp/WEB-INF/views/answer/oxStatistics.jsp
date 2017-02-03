<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="/answer/oxStatistics" method="get">
<input type="hidden" name="smno" value="${oxStatistics.smno}">
<input type="hidden" name="page" value="${param.page}">


<c:forEach items="${list}" var="SurveyDetailVO">

		<div class ="box-main">
			<ul class="page">
				<li>${SurveyDetailVO.smno}</li>
				<li>${SurveyDetailVO.sdno}</li>
				<li>${SurveyDetailVO.sdtitle}</li>
				<li>${SurveyDetailVO.sdcontent}</li>
			</ul>
			
		<h4>${answerList}</h4>
		<h4>${answerList[0].count}</h4>
		<h4>${answerList[1].count}</h4>
	 	<div id="piechart_3d" style="width: 900px; height: 500px;"></div>
		</div>
</c:forEach>


</form>


	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
    
    
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['O',  11],
          ['X',  7]
        ]);

        var options = {
          title: 'My Daily Activities',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>



</body>
</html>