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

	<form action="register" method="post" enctype="multipart/form-data">
		<input type="hidden" name="smno" value="${param.page}">

		<div>
			<ul>
				<li>제목<input type="text" name="smtitle"
					onfocus="if(this.value =='설문조사 제목') this.value='';"
					onblur="if(this.value =='') this.value='설문조사 제목';" value="설문조사 제목"></li>

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

		<button id="rBtn">등록</button>

	</form>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

	<script>
		$(document).ready(function() {
			$('#rBtn').on("click", function() {
				$('.join').submit();
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