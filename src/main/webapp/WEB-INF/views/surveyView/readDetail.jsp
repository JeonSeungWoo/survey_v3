<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#img{
width: 200px;
height: 200px;
text-align: center;
}

</style>
</head>
<body>



<form action="/surveyView/readDetail" method="get">
<input type="hidden" name="smno" value="${vo.smno}">
<input type="hidden" name="page" value="${param.page}">
<h1>${qnum}</h1>	


<div id = "box-main">
<ul>

<li>${vo.smno}</li>
<li>${vo.sdno}</li>
<li>제목 : ${vo.sdtitle}</li>
<li>내용 : ${vo.sdcontent}</li>

<li><img id = "img"src='/upload/displayFile?fileName=${vo.attachFile}'></li>

<li>ox퀴즈</li>

<li><input type="radio" name='stype'>o</li>
<li><input type="radio" name='stype'>X</li>
</ul>
</div>


</form>
<div id = "prev"></div>
<div id = "next"></div>

<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script>


</script>


<script>

var qnum = ${qnum};

var smno = ${vo.smno};

var next = "";

var prev = "";

if(qnum >= 0){
	var next = "<button id='qnumNext'>다음</button>";
}
$("#next").html(next);


$("#qnumNext").on("click",function(){
	alert("다음 페이지로");
	qnum = qnum+1;
	self.location = "/surveyView/readDetail?smno="+smno+"&page=1&qnum="+qnum;
	
	alert("qnum  :" + qnum);
});



if(qnum > 0){
	var prev = "<button id='prevNext'>이전</button>";
}
$("#prev").html(prev);


$("#prevNext").on("click",function(){
	alert("이전 페이지로");
	qnum = qnum-1;
	self.location = "/surveyView/readDetail?smno="+smno+"&page=1&qnum="+qnum;
	
	alert("qnum  :" + qnum);
});








</script>

</body>
</html>