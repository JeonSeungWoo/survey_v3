<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<h1>회원정보수정페이지</h1>
	
	<form role="form" action="mupdate" method="post" id="f2">
	
	<div class="box-body">
	
		<input type='hidden' name='page' value="${cri.page}">
		<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
		<input type='hidden' name='searchType' value="${cri.searchType}">
		<input type='hidden' name='keyword' value="${cri.keyword}">
		
		<div id="updateMember">
			닉네임 : <input type="text" readonly="readonly" name="membername" value="${MemberVO.membername}"><br>
			이메일 : <input type="text" name="email" value="${MemberVO.email}"><br>
			가입일 : "${MemberVO.joindate}"<br>
		</div>
		
		<!-- /.box-body -->
		
		
	
	</form>
		
		<div class="box-footer">
			<button data-mname ='${MemberVO.membername}' type="submit" id="updateBtn" class="btn btn-primary">수정</button>
			<button data-mname ='${MemberVO.membername}' type="submit" id="cancelBtn" class="btn btn-warning">취소</button>
		</div>
		
		<script>
		var result = '${msg}';
		if (result == 'SUCCESS') {
			alert("처리가 완료되었습니다.");
		}
	</script>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

		<script>
 		$(document).ready(function(){
			
			var formObj = $("#f2");
			
			$('#updateBtn').on("click", function(event) {
			
			var targetName = $(this).attr("data-mname");
			console.log(formObj);
			
			$("#membername").val(targetName);
			
			formObj.attr("action", "mupdate").attr("method","post");
			
			console.log(formObj.attr("action"));
			console.log(formObj.attr("method"));
			
			console.log(targetName);
			console.log("-------------------------"); 
			
			formObj.submit();		
			
		});
		});
	</script> 
	
</body>
</html>