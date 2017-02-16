<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/include/menu.jsp"%>


<style>

	* { 
		margin: 0; 
		padding: 0; 
	}
	body { 
		font: 14px/1.4 Georgia, Serif; 
	}
	#page-wrap {
		margin: 50px;
	}
	p {
		margin: 20px 0; 
	}

		/* 
		Generic Styling, for Desktops/Laptops 
		*/
		table { 
			width: 95%;
			position:relative;
			left: 2%; 
			border-collapse: collapse; 
		}
		/* Zebra striping */
		tr:nth-of-type(odd) { 
			background: #eee; 
		}
		th { 
			background: #333; 
			color: white; 
			font-weight: bold; 
		}
		td, th { 
			padding: 6px; 
			border: 1px solid #ccc; 
			text-align: left; 
		}
	
	@media 
	only screen and (max-width: 760px),
	(min-device-width: 768px) and (max-device-width: 1024px)  {
	
		/* Force table to not be like tables anymore */
		table, thead, tbody, th, td, tr { 
			display: block; 
		}
		
		/* Hide table headers (but not display: none;, for accessibility) */
		thead tr { 
			position: absolute;
			top: -9999px;
			left: -9999px;
		}
		
		tr { border: 1px solid #ccc; }
		
		td { 
			/* Behave  like a "row" */
			border: none;
			border-bottom: 1px solid #eee; 
			position: relative;
			padding-left: 50%; 
		}
		
		td:before { 
			/* Now like a table header */
			position: absolute;
			/* Top/left values mimic padding */
			top: 6px;
			left: 6px;
			width: 45%; 
			padding-right: 10px; 
			white-space: nowrap;
		}
		
		/*
		Label the data
		*/
		td:nth-of-type(1):before { content: "First Name"; }
		td:nth-of-type(2):before { content: "Last Name"; }
		td:nth-of-type(3):before { content: "Job Title"; }
		td:nth-of-type(4):before { content: "Favorite Color"; }
		td:nth-of-type(5):before { content: "Wars of Trek?"; }
		td:nth-of-type(6):before { content: "Porn Name"; }
		td:nth-of-type(7):before { content: "Date of Birth"; }
		td:nth-of-type(8):before { content: "Dream Vacation City"; }
		td:nth-of-type(9):before { content: "GPA"; }
		td:nth-of-type(10):before { content: "Arbitrary Data"; }
	}
	
	/* Smartphones (portrait and landscape) ----------- */
	@media only screen
	and (min-device-width : 320px)
	and (max-device-width : 480px) {
		body { 
			padding: 0; 
			margin: 0; 
			width: 320px; }
		}
	
	/* iPads (portrait and landscape) ----------- */
	@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
		body { 
			width: 495px; 
		}
	}
	
#curve_chart{

height: 500px;
}	
</style>




<table class="namietable col-md-12" border="1" cellpadding="0" cellspacing="0">
<caption><h1>이동평균(MA)</h1></caption>
	<tr>
		<th scope="col" class="date">구분 항목</th>
		<th scope="col" class="place">2개월</th>
		<th scope="col" class="place">4개월</th>
		<th scope="col" class="place">6개월</th>
		<th scope="col" class="place">12개월</th>
		
	</tr>



<tr>
<td>1월</td>
<td class="t1"><input type='text' id='A4_1' size=4 value ="0"></td>
<td><input type='text' id='A3_1' size=4 value ="0"></td>
<td><input type='text' id='A2_1' size=4 value ="0"></td>
<td><input type='text' id='A1_1' size=4 value ="0"></td>
</tr>
<tr>
<td>2월</td>
<td><input type='text' id='A4_2' size=4></td>
<td><input type='text' id='A3_2' size=4></td>
<td><input type='text' id='A2_2' size=4></td>
<td><input type='text' id='A1_2' size=4></td>
</tr>
<tr>
<td>3월</td>
<td><input type='text' id='A4_3' size=4></td>
<td><input type='text' id='A3_3' size=4></td>
<td><input type='text' id='A2_3' size=4></td>
<td><input type='text' id='A1_3' size=4></td>
</tr>
<tr>
<td>4월</td>
<td><input type='text' id='A4_4' size=4></td>
<td><input type='text' id='A3_4' size=4></td>
<td><input type='text' id='A2_4' size=4></td>
<td><input type='text' id='A1_4' size=4></td>
</tr>
<tr>
<td>5월</td>
<td><input type='text' id='A4_5' size=4></td>
<td><input type='text' id='A3_5' size=4></td>
<td><input type='text' id='A2_5' size=4></td>
<td><input type='text' id='A1_5' size=4></td>
</tr>
<tr>
<td>6월</td>
<td><input type='text' id='A4_6' size=4></td>
<td><input type='text' id='A3_6' size=4></td>
<td><input type='text' id='A2_6' size=4></td>
<td><input type='text' id='A1_6' size=4></td>
</tr>
<tr>
<td>7월</td>
<td><input type='text' id='A4_7' size=4></td>
<td><input type='text' id='A3_7' size=4></td>
<td><input type='text' id='A2_7' size=4></td>
<td><input type='text' id='A1_7' size=4></td>
</tr>
<tr>
<td>8월</td>
<td><input type='text' id='A4_8' size=4></td>
<td><input type='text' id='A3_8' size=4></td>
<td><input type='text' id='A2_8' size=4></td>
<td><input type='text' id='A1_8' size=4></td>
</tr>

<tr>
<td>9월</td>
<td><input type='text' id='A4_9' size=4></td>
<td><input type='text' id='A3_9' size=4></td>
<td><input type='text' id='A2_9' size=4></td>
<td><input type='text' id='A1_9' size=4></td>
</tr>

<tr>
<td>10월</td>
<td><input type='text' id='A4_10' size=4></td>
<td><input type='text' id='A3_10' size=4></td>
<td><input type='text' id='A2_10' size=4></td>
<td><input type='text' id='A1_10' size=4></td>
</tr>

<tr>
<td>11월</td>
<td><input type='text' id='A4_11' size=4></td>
<td><input type='text' id='A3_11' size=4></td>
<td><input type='text' id='A2_11' size=4></td>
<td><input type='text' id='A1_11' size=4></td>
</tr>


<tr>
<td>12월</td>
<td><input type='text' id='A4_12' size=4></td>
<td><input type='text' id='A3_12' size=4></td>
<td><input type='text' id='A2_12' size=4></td>
<td><input type='text' id='A1_12' size=4></td>
</tr>

</table>
</div>
<div id="curve_chart" class="col-md-12"></div>




<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
google.load('visualization', '1', {packages: ['corechart']});
</script>
<script type="text/javascript">
//마우스 오른 쪽 금지
/* document.oncontextmenu = function() { return false; }
 *///새로고침 방지
// Ctrl+R, Ctrl+N, F5 키 막음
function doNotReload(){
if( (event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82)) || (event.keyCode == 116)) // function F5 //78 ,82 ctrl+N , ctrl+R
{
event.keyCode = 0;
event.cancelBubble = true;
event.returnValue = false;
}
}
document.onkeydown = doNotReload;
function drawVisualization() {
// Create and populate the data table.
 var data = google.visualization.arrayToDataTable([
['Year', 'one','two','three','four'],
['A. 활동', 1 , 1,1,1],
['B. 활동', 1, 1,1,1 ],
['C. 활동', 1, 1,1,1 ],
['D. 활동', 1, 1,1,1 ],
['E. 활동', 1, 1,1,1 ],
['F. 활동', 1, 1,1,1 ],
['G. 활동', 1, 1,1,1 ],
['H. 활동', 1, 1,1,1 ],
['I. 활동', 1, 1,1,1 ],
['J. 활동', 1, 1,1,1 ],
['K. 활동', 1, 1,1,1 ],
['L. 활동', 1, 1,1,1 ]
]);
// Create and draw the visualization.
var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
var button = document.getElementById('A1_1');
var button2 = document.getElementById('A1_2');
var button3 = document.getElementById('A1_3');
var button4 = document.getElementById('A1_4');
var button5 = document.getElementById('A1_5');
var button6 = document.getElementById('A1_6');
var button7 = document.getElementById('A1_7');
var button8 = document.getElementById('A1_8');
var button9 = document.getElementById('A1_9');
var button10 = document.getElementById('A1_10');
var button11 = document.getElementById('A1_11');
var button12 = document.getElementById('A1_12');

var buttonOne = document.getElementById('A2_1');
var buttonOne2 = document.getElementById('A2_2');
var buttonOne3 = document.getElementById('A2_3');
var buttonOne4 = document.getElementById('A2_4');
var buttonOne5 = document.getElementById('A2_5');
var buttonOne6 = document.getElementById('A2_6');
var buttonOne7 = document.getElementById('A2_7');
var buttonOne8 = document.getElementById('A2_8');
var buttonOne9 = document.getElementById('A2_9');
var buttonOne10 = document.getElementById('A2_10');
var buttonOne11 = document.getElementById('A2_11');
var buttonOne12 = document.getElementById('A2_12');

var buttonTwo = document.getElementById('A3_1');
var buttonTwo2 = document.getElementById('A3_2');
var buttonTwo3 = document.getElementById('A3_3');
var buttonTwo4 = document.getElementById('A3_4');
var buttonTwo5 = document.getElementById('A3_5');
var buttonTwo6 = document.getElementById('A3_6');
var buttonTwo7 = document.getElementById('A3_7');
var buttonTwo8 = document.getElementById('A3_8');
var buttonTwo9 = document.getElementById('A3_9');
var buttonTwo10 = document.getElementById('A3_10');
var buttonTwo11 = document.getElementById('A3_11');
var buttonTwo12 = document.getElementById('A3_12');

var buttonThree = document.getElementById('A4_1');
var buttonThree2 = document.getElementById('A4_2');
var buttonThree3 = document.getElementById('A4_3');
var buttonThree4 = document.getElementById('A4_4');
var buttonThree5 = document.getElementById('A4_5');
var buttonThree6 = document.getElementById('A4_6');
var buttonThree7 = document.getElementById('A4_7');
var buttonThree8 = document.getElementById('A4_8');
var buttonThree9 = document.getElementById('A4_9');
var buttonThree10 = document.getElementById('A4_10');
var buttonThree11 = document.getElementById('A4_11');
var buttonThree12 = document.getElementById('A4_12');

function drawChart(data1) {
// Disabling the button while the chart is drawing.
//button.disabled = true;
google.visualization.events.addListener(chart, 'ready',
function() {
//button.disabled = false;
//button.value = 'Switch to ' + (current ? 'Tea' : 'Coffee');
});
chart.draw(data1, {title:""});
}
//drawChart(data);
button.onkeydown = handlerNum1;
button2.onkeydown = handlerNum1;
button3.onkeydown = handlerNum1;
button4.onkeydown = handlerNum1;
button5.onkeydown = handlerNum1;
button6.onkeydown = handlerNum1;
button7.onkeydown = handlerNum1;
button8.onkeydown = handlerNum1;
button9.onkeydown = handlerNum1;
button10.onkeydown = handlerNum1;
button11.onkeydown = handlerNum1;
button12.onkeydown = handlerNum1;
button.onkeyup = handlerNum;
button2.onkeyup = handlerNum;
button3.onkeyup = handlerNum;
button4.onkeyup = handlerNum;
button5.onkeyup = handlerNum;
button6.onkeyup = handlerNum;
button7.onkeyup = handlerNum;
button8.onkeyup = handlerNum;
button9.onkeyup = handlerNum;
button10.onkeyup = handlerNum;
button11.onkeyup = handlerNum;
button12.onkeyup = handlerNum;

buttonOne.onkeydown = handlerNum1;
buttonOne2.onkeydown = handlerNum1;
buttonOne3.onkeydown = handlerNum1;
buttonOne4.onkeydown = handlerNum1;
buttonOne5.onkeydown = handlerNum1;
buttonOne6.onkeydown = handlerNum1;
buttonOne7.onkeydown = handlerNum1;
buttonOne8.onkeydown = handlerNum1;
buttonOne9.onkeydown = handlerNum1;
buttonOne10.onkeydown = handlerNum1;
buttonOne11.onkeydown = handlerNum1;
buttonOne12.onkeydown = handlerNum1;
buttonOne.onkeyup = handlerNum;
buttonOne2.onkeyup = handlerNum;
buttonOne3.onkeyup = handlerNum;
buttonOne4.onkeyup = handlerNum;
buttonOne5.onkeyup = handlerNum;
buttonOne6.onkeyup = handlerNum;
buttonOne7.onkeyup = handlerNum;
buttonOne8.onkeyup = handlerNum;
buttonOne9.onkeyup = handlerNum;
buttonOne10.onkeyup = handlerNum;
buttonOne11.onkeyup = handlerNum;
buttonOne12.onkeyup = handlerNum;

buttonTwo.onkeydown = handlerNum1;
buttonTwo2.onkeydown = handlerNum1;
buttonTwo3.onkeydown = handlerNum1;
buttonTwo4.onkeydown = handlerNum1;
buttonTwo5.onkeydown = handlerNum1;
buttonTwo6.onkeydown = handlerNum1;
buttonTwo7.onkeydown = handlerNum1;
buttonTwo8.onkeydown = handlerNum1;
buttonTwo9.onkeydown = handlerNum1;
buttonTwo10.onkeydown = handlerNum1;
buttonTwo11.onkeydown = handlerNum1;
buttonTwo12.onkeydown = handlerNum1;
buttonTwo.onkeyup = handlerNum;
buttonTwo2.onkeyup = handlerNum;
buttonTwo3.onkeyup = handlerNum;
buttonTwo4.onkeyup = handlerNum;
buttonTwo5.onkeyup = handlerNum;
buttonTwo6.onkeyup = handlerNum;
buttonTwo7.onkeyup = handlerNum;
buttonTwo8.onkeyup = handlerNum;
buttonTwo9.onkeyup = handlerNum;
buttonTwo10.onkeyup = handlerNum;
buttonTwo11.onkeyup = handlerNum;
buttonTwo12.onkeyup = handlerNum;

buttonThree.onkeydown = handlerNum1;
buttonThree2.onkeydown = handlerNum1;
buttonThree3.onkeydown = handlerNum1;
buttonThree4.onkeydown = handlerNum1;
buttonThree5.onkeydown = handlerNum1;
buttonThree6.onkeydown = handlerNum1;
buttonThree7.onkeydown = handlerNum1;
buttonThree8.onkeydown = handlerNum1;
buttonThree9.onkeydown = handlerNum1;
buttonThree10.onkeydown = handlerNum1;
buttonThree11.onkeydown = handlerNum1;
buttonThree12.onkeydown = handlerNum1;
buttonThree.onkeyup = handlerNum;
buttonThree2.onkeyup = handlerNum;
buttonThree3.onkeyup = handlerNum;
buttonThree4.onkeyup = handlerNum;
buttonThree5.onkeyup = handlerNum;
buttonThree6.onkeyup = handlerNum;
buttonThree7.onkeyup = handlerNum;
buttonThree8.onkeyup = handlerNum;
buttonThree9.onkeyup = handlerNum;
buttonThree10.onkeyup = handlerNum;
buttonThree11.onkeyup = handlerNum;
buttonThree12.onkeyup = handlerNum;

function handlerNum1( obj ) {
//숫자만 입력 받게끔 하는 함수.
e = window.event; //윈도우의 event를 잡는것입니다.
//입력 허용 키
if( ( e.keyCode >= 48 && e.keyCode <= 57 ) || //숫자열 0 ~ 9 : 48 ~ 57
( e.keyCode >= 96 && e.keyCode <= 105 ) || //키패드 0 ~ 9 : 96 ~ 105
e.keyCode == 8 || //BackSpace
e.keyCode == 46 || //Delete
//e.keyCode == 110 || //소수점(.) : 문자키배열
//e.keyCode == 190 || //소수점(.) : 키패드
e.keyCode == 37 || //좌 화살표
e.keyCode == 39 || //우 화살표
e.keyCode == 35 || //End 키
e.keyCode == 36 || //Home 키
e.keyCode == 9 //Tab 키
) {
if(e.keyCode == 48 || e.keyCode == 96) { //0을 눌렀을경우
if ( obj.value == "" || obj.value == '0' ) //아무것도 없거나 현재 값이 0일 경우에서 0을 눌렀을경우
e.returnValue=false; //-->입력되지않는다.
else //다른숫자뒤에오는 0은
return; //-->입력시킨다.
}
else //0이 아닌숫자
return; //-->입력시킨다.
}
else //숫자가 아니면 넣을수 없다.
{
//alert('숫자만 입력가능합니다');
e.returnValue=false;
}
}
function handlerNum( obj ) {
//숫자만 입력 받게끔 하는 함수.
e = window.event; //윈도우의 event를 잡는것입니다.
//입력 허용 키
if( ( e.keyCode >= 48 && e.keyCode <= 57 ) || //숫자열 0 ~ 9 : 48 ~ 57
( e.keyCode >= 96 && e.keyCode <= 105 ) || //키패드 0 ~ 9 : 96 ~ 105
e.keyCode == 8 || //BackSpace
e.keyCode == 46 || //Delete
//e.keyCode == 110 || //소수점(.) : 문자키배열
//e.keyCode == 190 || //소수점(.) : 키패드
e.keyCode == 37 || //좌 화살표
e.keyCode == 39 || //우 화살표
e.keyCode == 35 || //End 키
e.keyCode == 36 || //Home 키
e.keyCode == 9 //Tab 키
) {
var data3 = google.visualization.arrayToDataTable([
['구분 항목', '12개월','6개월','4개월','2개월'],
['1월', eval(document.getElementById('A1_1').value), eval(document.getElementById('A2_1').value),eval(document.getElementById('A3_1').value),eval(document.getElementById('A4_1').value)],
['2월', eval(document.getElementById('A1_2').value), eval(document.getElementById('A2_2').value), eval(document.getElementById('A3_2').value), eval(document.getElementById('A4_2').value)],
['3월', eval(document.getElementById('A1_3').value), eval(document.getElementById('A2_3').value), eval(document.getElementById('A3_3').value), eval(document.getElementById('A4_3').value)],
['4월', eval(document.getElementById('A1_4').value), eval(document.getElementById('A2_4').value), eval(document.getElementById('A3_4').value), eval(document.getElementById('A4_4').value)],
['5월', eval(document.getElementById('A1_5').value), eval(document.getElementById('A2_5').value), eval(document.getElementById('A3_5').value), eval(document.getElementById('A4_5').value)],
['6월', eval(document.getElementById('A1_6').value), eval(document.getElementById('A2_6').value), eval(document.getElementById('A3_6').value), eval(document.getElementById('A4_6').value)],
['7월', eval(document.getElementById('A1_7').value), eval(document.getElementById('A2_7').value), eval(document.getElementById('A3_7').value), eval(document.getElementById('A4_7').value)],
['8월', eval(document.getElementById('A1_8').value), eval(document.getElementById('A2_8').value), eval(document.getElementById('A3_8').value), eval(document.getElementById('A4_8').value)],
['9월', eval(document.getElementById('A1_9').value), eval(document.getElementById('A2_9').value), eval(document.getElementById('A3_9').value), eval(document.getElementById('A4_9').value)],
['10월', eval(document.getElementById('A1_10').value), eval(document.getElementById('A2_10').value), eval(document.getElementById('A3_10').value), eval(document.getElementById('A4_10').value)],
['11월', eval(document.getElementById('A1_11').value), eval(document.getElementById('A2_11').value), eval(document.getElementById('A3_11').value), eval(document.getElementById('A4_11').value)],
['12월', eval(document.getElementById('A1_12').value), eval(document.getElementById('A2_12').value), eval(document.getElementById('A3_12').value), eval(document.getElementById('A4_12').value)]
]);  
drawChart(data3);
return; //-->입력시킨다.
}
else //숫자가 아니면 넣을수 없다.
{
alert('숫자만 입력가능합니다');
e.returnValue=false;
}
}
}
google.setOnLoadCallback(drawVisualization);
</script>

<%@ include file="/resources/include/main.jsp"%>