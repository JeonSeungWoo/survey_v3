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


	<form action="/answer/oxStatistics/" method="get">
		<input type="hidden" name="smno" value="${list[0].smno}"> <input
			type="hidden" name="page" value="${param.page}">

		<h1>통계 페이지</h1>
<%-- 		<h1>${list[0].smno}</h1> --%>
<%-- 		<h1>${list[0].sdno}</h1> --%>



		<div class="answerList">
			<c:forEach items="${answerList}" var="answerList">
				
				<div style="color:black; border:1em	;  border-style: solid; margin: 1em;">
				  <ul class="page">

					<li>${answerList.smno}</li>
					<li>${answerList.sdno}</li>
					<li>${answerList.sdcontent}</li>
					
					
					  <li>${answerList.answer} </li>
					  <li>${answerList.count} </li>
					
					
					
					  <li>                     ${answerList.answer}</li>
					  <li>                    ${answerList.count}</li>
					
				 
				  </ul>
				</div> 
			</c:forEach>
			
		</div>

	</form>


	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>


	<script>

	
	
	
	</script>



	<!-- 
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
 -->


</body>
</html>