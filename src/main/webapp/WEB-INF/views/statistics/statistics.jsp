<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>

</style>

<body>

A1.<br><table width="800" height="500" border="1" cellpadding="0" cellspacing="0">
<tr>
<td width="150">���� �׸�</td>
<td width="150">2����</td>
<td width="150">4����</td>
<td width="150">6����</td>
<td width="150">12����</td>
</tr>
<tr>
<td>A. Ȱ��</td>
<td><input type='text' id='A4_1' size=4 value ="0"></td>
<td><input type='text' id='A3_1' size=4 value ="0"></td>
<td><input type='text' id='A2_1' size=4 value ="0"></td>
<td><input type='text' id='A1_1' size=4 value ="0"></td>
</tr>
<tr>
<td>B. Ȱ��</td>
<td><input type='text' id='A4_2' size=4></td>
<td><input type='text' id='A3_2' size=4></td>
<td><input type='text' id='A2_2' size=4></td>
<td><input type='text' id='A1_2' size=4></td>
</tr>
<tr>
<td>C. Ȱ��</td>
<td><input type='text' id='A4_3' size=4></td>
<td><input type='text' id='A3_3' size=4></td>
<td><input type='text' id='A2_3' size=4></td>
<td><input type='text' id='A1_3' size=4></td>
</tr>
<tr>
<td>D. Ȱ��</td>
<td><input type='text' id='A4_4' size=4></td>
<td><input type='text' id='A3_4' size=4></td>
<td><input type='text' id='A2_4' size=4></td>
<td><input type='text' id='A1_4' size=4></td>
</tr>
<tr>
<td>E. Ȱ��</td>
<td><input type='text' id='A4_5' size=4></td>
<td><input type='text' id='A3_5' size=4></td>
<td><input type='text' id='A2_5' size=4></td>
<td><input type='text' id='A1_5' size=4></td>
</tr>
<tr>
<td>F. Ȱ��</td>
<td><input type='text' id='A4_6' size=4></td>
<td><input type='text' id='A3_6' size=4></td>
<td><input type='text' id='A2_6' size=4></td>
<td><input type='text' id='A1_6' size=4></td>
</tr>
<tr>
<td>G. Ȱ��</td>
<td><input type='text' id='A4_7' size=4></td>
<td><input type='text' id='A3_7' size=4></td>
<td><input type='text' id='A2_7' size=4></td>
<td><input type='text' id='A1_7' size=4></td>
</tr>
<tr>
<td>H. Ȱ��</td>
<td><input type='text' id='A4_8' size=4></td>
<td><input type='text' id='A3_8' size=4></td>
<td><input type='text' id='A2_8' size=4></td>
<td><input type='text' id='A1_8' size=4></td>
</tr>

<tr>
<td>I. Ȱ��</td>
<td><input type='text' id='A4_9' size=4></td>
<td><input type='text' id='A3_9' size=4></td>
<td><input type='text' id='A2_9' size=4></td>
<td><input type='text' id='A1_9' size=4></td>
</tr>

<tr>
<td>J. Ȱ��</td>
<td><input type='text' id='A4_10' size=4></td>
<td><input type='text' id='A3_10' size=4></td>
<td><input type='text' id='A2_10' size=4></td>
<td><input type='text' id='A1_10' size=4></td>
</tr>

<tr>
<td>K. Ȱ��</td>
<td><input type='text' id='A4_11' size=4></td>
<td><input type='text' id='A3_11' size=4></td>
<td><input type='text' id='A2_11' size=4></td>
<td><input type='text' id='A1_11' size=4></td>
</tr>


<tr>
<td>L. Ȱ��</td>
<td><input type='text' id='A4_12' size=4></td>
<td><input type='text' id='A3_12' size=4></td>
<td><input type='text' id='A2_12' size=4></td>
<td><input type='text' id='A1_12' size=4></td>
</tr>

</table>
<div id="curve_chart" style="width: 900px; height: 500px"></div>




<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
google.load('visualization', '1', {packages: ['corechart']});
</script>
<script type="text/javascript">
//���콺 ���� �� ����
document.oncontextmenu = function() { return false; }
//���ΰ�ħ ����
// Ctrl+R, Ctrl+N, F5 Ű ����
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
['A. Ȱ��', 1 , 1,1,1],
['B. Ȱ��', 1, 1,1,1 ],
['C. Ȱ��', 1, 1,1,1 ],
['D. Ȱ��', 1, 1,1,1 ],
['E. Ȱ��', 1, 1,1,1 ],
['F. Ȱ��', 1, 1,1,1 ],
['G. Ȱ��', 1, 1,1,1 ],
['H. Ȱ��', 1, 1,1,1 ],
['I. Ȱ��', 1, 1,1,1 ],
['J. Ȱ��', 1, 1,1,1 ],
['K. Ȱ��', 1, 1,1,1 ],
['L. Ȱ��', 1, 1,1,1 ]
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
//���ڸ� �Է� �ްԲ� �ϴ� �Լ�.
e = window.event; //�������� event�� ��°��Դϴ�.
//�Է� ��� Ű
if( ( e.keyCode >= 48 && e.keyCode <= 57 ) || //���ڿ� 0 ~ 9 : 48 ~ 57
( e.keyCode >= 96 && e.keyCode <= 105 ) || //Ű�е� 0 ~ 9 : 96 ~ 105
e.keyCode == 8 || //BackSpace
e.keyCode == 46 || //Delete
//e.keyCode == 110 || //�Ҽ���(.) : ����Ű�迭
//e.keyCode == 190 || //�Ҽ���(.) : Ű�е�
e.keyCode == 37 || //�� ȭ��ǥ
e.keyCode == 39 || //�� ȭ��ǥ
e.keyCode == 35 || //End Ű
e.keyCode == 36 || //Home Ű
e.keyCode == 9 //Tab Ű
) {
if(e.keyCode == 48 || e.keyCode == 96) { //0�� ���������
if ( obj.value == "" || obj.value == '0' ) //�ƹ��͵� ���ų� ���� ���� 0�� ��쿡�� 0�� ���������
e.returnValue=false; //-->�Էµ����ʴ´�.
else //�ٸ����ڵڿ����� 0��
return; //-->�Է½�Ų��.
}
else //0�� �ƴѼ���
return; //-->�Է½�Ų��.
}
else //���ڰ� �ƴϸ� ������ ����.
{
//alert('���ڸ� �Է°����մϴ�');
e.returnValue=false;
}
}
function handlerNum( obj ) {
//���ڸ� �Է� �ްԲ� �ϴ� �Լ�.
e = window.event; //�������� event�� ��°��Դϴ�.
//�Է� ��� Ű
if( ( e.keyCode >= 48 && e.keyCode <= 57 ) || //���ڿ� 0 ~ 9 : 48 ~ 57
( e.keyCode >= 96 && e.keyCode <= 105 ) || //Ű�е� 0 ~ 9 : 96 ~ 105
e.keyCode == 8 || //BackSpace
e.keyCode == 46 || //Delete
//e.keyCode == 110 || //�Ҽ���(.) : ����Ű�迭
//e.keyCode == 190 || //�Ҽ���(.) : Ű�е�
e.keyCode == 37 || //�� ȭ��ǥ
e.keyCode == 39 || //�� ȭ��ǥ
e.keyCode == 35 || //End Ű
e.keyCode == 36 || //Home Ű
e.keyCode == 9 //Tab Ű
) {
var data3 = google.visualization.arrayToDataTable([
['���� �׸�', '12����','6����','4����','2����'],
['1��', eval(document.getElementById('A1_1').value), eval(document.getElementById('A2_1').value),eval(document.getElementById('A3_1').value),eval(document.getElementById('A4_1').value)],
['2��', eval(document.getElementById('A1_2').value), eval(document.getElementById('A2_2').value), eval(document.getElementById('A3_2').value), eval(document.getElementById('A4_2').value)],
['3��', eval(document.getElementById('A1_3').value), eval(document.getElementById('A2_3').value), eval(document.getElementById('A3_3').value), eval(document.getElementById('A4_3').value)],
['4��', eval(document.getElementById('A1_4').value), eval(document.getElementById('A2_4').value), eval(document.getElementById('A3_4').value), eval(document.getElementById('A4_4').value)],
['5��', eval(document.getElementById('A1_5').value), eval(document.getElementById('A2_5').value), eval(document.getElementById('A3_5').value), eval(document.getElementById('A4_5').value)],
['6��', eval(document.getElementById('A1_6').value), eval(document.getElementById('A2_6').value), eval(document.getElementById('A3_6').value), eval(document.getElementById('A4_6').value)],
['7��', eval(document.getElementById('A1_7').value), eval(document.getElementById('A2_7').value), eval(document.getElementById('A3_7').value), eval(document.getElementById('A4_7').value)],
['8��', eval(document.getElementById('A1_8').value), eval(document.getElementById('A2_8').value), eval(document.getElementById('A3_8').value), eval(document.getElementById('A4_8').value)],
['9��', eval(document.getElementById('A1_9').value), eval(document.getElementById('A2_9').value), eval(document.getElementById('A3_9').value), eval(document.getElementById('A4_9').value)],
['10��', eval(document.getElementById('A1_10').value), eval(document.getElementById('A2_10').value), eval(document.getElementById('A3_10').value), eval(document.getElementById('A4_10').value)],
['11��', eval(document.getElementById('A1_11').value), eval(document.getElementById('A2_11').value), eval(document.getElementById('A3_11').value), eval(document.getElementById('A4_11').value)],
['12��', eval(document.getElementById('A1_12').value), eval(document.getElementById('A2_12').value), eval(document.getElementById('A3_12').value), eval(document.getElementById('A4_12').value)]
]);
drawChart(data3);
return; //-->�Է½�Ų��.
}
else //���ڰ� �ƴϸ� ������ ����.
{
alert('���ڸ� �Է°����մϴ�');
e.returnValue=false;
}
}
}
google.setOnLoadCallback(drawVisualization);
</script>

</body>
</html>