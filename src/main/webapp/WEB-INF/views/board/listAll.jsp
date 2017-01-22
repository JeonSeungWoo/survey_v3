<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<%@ include file = "../include/header.jsp" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="content">
	<div class="row">
	<!-- left column  -->
	<div class ="col-md-12">
	<!--general form elements  -->
	
		<div class = "box">
		<div class="box-header with-border">
			<h3 class="box-title">LIST ALL PAGE</h3>
		</div>
		
		<div class="box-body">
			<table class = "table table-bordered">
			<tr>
				<th style= "width: 10px">BNO</th>
				<th>TITLE</th>
				<th>WRITER</th>
				<th>START TIME</th>
				<th>END TIME</th>
				<th style = "width: 40px">HIT</th>
			</tr>
			
		<c:forEach items="${list}" var= "boardVO">
			
			<tr>
				<td>${boardVO.bno}</td>
				<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.btitle}</a></td>
				<td>${boardVO.bwriter}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.bstarttime }"/></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.bendtime }"/></td>
				<td><span class = "badge bg-red">${boardVO.bhit }</span></td>
			</tr>
		</c:forEach>
		
		
		</table>
	</div>
		<!--/.box-body  -->
		
		<!--/.box-footer  -->
		
	<div class="box-footer">Footer</div>	
	</div>
</div>
</div>
<!--/.col
 (left)  -->
</section>
</body>

<script>
	var result = '${msg}';
	
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>

</html>
 <%@ include file = "../include/footer.jsp" %>