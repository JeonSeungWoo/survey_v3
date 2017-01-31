<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/surveyView/readDetail" method="get">
<input type="hidden" name="smno" value="${SurveyMainVO.smno}">
<input type="hidden" name="page" value="${param.page}">
<input type="hidden" name="qnum" value="${param.qnum}">


<ul>
<li>${detailNum.sdtitle}</li>
<li>${detailNum.sdcontent}</li>
<li>ox퀴즈 : <input type="radio" name='stype'>o x</li>
</ul>


<c:if test="${detailCount.qnum > 0}">
<h1><a href="readDetail?qnum=${detailCount.prev}">이전</a></h1>
</c:if>


<c:if test="${detailCount.qnum >= 0}">
<h1><a href="readDetail?qnum=${detailCount.next}">다음</a></h1>
</c:if>


</form>
</body>
</html>