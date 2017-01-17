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
<h1>멤버리스트</h1>

<c:forEach items="${list}" var="MemberVO">

<ul>
<li><a href='mread?membername=${MemberVO.membername}'>
	닉네임 : ${MemberVO.membername}</a></li>
<li>이메일 : ${MemberVO.email}</li>
<li>가입일 : ${MemberVO.joindate}</li>
<input type="button" onclick="mupdate" value="수정">
<input type="button" onclick="mdelete" value="삭제">
</ul>

</c:forEach>


</body>
</html>