<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>
.box-main ul{
float: left;


}
.box-main li{

}

</style>

<body>

<div class="box-main">


<ul>
<li>1번문제</li>
<li>비교할 1번째 값  : <input type="text" id="oneItem1"></li>
<li>비교할 2번째 값  : <input type="text" id="oneItem2"></li>
</ul>

<ul>
<li>2번문제</li>
<li>비교할 1번째 값  : <input type="text" id="twoItem1"></li>
<li>비교할 2번째 값  : <input type="text" id="oneItem2"></li>
</ul>

<button>summit</button>
</div>




<div id="curve_chart" style="width: 900px; height: 500px"></div>

<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
	
      
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['',  1 ,  1 ],
          ['',  1170,      460],
          ['',  660,       1120],
          ['',  660,       1120],
          ['',  660,       1120],
          ['',  660,       1120],
          ['',  660,       1120],
          ['',  660,       1120],
          ['',  660,       1120],
          ['',  1030,      540]
        ]);

        var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>

</body>
</html>