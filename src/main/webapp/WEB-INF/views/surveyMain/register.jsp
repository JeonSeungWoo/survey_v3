<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<style>
.fileDrop {
	width: 150px;
	height: 160px;
	border: 3px dotted blue;
}

li {
	list-style: none;
}
</style>

	<form role="form" action="register" method="post" enctype="multipart/form-data" id="f1">
		<input type="hidden" name="smno" value="${param.page}">
		
		<h1> 광고성 글이나 욕설은 기재할 수 없습니다.</h1>
		<div>
			<ul>
				<li>제목<input type="text" id='smtitle' name="smtitle"
					onfocus="if(this.value =='설문조사 제목') this.value='';"
					onblur="if(this.value =='') this.value='설문조사 제목';" value="설문조사 제목" onclick="select_area()"></li>

				<li>설명<input type="text" name="smcontent"
					onfocus="if(this.value =='설문조사 내용') this.value='';"
					onblur="if(this.value =='') this.value='설문조사 내용';" value="설문조사 내용"></li>

				<li>작성자<input type="text" name="smwriter" value="user">
				<li>이미지<li><input type="hidden" name="smimage" id="smimage"></li>


			</ul>
			<div class='fileDrop'>
				Drop Here
				<div class="uploadedList"></div>
			</div>
		</div>

		<button id="rBtn" onclick="validate_user_text();">등록</button>
		<button id="goListBtn">목록으로</button>
	</form>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script>
	var swear_words_arr = new Array("섹스","대출","무이자","병신","씨발","개새끼","십새끼","개년","누드","조건만남",
        "필로폰","마약","바다이야기","바카라","시알리스","비아그라", "c", "멍청이", "똥개"); // 제한 목록
     
        
    var swear_alert_arr = new Array;
        
    var swear_alert_count = 0;
    
    function reset_alert_count(){
        swear_alert_count = 0;
    }
    
    function validate_user_text()
    {
        reset_alert_count();
        var compare_text = document.getElementById("smtitle").value;
        for(var i=0; i<swear_words_arr.length; i++)
        {
            for(var j=0; j<(compare_text.length); j++)
            {
                if(swear_words_arr[i]==compare_text.substring(j,(j+swear_words_arr[i].length)).toLowerCase())
                {
                    swear_alert_arr[swear_alert_count]=compare_text.substring(j,(j+swear_words_arr[i].length));
                    swear_alert_count++;
                }
            }
        }
        var alert_text="";
        for(var k=1; k <= swear_alert_count; k++){
            alert_text+="n" + "(" + k + ")" + swear_alert_arr[k-1];
        }
        
        if(swear_alert_count > 0){
        	
        	$("#f1").submit(function(event){
        		event.preventDefault();
        		// 불량단어 나왔을때 멘트
        	       alert(alert_text+"는 입력할 수 없는 단어입니다. 예쁜말을 써주세요");
                // 불량단어 나왔을때 멘트
        	       document.getElementById("smtitle").select();
        	});
       return;
            
       }else{
    	alert(alert_text + "등록 되었습니다.");
       	var formObj = $("#f1");
           $("#rBtn").on("click",function(){
           	formObj.attr("action", "/surveyMain/register");
				formObj.attr("method", "post");
				formObj.submit();
				return;
           });
        }
       
    }
    function select_area(){
    	
    	
    	 document.getElementById("smtitle").select();
    }
    
    window.onload = reset_alert_count;
</script>


	<script>
	

	
	
		$(document).ready(function() {
			
			$("#goListBtn ").on("click", function(event) {
				event.preventDefault();
				self.location = "/surveyMain/listPage?page=1";
			});

		
			var uploadedList = $(".uploadedList");
			$(".fileDrop").on("dragenter dragover", function(event) {
				event.preventDefault();
			});
			$(".fileDrop").on("drop", function(event) {
				event.preventDefault();
				var files = event.originalEvent.dataTransfer.files;
				var file = files[0];
				var formData = new FormData();
				$('.uploadedList').empty();
				formData.append("file", file);
				console.log(formData);
				$.ajax({
					url : "uploadFile",
					data : formData,
					dataType : 'text',
					type : "post",
					contentType : false,
					processData : false,
					success : function(data) {
						console.log(data);
						uploadedList.html("<img src=show?name=" + data + ">");
						$("#smimage").val(data);
					}
				});
			});
		});
	</script>

</body>
</html>