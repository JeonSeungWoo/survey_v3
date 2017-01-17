<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="register" method="post" enctype="multiport/form-data">

<div>
<ul>
<li>제목<input type="text" onfocus="if(this.value =='설문조사 제목') this.value='';" onblur="if(this.value =='') this.value='설문조사 제목';" value="설문조사 제목"></li>

<li>설명<input type="text" onfocus="if(this.value =='설문조사 내용') this.value='';" onblur="if(this.value =='') this.value='설문조사 내용';" value="설문조사 내용"></li>

<li>작성자<input type="text" name = "smwriter" value ="user">

<li>이미지<input type ="file" name ="smimage"></li>
</ul>
</div>

<button type = "submit">등록</button>

</form>


</body>
</html>