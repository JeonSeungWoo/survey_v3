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

<h1>${vo.smno}</h1>
<h1>${vo.sdno}</h1>
<h1>${login.userid}</h1>



<div id = "box-main">
<ul>

<li>글번호 :${vo.smno}</li>
<li>${qnum+1}문제</li>	
<li>제목 : ${vo.sdtitle}</li>
<li>내용 : ${vo.sdcontent}</li>

<li><img id = "img"src='/upload/displayFile?fileName=${vo.attachFile}'></li>

<li>ox퀴즈</li>

<li><input type="radio" name='answer' value="O" class="oxAnswer">o</li>
<li><input type="radio" name='answer' value="X" class="oxAnswer">X</li>
</ul>
</div>


</form>
<div id = "prev"></div>
<button id="goListBtn">목록으로</button>
<div id = "next"></div>

<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script>
var smno = ${vo.smno};

var sdno = ${vo.sdno};

var userid = '${login.userid}';
var qnum = ${qnum};

function checkAnswer(){
	
	console.log("check Answer.............................................");
	
    var answer = $(':input[name=answer]:radio:checked').val();
     
    if( answer ){
        alert(answer+"을 선택했습니다");
        goNext1();
        
        var data ={ smno : smno,
    		    sdno : sdno,
    		    userid : userid,
    		      answer : answer};
        
        $.ajax({
    		type : "post",
    		url : "/answer/oxAnswer/",
    		headers : {
    			"Content-Type":"application/json",
    			"X-HTTP-Method-Override" : "POST"
    		},
    		data :JSON.stringify(data),
    		success : function(result){
    			if(result == "SUCCESS"){
    				alert("버튼 입력 성공!!!!!!!!!");
    			}
    		}
    	});
        
        return true;
        
        
    }else{
        alert("번호를 선택 하세요.");
        return false;
    }  
}

var next = "";

var prev = "";

if(qnum >= 0){
	var next = "<button id='qnumNext' onclick='checkAnswer()'>다음</button>";
}
$("#next").html(next);


function goNext1(){
	alert("go Next 다음 페이지로");
	qnum = qnum+1;
	self.location = "/surveyView/readDetail?smno="+smno+"&page=1&qnum="+qnum;
	
}


if(qnum > 0){
	var prev = "<button id='prevNext'>이전</button>";
}
$("#prev").html(prev);


$("#prevNext").on("click",function(){
	alert("이전 페이지로");
	qnum = qnum-1;
	
	self.location = "/surveyView/readDetail?smno="+smno+"&page=1&qnum="+qnum;
	var sdnomus = ${vo.sdno-1};
	$.ajax({
		type : "delete",
		url : "/answer/"+sdnomus+"/"+userid,
		
		success : function(result){
			console.log("result : " +result );
			if(result == "SUCCESS"){
				alert("삭제 되었습니다.");
				
			}						
		}
	});

	
	alert("qnum  :" + qnum);
});



$("#goListBtn ").on("click", function(event) {
	event.preventDefault();
	self.location = "/surveyMain/listPage?page=1";
});




</script>

</body>
</html>