<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "../include/header.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<h3> READ BOARD</h3>
<body>
<form role="form" method="post">
	<input type = 'hidden' name= 'bno' value ="${boardVO.bno}">
</form>

<div class = "box-body">
	<div class="form-group">
		<label for = "exampleInputEmail1">Title</label>
		<input type="text" name="btitle" class="form-control" value="${boardVO.btitle}" readonly="readonly">
	</div>
	<div class ="form-group">
		<label for="exampleInputPassword1">Content</label>
		<textarea class="form-control" name="bcontent" rows="3" readonly="readonly">${boardVO.bcontent}</textarea>
	</div>
	<div class = "form-group">
	<label for="exampleInputEmail1">Writer</label>
	<input type ="text" name="bwriter" class="form-control" value="${boardVO.bwriter}" readonly="readonly">
	</div>
</div>
<!--./box-body  -->

<div class="box-footer">
	<button type ="submit" class="btn btn-warning">MODIFY</button>
	<button type ="submit" class="btn btn-danger">REMOVE</button>
	<button type ="submit" class="btn btn-primary">LIST ALL</button>
	
</div>
<script>
	$(document).ready(function(){
		var formObj = $("form[role='form']");
	
		console.log(formObj);
		
	$(".btn-warning").on("click", function(){
		formObj.attr("action" , "/board/modify");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/board/remove");
		formObj.submit();
	});
	
	$(".btn-primary").on("click", function(){
		self.location = "/board/listAll";
	});
	});
	
</script>	
</body>
</html>
 <%@ include file = "../include/footer.jsp" %>