<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="post" action="create" method="post" id="f1">
<input type="hidden" name="qno" value="${param.page}">
<ul>
<li>제목<input type ="text" name="qtitle"> </li>
<li>내용<input type ="text" name="qcontent"> </li>
<li>작성자<input type ="text" name="qwriter"> </li>

</ul>


<button type="submit"> 등록</button>
</form>



</body>
</html>