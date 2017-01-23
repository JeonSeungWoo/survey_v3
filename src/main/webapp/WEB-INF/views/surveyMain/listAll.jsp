<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style>
* {
border : 2px dotted green;
}
</style>

<body>

<h1>리스트</h1>
<ul>
<li><a href="/surveyMain/create">등록</a></li>
</ul>

<c:forEach items="${list}" var="SurveyMainVO">

<ul>
<li><a href='read?smno=${SurveyMainVO.smno}'>글 번호 : ${SurveyMainVO.smno}</a></li>
<li>${SurveyMainVO.smtitle}</li>
<li>${SurveyMainVO.smcontent}</li>
</ul>

</c:forEach>



</body>
</html>