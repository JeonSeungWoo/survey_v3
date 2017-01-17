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
</head>
<body>
	<h1>리스트</h1>
	
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
			<option value="j"
				<c:out value="${cri.searchType eq 'j'?'selected':''}"/>>
				가입일</option>
			<option value="me"
				<c:out value="${cri.searchType eq 'me'?'selected':''}"/>>
				닉네임 or 이메일</option>
			<option value="ej"
				<c:out value="${cri.searchType eq 'ej'?'selected':''}"/>>
				이메일 or 가입일</option>
			<option value="mej"
				<c:out value="${cri.searchType eq 'mej'?'selected':''}"/>>
				닉네임 or 이메일 or 가입일</option>
		</select> <input type="text" name='keyword' id="keywordInput"
			value='${cri.keyword }'>
		<button id='searchBtn'>검색</button>


	</div>

		<form action="mlistPage">
		<input type="hidden" name="page" value="${param.page}">


		<c:forEach items="${listPage}" var="MemberVO">

			<ul>
				<li><a href='mread?membername=${MemberVO.membername}'>글 번호 :
						${MemberVO.membername}</a></li>
				<li>${MemberVO.email}</li>
				<li>${MemberVO.joindate}</li>
			</ul>

		</c:forEach>

	</form>

	<div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="mlistPage${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="mlistPage${pageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="mlistPage${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
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
		$(document).ready(
				function() {
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

					$('#newBtn').on("click", function(event) {
						self.location = "register";
					});
				});
	</script>

</body>
</html>