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
	
<!-- <form id="jobForm">
		<input type='hidden' name="page" value=${pageMaker.cri.page}> 
		<input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}> 
	</form> -->
	<div class = "box">
		<div class="box-header with-border">
	<h3 class="box-title">Search Board</h3>
	
	<div class="box-body">
		
		<select name="searchType">
			<option value="n"
				<c:out value="${cri.searchType == null?'selected':''}"/>>
				---</option>
			<option value="t"
				<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
				Title</option>
			<option value="c"
				<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
				Content</option>
			<option value="w"
				<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
				Writer</option>
			<option value="tc"
				<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
				Title or Content</option>
			<option value="cw"
				<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
				Content or Writer</option>
			<option value="tcw"
				<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
				Title or Content or Writer</option>
		</select>
			
			<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
			<button id="searchBtn">Search</button>
			<button id="newBtn">New Board</button>
			
		</div>
	</div>
</div>
	
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
				<td><a href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>${boardVO.btitle}</a></td>
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
		
	<div class="box-footer"></div>
	
	<div class ="text-center">
	<ul class = "pagination">
	
		<c:if test="${pageMaker.prev }">
			<li><a href = "list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
		</c:if>
		
		<c:forEach begin = "${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<li
				<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
				<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
			</li>
		</c:forEach>
		
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<li><a href="list${pageMaker.makeSearch(pageMaker.endPage +1)}">&raquo;</a></li>
		</c:if>
		
	</ul>
</div>	
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
<script>
	$(document).ready(function(){
		$('#searchBtn').on("click", function(event){
			
			self.location = "list"
				+'${pageMaker.makeQuery(1)}'
				+"&searchType="
				+$("select option:selected").val()
				+"&keyword=" + $('#keywordInput').val();
		});
		
		$('#newBtn').on("click", function(evt){
			
			self.location ="register";
		});
	});
</script>
<!-- <script>
	$(".pagination li a").on("click", function(event){
		event.preventDefault();
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/sboard/list").attr("method", "get");
		jobForm.submit();
	});
	
</script> -->
</html>
 <%@ include file = "../include/footer.jsp" %>