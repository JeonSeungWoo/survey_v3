<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>SUCCESS PAGE</h1>
<h1>설문조사를 마쳤습니다. 감사합니다. 3초뒤 리스트 페이지로 넘어갑니다.</h1>

	<script>
		setTimeout(function() {
			self.location = "/surveyMain/listPage?page=1";
		}, 3000);
	</script>
</body>
</html>