<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="update" method="post" id="f1">
<input type="hidden" name="qno" value="${param.qno}">
<input type="hidden" name="page" value="${param.page}">
<ul>
<li>제목<input type ="text" name="qtitle" value="${vo.qtitle}"> </li>
<li>내용<input type ="text" name="qcontent" value="${vo.qcontent}"> </li>
<li>작성자<input type ="text" name="qwriter" value="${vo.qwriter}"> </li>

</ul>


<button type="submit" id="upBtn">수정</button>
</form>


<script src="https://code.jquery.com/jquery-2.2.4.js"
integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
crossorigin="anonymous"></script>


<script type="text/javascript">




</script>



</body>
</html>