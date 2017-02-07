<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 <h1>${smno}</h1>
 

<script type="text/javascript">
var smno = ${smno}

self.location = "/surveyMain/read?smno="+smno;

</script>

<%@ include file="/resources/include/main.jsp"%>