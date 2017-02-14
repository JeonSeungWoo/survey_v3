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

<table>
<c:forEach items="${list}" var="QBoardVO">
<tr>

<td>${QBoardVO.qno}</td>

<td><a href="/qBoard/read?qno=${QBoardVO.qno}">${QBoardVO.qtitle}</a></td>

<td>${QBoardVO.qcontent}</td>
<td>${QBoardVO.qwriter}</td>
<td>${QBoardVO.qregdate}</td>

</tr>
</c:forEach>
</table>

<button type="submit"><a href="/qBoard/create">등록</a></button>

</body>
</html>