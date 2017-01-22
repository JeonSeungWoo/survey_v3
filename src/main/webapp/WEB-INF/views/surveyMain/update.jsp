<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<style>
.fileDrop {
	width: 150px;
	height: 160px;
	border: 3px dotted blue;
}
</style>

	<form role="form" action="update" method="post"
		enctype="multipart/form-data">

		<input type='hidden' name='page' value="${cri.page}"> <input
			type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
			type='hidden' name='searchType' value="${cri.searchType}"> <input
			type='hidden' name='keyword' value="${cri.keyword}">


		<div id="updateMain">
			<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
			<input type="hidden" name="page" value="${param.page}"> <input
				type="text" name="smtitle" value="${SurveyMainVO.smtitle}">
			<input type="text" name="smcontent" value="${SurveyMainVO.smcontent}">
			<input type="text" name="smwriter" value="${SurveyMainVO.smwriter}">
			<input type="hidden" name="smimage" id="smimage">
			<div class='fileDrop'>
				Drop Here
				<div class="uploadedList"></div>
			</div>
		</div>
		<!-- /.box-body -->
	</form>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="saveBtn">저장</button>
		<button type="submit" class="btn btn-warning" id="cancelBtn">취소</button>
	</div>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

	<script>
		$(document)
				.ready(
						function() {
							var formObj = $("form[role='form']");
							console.log(formObj);

							$("#saveBtn")
									.on(
											"click",
											function() {
												self.location = "/surveyMain/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}"
														+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
												formObj.submit();
											});

							var uploadedList = $(".uploadedList");

							$(".fileDrop").on("dragenter dragover",
									function(event) {
										event.preventDefault();
									});
							$(".fileDrop")
									.on(
											"drop",
											function(event) {
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
															success : function(
																	data) {
																console
																		.log(data);
																uploadedList
																		.html("<img src=show?name="
																				+ data
																				+ ">");
																$("#smimage")
																		.val(
																				data);
															}
														});
											});

							$("#cancelBtn").on(
									"click",
									function() {
										formObj.attr("action",
												"listPage?page=${cri.page}");
										formObj.attr("method", "get");
										formObj.submit();
									});

						});
	</script>
</body>
</html>