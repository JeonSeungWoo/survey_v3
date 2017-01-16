<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>리스트</h1>
<ul>
<li><a href="/surveyMain/create">등록</a></li>
</ul>
<form action="listPage">
<input type = "hidden" name = "page" value="${param.page}">


<c:forEach items="${listPage}" var="SurveyMainVO">

<ul>
<li><a href='read?smno=${SurveyMainVO.smno}'>글 번호 : ${SurveyMainVO.smno}</a></li>
<li>${SurveyMainVO.smtitle}</li>
<li>${SurveyMainVO.smcontent}</li>
</ul>

</c:forEach>

</form>


<c:if test="${pageMaker.prev}">
<h1><a href = "listPage?page=${pageMaker.start - 1}">이전</a></h1>
</c:if>

<c:forEach begin="${pageMaker.start}" end= "${pageMaker.end}" var ="idx">
 
<h1><c:out value="${pageMaker.page == idx ? '':''}"></c:out>
<a href="listPage?page=${idx}">${idx}</a>
</h1>
</c:forEach>

<c:if test="${pageMaker.next && pageMaker.end > 0}">
<h1>
<a href="listPage?page=${pageMaker.end + 1}">다음</a></h1>
</c:if>

</body>
</html>