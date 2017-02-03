<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ include file="/resources/include/menu.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, maximum-scale=1">

<style>
height: 1372px;
	

.page li{
padding: 5px;
}

.pagination li {	
	float: left;
	margin: 0.5rem;	
}

.box-body{
text-align: left;
border-radius: 10px;
}

.box-main ul{
    float: left;
    border: 1rem;
}

.box-main li{
text-align: center;
width: 220px;

}

.box-main img{
width: 220px;
height: 220px;
}

</style>

</head>
<body>
	
	<h1>설문조사 리스트</h1>

	<div class='box-body'>

		<select name="searchType">
			<option value="n"
				<c:out value="${cri.searchType == null?'selected':''}"/>>
				---</option>
			<option value="t"
				<c:out value="${cri.searchType eq 't'?'selected':''}"/>>제목</option>
			<option value="c"
				<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
				설문내용</option>
			<option value="w"
				<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
				작성자</option>
			<option value="tc"
				<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
				제목 OR 설문내용</option>
			<option value="cw"
				<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
				설문내용 OR 작성자</option>
			<option value="tcw"
				<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
				제목 OR 설문내용 OR 작성자</option>
		</select> <input type="text" name='keyword' id="keywordInput"
			value='${cri.keyword }'>
		<button id='searchBtn'>검색</button>
		<button id='newBtn'>등록</button>
		<button id='listBtn'>목록</button>
		<button id="partiBtn">참여한목록</button>

	</div>




	<form action="listPage">


		<div class ="box-main">
		<input type="hidden" name="page" value="${param.page}">
		<c:forEach items="${listPage}" var="SurveyMainVO" >
			<div id="pic">
			<ul class="page">
				<%-- <li><a href='read?smno=${SurveyMainVO.smno}&page=${param.page}
				&searchType=${param.searchType}&keyword=${param.keyword}'>
						글 번호 :${SurveyMainVO.smno}</a></li> --%>
						
				<li><a href='/surveyView/readMain?smno=${SurveyMainVO.smno}&page=${param.page}
				&searchType=${param.searchType}&keyword=${param.keyword}&qnum=${param.qnum}&sdno=${param.sdno}'>
				<img src="show?name=${SurveyMainVO.smimage}"></a></li><br>
				<li>${SurveyMainVO.smtitle}</li>
				<li>${SurveyMainVO.smcontent}</li>
				<li>${SurveyMainVO.smwriter}</li>
			</ul>
			</div>
		</c:forEach>
		</div>

	</form>

	<%-- 	<c:forEach items="${listPage}" var="SurveyMainVO">

		<tr>
			<td>${SurveyMainVO.smno}</td>
			<td><a
				href='/surveyMain/read${pageMaker.makeSearch(pageMaker.cri.page) }&smno=${SurveyMainVO.smno}'>
					${SurveyMainVO.smtitle} </a></td>
			<td>${SurveyMainVO.smwriter}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
					value="${SurveyMainVO.regdate}" /></td>
		</tr>

	</c:forEach> --%>


	<div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li class="prev"><a
					href="listPage${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="listPage${pageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li class="next"><a
					href="listPage${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
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
								self.location = "listPage"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();
							});

					$('#newBtn').on("click", function(event) {
						self.location = "register";
					});

					$('#listBtn').on("click", function(event) {
						self.location = "listPage?page=${cri.page}";
					});
				});
	</script>

</body>

</html>
