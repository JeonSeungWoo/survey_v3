<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

.lipage{
list-style: none;
float: left;
margin: 1em;

}
</style>

</head>
<body>
	<h1>멤버리스트</h1>

	<div class='box-body'>

		<select name="searchType">
			<option value="n"
				<c:out value="${cri.searchType == null?'selected':''}"/>>
				---</option>
			<option value="m"
				<c:out value="${cri.searchType eq 'm'?'selected':''}"/>>
				닉네임</option>
			<option value="e"
				<c:out value="${cri.searchType eq 'e'?'selected':''}"/>>
				이메일</option>

			<option value="me"
				<c:out value="${cri.searchType eq 'me'?'selected':''}"/>>
				닉네임 or 이메일</option>

		</select> <input type="text" name='keyword' id="keywordInput"
			value='${cri.keyword }'>
		<button id='searchBtn'>검색</button>


	</div>

	<form action="mlistPage" method="post" id="f1">
		<input type="hidden" name="page" value="${param.page}">
		<input type="hidden" id='membername' name="membername" value="">


		<c:forEach items="${listPage}" var="MemberVO">

			<ul >
				<li><a href='mread?membername=${MemberVO.membername}'>
					닉네임 :${MemberVO.membername}</a></li>
				<li>이메일 : ${MemberVO.email}</li>
				<li>가입일 : ${MemberVO.joindate}</li>
			</ul>
			
			<div id="Button">
			<button data-mname ='${MemberVO.membername}' type="submit" id="updateBtn" class= "btn btn-warning updateBtn">수정</button>
			<button data-mname ='${MemberVO.membername}' type="submit" id="deleteBtn" class= "btn btn-danger deleteBtn">삭제</button>
			</div>
		</c:forEach>

	</form>

	<div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a href="mlistPage${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li class = "lipage" <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="mlistPage${pageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li class = "lipage">
				<a href="mlistPage${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
				
			</c:if>

		</ul>
	</div>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>


	<script>
		var result = '${msg}';
		if (result == 'SUCCESS') {
			alert("처리가 완료되었습니다.");
		}
	</script>

	<script>
		$(document).ready(function() {
					$('#searchBtn').on(
							"click",
							function(event) {
								self.location = "mlistPage"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();
							});
				});
		
		
		$(document).ready(function(){
		var formObj = $("#f1");
		
		$('.deleteBtn').on("click", function(event) {
			
			var targetName = $(this).attr("data-mname");
			
			event.preventDefault();
			
			
			$("#membername").val(targetName);
			
			formObj.attr("action", "mdelete").attr("method","post");
			
			console.log(formObj.attr("action"));
			console.log(formObj.attr("method"));
			
			console.log(targetName);
			console.log("-------------------------"); 
			
			formObj.submit();
			
			
		});
		
		$('.updateBtn').on("click", function(event){
			
			var targetName = $(this).attr("data-mname");
			
			event.preventDefault();
			
			$("#membername").val(targetName);
			
			formObj.attr("action", "mupdate").attr("method","get");
			
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