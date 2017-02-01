<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
img{
width: 200px;
height: 200px;

text-align: center;
}

.fileDrop{
width: 80%;
height: 100px;
border: 1px dotted black;
background-color: gray;
margin: auto;
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
				<li><img src="show?name=${SurveyMainVO.smimage}"></li>

				<li>설문시작일자 : <fmt:formatDate value="${SurveyMainVO.smregdate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
				<li>설문수정일자 : <fmt:formatDate value="${SurveyMainVO.smupdatedate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
			</ul>
		</div>
</form>
	
<div class="box-footer">
<button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
</div>	
	
	
	
<div>
<div id="surveyDetiles">
</div>
</div>
	
	

	


<!-- SurveyDetail modDiv Button -->
<div id ="modDiv" style="display: none;">
<div class="modal-title"></div>
<div>
<ul>
<input type='hidden' name='attachFile' class='hiddenfile'>
<li>SDNO<input type = "text" name="sdno" class ="sdno" readonly="readonly"></li>
<li>제목<input type = "text" name="sdtitle" class ="sdtitle"></li>
<li>내용<input type = "text" name="sdcontent" class ="sdcontent"></li>
<li>타입<input type ="text" name="sdtype" class ="sdtype"></li>
<li><div>이미지<img name="sdimage" class ="sdimage" style='width:100px; height: 100px;'><p class='modDelImage'>이미지삭제</p></div></li>
<li>
      <form id="modImageForm" method="post" action="/upload/uploadForm" target="zeroFrame" enctype="multipart/form-data">
        <input type='file' name='modImageFile' id="modImageFile">
        <button id='changeImageBtn'>CHANGE IMAGE</button>
	  </form>
</ul>       
</div>

<div>
<button type="submit" id ="surveyDetailUpdateBtn">수정</button>
<button type="submit" id ="surveyDetailDelBtn">삭제</button>
<button type="submit" id ="closeBtn">닫기</button>
</div>
</div>
	

<div id="surveyDetailAdd"> +항목추가 </div>	
	
	
<!-- SurveyDetailCreate -->
<div class ="SurveyDetailMainCreate" style="display: none;">
<div>
<form id="detailForm" method="post"action="/surveyDetail" target="zeroFrame" enctype="multipart/form-data">

<ul>

<li>번호<input type = "text" name="smno" class ="newSmno" value="${SurveyMainVO.smno}" readonly="readonly"></li>
<li>제목<input type = "text" name="sdtitle" class ="newSdtitle" value="제목입력하세요"></li>
<li>내용<input type = "text" name="sdcontent" class ="newSdcontent" value = "내용을 입력하세요"></li>


<li><select name="sdtype">
<option value="null">==선택하세요==</option>
<option value="OX">OX</option>
<option value="objective">객관식</option>
<option value="subjective">주관식</option>
<option value="table">표형</option>

</select></li>

<!-- 
<li>옵션<input type ="text" name="sdtype" class ="newSdtype"></li>
 -->
 
<li>이미지<input type ="file" name="sdAttach" class ="newSdtype"></li>
<li><button type ="submit"  class= "surveyAddBtn">항목 등록</button></li>
</ul>        
</form>
</div>


</div>

<iframe name='zeroFrame' width='0px' height='0px'></iframe>







<div class="box-footer">
		
		<button type="submit" class="btn btn-danger" id="removeBtn">목록</button>
		<button type="submit" class="btn btn-primary" id="goListBtn">등록</button>
</div>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script type="text/javascript" src="/resources/js/jquery.form.js"></script>




<script>

var smno = ${SurveyMainVO.smno};

function showResult(result, savedName){
	alert(result);
	
	if(result =='SUCCESS'){
		document.getElementById("detailForm").reset();
	}
	
	if(savedName){
		$(".hiddenfile").val(savedName);
		return;
	}
	
	getAllList();
}

function getAllList(){
	
	$.getJSON("/surveyDetail/all/" + smno, function(data){
		
		var str= "";
		console.log(data.length);
		
		$(data).each(function(){
			
			var attachFile = this.attachFile;
			
			var link ="";
			
			if(attachFile){
				link = "<img data-file='"+attachFile+"'"+" src='/upload/displayFile?fileName="+attachFile +"'>";
			}
			
			
			str += "<div class='detailDiv'>"+
			"<ul><li data-sdno='"+this.sdno+"' class='surveyLi'>"+
			"</li>"+
			"<li>제목  : "+"<small class='surveyTitle'>" + this.sdtitle + "</small></li>" +
			"<li>내용  : "+"<small class='surveyContent'>" + this.sdcontent + "</small></li>" +
			"<li>타입  : "+"<small class='surveyType'>" + this.sdtype + "</small></li>"+
			"<li>이미지  : "+"<small class='surveryImage' >" + link + "</small></li></ul></div>";
			
		});
		
		$("#surveyDetiles").html(str);
		
		
	});

}



	
$(".surveyAddBtn").click(function(event){
	event.preventDefault();
	console.log("survey detail add Btn clicked");
	$("#detailForm").submit();
	$(".SurveyDetailMainCreate").hide("slow");
});

$("#surveyDetailAdd").on("click",function(){
	var MainCreate = $(".SurveyDetailMainCreate");
	MainCreate.hide().show('slow');
});

$("#closeBtn").on("click",function(event){
	event.preventDefault();
	$("#modDiv").hide("slow");
	
});


$('#surveyDetiles').on("click",".detailDiv",function(event){
	
	console.log("detail div clicked...");
	
	var target = $(this);
	
	var sdno = target.find(".surveyLi").attr("data-sdno");
	var sdtitle = target.find(".surveyTitle").text();
	var sdcontent = target.find(".surveyContent").text();
	var sdtype = target.find(".surveyType").text();	
	var sdimageEle = target.find(".surveryImage");
	
	var sdimageFileName = target.find("img").attr("data-file");
	
	var sdimage = null;
	
	if(sdimageEle.find("img")){
		sdimage = sdimageEle.find("img").attr("src");	
	}
	
	console.log(sdno, sdtitle, sdcontent, sdtype, sdimageFileName);
	
	
	
	
	var modDiv = $("#modDiv");
	modDiv.find(".hiddenfile").val(sdimageFileName);
	modDiv.find(".sdno").val(sdno);
	modDiv.find(".sdtitle").val(sdtitle);
	modDiv.find(".sdcontent").val(sdcontent);
	modDiv.find(".sdtype").val(sdtype);
	modDiv.find(".sdimage").attr("src", sdimage);
	
	modDiv.hide().show('slow');
});

$("#surveyDetailDelBtn").click(function(event){
	
	var sdno = $(".sdno").val();
	
	console.log("delete survey detail....." + sdno);
	
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


//modify survey detail 

$("#surveyDetailUpdateBtn").click(function(event){
	
	
	var target = $("#modDiv");
	
	var sdno = target.find(".sdno").val();
	var sdtitle = target.find(".sdtitle").val();
	var sdcontent = target.find(".sdcontent").val();
	var sdtype = target.find(".sdtype").val();	
	var sdfile = target.find(".hiddenfile").val();
	
	console.log("surveyDetailUpdateBtn..................1");
	console.log(sdno, sdtitle, sdcontent, sdtype);
	
	var data = {
			sdno:sdno,
			sdtitle : sdtitle,
			sdcontent : sdcontent,
			sdtype : sdtype,
			attachFile: sdfile
	};
	
	console.log(data);	
	
	$.ajax({
		
		url:"/surveyDetail/" + sdno,
		headers : {
			"Content-Type":"application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		processData: false,
        contentType: false,
		data : JSON.stringify(data),
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


$(".modDelImage").click(function(){
	
	var target = $("#modDiv");
	target.find('.hiddenfile').val("");
	target.find("img").attr("src","");
});


$(document).ready(function(){
	getAllList();
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