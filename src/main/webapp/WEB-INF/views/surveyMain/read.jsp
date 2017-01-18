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
	
	
<form id="FILE_FORM" method="post" enctype="multipart/form-data" action="/surveyDetail">
  

<ul>
<li>번호<input type = "text" name="smno" class ="newSmno" value="${SurveyMainVO.smno}" readonly="readonly"></li>
<li>제목<input type = "text" name="sdtitle" class ="newSdtitle"></li>
<li>내용<input type = "text" name="sdcontent" class ="newSdcontent"></li>
<li>이미지<input type = "file" name="sdimage" class ="newSdimage"></li>
<li><input type ="text" name="sdtype" class ="newSdtype" value = "A" readonly="readonly">OX퀴즈</li>
</ul>        

<button type ="submit"  class= "surveyAddBtn">항목 등록</button>

</form>





	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script type="text/javascript" src="/resources/js/jquery.form.js"></script>

<script>

$(".surveyAddBtn").on("click",function(){
	var  form = $('#FILE_FORM')[0];
	var formData =  new FormData(form);
	formData.append("smno",$(".newSmno"));
	formData.append("fileObj",$(".newSdimage")[0].files[0]);
	formData.append("sdcontent",$(".newSdtitle"));
	formData.append("sdtitle",$(".newSdcontent"));
	formData.append("sdtype",$(".newSdtype"));
	
	$.ajax({
		type : "POST",
		url : "/surveyDetail",
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		data : formData,
	
		success : function(result){
				alert("등록 되었습니다.");
			}
		});
		
	});
	
	
var options = {
        dataType:"text",//결과
        success:function(responseText){
            alert("업로드 성공!!");
        }, error:function(e){e.responseText();}
    };
    

$("#FILE_FORM").ajaxForm(options).submit();

	

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