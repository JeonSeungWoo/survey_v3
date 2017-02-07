<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>


.page li{
padding: 10px;
}

.pagination li {   
   float: left;
   margin: 0.5rem;  
 
}

.box-main ul{
    float: left;
  
    margin: 20px;
    background-color: #B0E8F1;
    
}

.box-main li{
text-align: center;
width: 180px;
box-shadow: 5px 5px 5px #7CD0D5;
color: black;
border-radius: 10px;

}

.box-main img{

border-radius: 10px; 
background : url(/resources/images/no-image.jpg);
background-size:cover;
width: 160px;
height: 160px;

}

.box-main a:HOVER{

border:5px solid #B0E8F1;background:#B0E8F1;padding:0.5px;	
}



.comment-form1{
  background: #1ab5b3;
  color: #fff;
  border: none;
  padding: 8px;
  border-radius: 10px; 	  
}



#keywordInput{
 padding: 10px;
 border-radius: 10px;
 width: 500px;
 border-radius: 10px;
}

#searchTypeID{
padding: 10px;
border-radius: 10px;
}

.box-body{

margin: 40px; 
float: right;
border-radius: 10px;

}

.page{
border-radius: 10px;
}

</style>

</head>
<%@ include file="/resources/include/menu.jsp" %>
<body>
   
  <div class='box-body'>
	<div id = "commentBtn">
      <select name="searchType" id="searchTypeID">
         <option value="n"
            <c:out value="${cri.searchType == null?'selected':''}"/>>
            ---</option>
         <option value="t"
            <c:out value="${cri.searchType eq 't'?'selected':''}"/>>제목</option>
         <option value="c"
            <c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
            설문내용</option>
         <option value="w"
            <c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
            작성자</option>
         <option value="tc"
            <c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
            제목 OR 설문내용</option>
         <option value="cw"
            <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
            설문내용 OR 작성자</option>
         <option value="tcw"
            <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
            제목 OR 설문내용 OR 작성자</option>
      </select> 
      
      <input type="text" name='keyword' id="keywordInput" value='${cri.keyword }'>
         
         
      <button id='searchBtn' class="comment-form1">검색</button>
      
     
      
      <input type="submit" id='newBtn' class="comment-form1" value="설문조사 등록">
      <input type="submit" id='listBtn' class="comment-form1" value="목록">
      <input type="submit" id="partiBtn" class="comment-form1" value="참여한목록">
      </div>		
      
   </div>

  

	


   <form action="listPage">

      <input type="hidden" name="page" value="${param.page}">
      <c:forEach items="${listPage}" var="SurveyMainVO">
     
       <div class ="box-main">
         <ul class="page">
           	<li><a href='/surveyView/readMain?smno=${SurveyMainVO.smno}&page=${param.page}
            &searchType=${param.searchType}&keyword=${param.keyword}&qnum=${param.qnum}&sdno=${param.sdno}'>
            <img src="show?name=${SurveyMainVO.smimage}"></a></li>
            
            <div class="liTag">
            	<li>${SurveyMainVO.smtitle}</li>
            	<li>${SurveyMainVO.smcontent}</li>
            	<li>${SurveyMainVO.smwriter}</li>
            </div>
            </ul>
         </div>
       
      </c:forEach>
 </form>  
 
 
 

<div class="text-center" style="background-color: white;">
      <ul class="pagination">

         <c:if test="${pageMaker.prev}">
            <li class="prev"><a
               href="listPage${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
         </c:if>

         <c:forEach begin="${pageMaker.startPage }"
            end="${pageMaker.endPage }" var="idx">
            <li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
               <a href="listPage${pageMaker.makeSearch(idx)}">${idx}</a>
            </li>
         </c:forEach>

         <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
            <li class="next"><a
               href="listPage${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
         </c:if>

         </ul>
      </div>

 	
 
   <script src="https://code.jquery.com/jquery-2.2.4.js"
      integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
      crossorigin="anonymous"></script>


   <script>
      var result = '${msg}';
      if (result == 'SUCCESS') {
         alert("처리가 완료되었습니다.");
      }
   </script>

   <script>
      $(document).ready(
            function() {
               $('#searchBtn').on(
                     "click",
                     function(event) {
                        self.location = "listPage"
                              + '${pageMaker.makeQuery(1)}'
                              + "&searchType="
                              + $("select option:selected").val()
                              + "&keyword="
                              + $('#keywordInput').val();
                     });

               $('#newBtn').on("click", function(event) {
                  self.location = "register";
               });

               $('#listBtn').on("click", function(event) {
                  self.location = "listPage?page=${cri.page}";
               });
            });
   </script>

</body>

</html>