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
		<input type="hidden" name="page" value="${param.page}">

	<h1>통계 페이지</h1>
<%-- 		<h1>${list[0].smno}</h1> --%>
<%-- 		<h1>${list[0].sdno}</h1> --%>



		<div class="answerList">

			
		</div>
	
	
	<c:forEach var="an" items="${answerList}" varStatus="status">
	
	  <c:set var="current" value ="${an.sdno} : ${an.sdcontent} "></c:set>
	  
	  <ul>
	    
	    <c:if test="${current != text}">
	    <li>${an.sdcontent}</li>
	    </c:if> 
	    
	    
	    <li>${status.index}</li>
	  	<li>${an.sdno}</li>
	  	
	  	<li>${an.answer}</li>
	  	<li>${an.count}</li>
	  </ul>
	  
	  <c:set var="text" value ="${an.sdno} : ${an.sdcontent} "></c:set>
	   
	</c:forEach>
	
	
	

	</form>
	
	<div id='graphDiv'>
	  
	  
	  <h1>${list.size() }</h1>
	 
	  <c:forEach varStatus="st" items="${list}">
	  	
	    <div id='g${st.index}'></div>
	  </c:forEach>
	</div>



	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>


	<script>
	
	
	
	
	

	</script>



	
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
    
    function getData(){
    	
    	$.getJSON("/answer/oxStatisticsAjax" ,{smno:11}, function(result){
    		
    		console.log("---------------------------------");
    		console.log(result);
    		console.log("---------------------------------");
    		
    		var str = "";
    		
    		for(var i = 0; i < result.length; i++){
    			
    			
    			result[i]['target'] ='g'+i;
    			
    			str += "<div id='g"+i+"'></div>";
    			
    		}
    		
    		$("#graphDiv").append(str);
    		
    		
    		drawGraph(result);
    	})
    	
    }
    
    getData();
    
    
    
    function drawGraph(resultArr){
    	
    	//console.log("====================================");
    	//console.log(resultArr);
    	
    	var that = this;
    	
    	for (var i = 0; i < resultArr.length; i++){
    		
    		
    		
    		//console.log('drawGraph' + resultArr[i]);
    		console.log(resultArr[i]);
    		
    		//google.charts.load("current", {packages:["corechart"]});
    	    //google.charts.setOnLoadCallback(drawChart);
    	    
    	    (function(targetData){
    	    	
    	    	google.charts.load("current", {packages:["corechart"]});
        	    google.charts.setOnLoadCallback(drawChart);
    	    	
        	    //console.log("-----------------------");
        	    //console.log(targetData);
        	    //console.log("-----------------------");
        	    
        	    
    	    	function drawChart() {
        	        var data = google.visualization.arrayToDataTable([
        	          ['Task', 'Hours per Day'],
        	          ['O',  targetData.oresult],
        	          ['X',  targetData.xresult]
        	        ]);

    	    	    var options = {
    	    	          title: 'My Daily Activities',
    	    	          is3D: true,
    	    	        };
    				
    	    	    console.log("CHART==================");
    	    	    console.log(targetData.target);
    	    	    
    	    	    
    	    	    var chart = new google.visualization.PieChart(document.getElementById(targetData.target) );
    	    	    
    	    	    
    	    	    chart.draw(data, options);
        	    }   	    

    	    	
    	    })(resultArr[i]);
    	    
    	        		
    	}
    	
    }
    
    //drawGraph(['aaa','bbb','ccc']);
    

    </script>



</body>
</html>