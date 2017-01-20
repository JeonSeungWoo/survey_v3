<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#img{
width: 200px;
height: 200px;
}

#modDiv{
width:400px;
height:300px;
background-color: gray;
position: absolute;
padding: 10px;
z-index: 1000;
top: 50%;
left: 50%;  
margin-top:-50px; 
}

</style>

</head>
<body>
	<form role="form" action="/update" method="post">

		<input type='hidden' name='smno' value="${SurveyMainVO.smno}">
		<input type='hidden' name='page' value="${cri.page}"> <input
			type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
			type='hidden' name='searchType' value="${cri.searchType}"> <input
			type='hidden' name='keyword' value="${cri.keyword}">

	</form>

	<form action="SurveyMainVO" id="f1">
		<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
		<input type="hidden" name="page" value="${param.page}">

		<div>
			<ul>
				<li>글번호 : ${SurveyMainVO.smno }</li>
				<li>제목 : ${SurveyMainVO.smtitle }</li>
				<li>설문내용 : ${SurveyMainVO.smcontent }</li>
				<li><img  id ="img" src ="show?fileName=${SurveyMainVO.smimage }"></li>

				<li>설문시작일자 : ${SurveyMainVO.smregdate }</li>
				<li>설문수정일자 : ${SurveyMainVO.smupdatedate }</li>
			</ul>
		</div>
	</form>

	<div class="box-footer">
		<button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
		<button type="submit" class="btn btn-danger" id="removeBtn">삭제</button>
		<button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
	</div>
	
	
<div>
<ul id="surveyDetiles">
</ul>
</div>
	
	

	
<form id="FILE_FORM" method="post" enctype="multipart/form-data" action="/surveyDetail">


<!-- SurveyDetail modDiv Button -->
<div id ="modDiv" style="display: none;">
<div class="modal-title"></div>
<div>
<ul>

<li>제목<input type = "text" name="sdtitle" class ="sdtitle"></li>
<li>내용<input type = "text" name="sdcontent" class ="sdcontent"></li>
<li>이미지<input type = "file" name="sdimage" class ="sdimage"></li>
<li>타입<input type ="text" name="sdtype" class ="sdtype"></li>
</ul>       
</div>

<div>
<button type="submit" id ="surveyUpdateBtn">수정</button>
<button type="submit" id ="surveyDelBtn">삭제</button>
<button type="submit" id ="closeBtn">닫기</button>
</div>
</div>
	
<!-- SurveyDetailCreate -->
<div>
<ul>
<li>번호<input type = "text" name="smno" class ="newSmno" value="${SurveyMainVO.smno}" readonly="readonly"></li>
<li>제목<input type = "text" name="sdtitle" class ="newSdtitle" value="제목입력하세요"></li>
<li>내용<input type = "text" name="sdcontent" class ="newSdcontent" value = "내용을 입력하세요"></li>
<li>이미지<input type = "file" name="sdimage" class ="newSdimage"></li>
<li>타입<input type ="text" name="sdtype" class ="newSdtype" value = "A"></li>
</ul>        
</div>
<button type ="submit"  class= "surveyAddBtn">항목 등록</button>

</form>







	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script type="text/javascript" src="/resources/js/jquery.form.js"></script>


<script>


var smno = ${SurveyMainVO.smno};
getAllList();

function getAllList(){
	
	$.getJSON("/surveyDetail/all/" + smno, function(data){
		
		var str= "";
		console.log(data.length);
		
		$(data).each(function(){
			
			str += "<p></p>"+
			"<li data-sdno='"+this.sdno+"' class='surveyLi'>"+
			"<button type='submit' id='surveyModBtn'>MOD</button></li>"+
			"<li>제목  : "+"<small class='surveyTitle'>" + this.sdtitle + "</small></li>" +
			"<li>내용  : "+"<small class='surveyContent'>" + this.sdcontent + "</small></li>" +
			"<li>이미지  : "+"<small class='surveyImage'>" + this.sdimage + "</small></li>" +
			"<li>타입  : "+"<small class='surveyType'>" + this.sdtype + "</small></li>";
			
		});
		
		$("#surveyDetiles").html(str);
		
		
	});

}




$("#surveyDetiles").on("click",".surveyLi button",function(){
	
	var surveyno = $(this).parent();
	
	var sdno = surveyno.attr("data-sdno");
	var surveyTitle =  $(".surveyTitle").html();
	var surveyContent =  $(".surveyContent").html();
	var surveyImage =  $(".surveyImage").html();
	var surveyType =  $(".surveyType").html();
	
	
	
	alert(sdno + " : " + surveyTitle + " : " + surveyContent + " : " + surveyImage + " : " + surveyType);
	                
	$(".modal-title").html(sdno);
	$(".sdtitle").val(surveyTitle);
	$(".sdcontent").val(surveyContent);
	$(".sdimage").val(surveyImage);
	$(".sdtype").val(surveyType);
	
	$("#modDiv").show("slow");
	
});

$("#closeBtn").on("click",function(event){
	event.preventDefault();
	$("#modDiv").hide("slow");
	
});


$(".surveyAddBtn").on("click",function(event){
	
	event.preventDefault();
	
	console.log("--------------------------");
	
	var  form = $('FILE_FORM')[0];
	var formData =  new FormData(form);
	
 	formData.append("smno", $(".newSmno").val());
	formData.append("sdtitle",$(".newSdtitle").val());
	formData.append("sdcontent",$(".newSdcontent").val());
	formData.append("sdimage", $(".newSdimage")[0].files[0]);
	formData.append("sdtype",$(".newSdtype").val());

	
	console.log("-----------------");
	console.log(formData);
	$.ajax({
		
		url:'/surveyDetail',
		processData: false,
        contentType: false,
        data: formData,
        type: 'POST',
		success : function(result){
				alert("등록 되었습니다.");
				getAllList();
			}
		
		});
});


$("#surveyUpdateBtn").on("click",function(event){
	event.preventDefault();
 
	var sdno = $(".modal-title").html();
	
	
	var surveyTitle =  $(".surveyTitle").html();
	var surveyContent =  $(".surveyContent").html();
	var surveyImage =  $(".surveyImage").html();
	var surveyType =  $(".surveyType").html();
	
	console.log("--------------------------");
	var  form = $('FILE_FORM')[0];
	var formData =  new FormData(form);
	
	formData.append("sdtitle",$(".sdtitle").val(surveyTitle));
	formData.append("sdcontent",$(".scontent").val(surveyContent));
	formData.append("sdimage", $(".sdimage").val(surveyImage)[0].files[0]);
	formData.append("sdtype",$(".sdtype").val(surveyType));

	
	console.log("-----------------");
	console.log(formData);
	
	
	$.ajax({
		
		url:"/surveyDetail/" + sdno,
		processData: false,
        contentType: false,
		data : formData,
		type:"PUT",
		success : function(result){
			if(result == "SUCCESS"){
			alert("수정되었습니다.");
			$("#modDiv").hide("slow");
			getAllList();
		}
		}
	});
	
});


$("#surveyDelBtn").on("click",function(event){
	event.preventDefault();
	var sdno = $(".modal-title").html();
	
	$.ajax({
		type : "delete",
		url : "/surveyDetail/" + sdno,
		
		success : function(result){
			console.log("result : " +result );
			if(result == "SUCCESS"){
				alert("삭제 되었습니다.");
				$("#modDiv").hide("slow");
				getAllList();
			}
		}
	});
	
});





</script>



	<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			$("#modifyBtn").on("click", function() {
				formObj.attr("action", "/surveyMain/update");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$("#removeBtn").on("click", function() {
				formObj.attr("action", "/surveyMain/delete");
				formObj.submit();
			});

			$("#goListBtn ").on("click", function() {
				formObj.attr("action","listPage?page=1");
				formObj.attr("method", "get");
				formObj.submit();
			});

		});
		
	</script>
</html>