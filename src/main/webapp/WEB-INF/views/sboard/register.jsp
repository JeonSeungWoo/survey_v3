<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form role="form" method="post">
	<div class ="box-body">
		<div class = "form-group">
			<label for = "exampleInputEmail1">제목</label>
			<input type = "text"
				name='btitle' class = "form-control" placeholder= "제목을 입력하시오">
		</div>
		<div class = "form-group">
			<label for = "exampleInputPassword1">내용</label>
			<textarea class= "form-control" name = "bcontent" rows="3" 
			placeholder ="내용을 입력하시오"></textarea>
		</div>
		<div class = "form-group">
			<label for = "exampleInputEmail1">작성자</label>
			<input type = "text"
				name='bwriter' class = "form-control" placeholder= "작성자를 입력하시오">
		</div>
	</div>
	<!--/.box-body  -->

	<div class = "box-footer">
		<button type = "submit" class = "btn btn-primary">Submit</button>
	</div>
	
</form>

</body>
</html>