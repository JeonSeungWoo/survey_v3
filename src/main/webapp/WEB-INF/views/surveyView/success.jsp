<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>
html { background: url(/resources/images/switch2.gif) no-repeat center center fixed;
 -webkit-background-size: cover;
  -moz-background-size: cover; 
  -o-background-size: cover;  
  background-size: cover;
   }

.box-main{
float: left;
width: 100%;
padding-right: 20px;
padding-left: 25px;
margin: 0 auto;
text-align: center;
}

.box-main ul{
 list-style:none;
}

.box-main li{
   color: white;
   padding-bottom: 3px;
   font-size: 50px;
   font-family: Arial, Helvetica, sans-serif;
   display:inline-block;
   padding-right: 10px;
}
  
  
</style>

<body>

<div class="box-main">
<ul>
<li>설문조사를 마쳤습니다! 감사합니다.</li>
<li>설문조사 페이지에서 확인하세요~</li>
</ul>

</div>
<form action="/surveyView/success" method="get">
</form>


	<script>

	var smno = ${vo};
		setTimeout(function() {
			self.location = "/surveyView/readMain?smno="+smno+"&page=1";
		}, 3000);
		
	</script>
</body>
</html>