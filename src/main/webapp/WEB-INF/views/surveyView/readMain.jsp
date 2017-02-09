<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@ include file="/resources/include/menu.jsp"%>

<style>
html{background-color: white;}

#imgread{
   width: 300px;
   height: 300px;
   border-radius: 50px; 
   background : url(/resources/images/no-image.jpg);
   background-size:cover;
}

.box-main{
color:black;
text-align: center;
font-size: 30px;
font-family: sans-serif, dotum,gulim, arial, helvetica;
padding: 10px;
font-weight: bold;
width: 100%;

}


.statisticsAction{

font-size: 30px;
font-family: sans-serif, dotum,gulim, arial, helvetica;
font-weight: bold;
color: #E8E8E8;

text-align: center;
}

.box-main ul li{
background:#eee url(/data/201012/IJ12929573850979/c_bl.gif) bottom left no-repeat; margin:5px 0; padding:0; float:left;  margin-left: 50px; margin-right:20px; width:40%;

}

.box-footer{
float: right;
}

#aTag:HOVER {
   
   background : black;
   background-size:cover;
   color: white;
}
#aTag:ACTIVE {
   
   color: blue;
   background-color: white;  
   
}

#f1{
background-color: white; 
}
</style>





<form action="/surveyView/readMain" method="get" id="f1">

   <input type="hidden" name="smno" value="${SurveyMainVO.smno}">
   <input type="hidden" name="page" value="${param.page}">
   <input type="hidden" name="qnum" id='qnum'value="${param.qnum}">
   
   

   <div class ="allPage" >
   
   
   <div class="box-main">
         <ul>
            <li>글번호</li><li>${SurveyMainVO.smno }</li>
            <li>제목 </li><li>${SurveyMainVO.smtitle }</li>
            <li>설문내용 </li><li>${SurveyMainVO.smcontent }</li>
            <li>설문시작일자</li><li><fmt:formatDate value="${SurveyMainVO.smregdate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
            
            
            <img id="imgread" src="show?name=${SurveyMainVO.smimage}">
         </ul>
   </div>
      
      <div class = "statisticsAction">
         <ul>
            <li><a id="aTag" href="/answer/oxStatistics?smno=${SurveyMainVO.smno}&page=1" >통계</a></li>
         </ul>
      </div>
      
      
      <div class="box-footer">
   
      <button type="submit" class="btn btn-primary" id="goListBtn">목록</button>
      &nbsp;<button type="submit" class="btn btn-start" id="startBtn">설문 시작</button>&emsp;
   </div>
   </div>
   
      
</form>
   
   
   
   <script src="https://code.jquery.com/jquery-2.2.4.js"
      integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
      crossorigin="anonymous"></script>
      
   
      
      
   <script>
      $(document).ready(function() {
         
         var formObj = $("#f1");

         console.log(formObj);
         
         $("#startBtn ").on("click", function() {
            
            $("#qnum").val("0");
            formObj.attr("action","/surveyView/readDetail?smno=${SurveyMainVO.smno}&page=1");
            formObj.attr("method", "get");
            formObj.submit();
         }); 

         
         $("#goListBtn ").on("click", function() {
            formObj.attr("action","/surveyMain/listPage?page=1");
            formObj.attr("method", "get");
            formObj.submit();
         });

      });
      
   </script>      




<%@ include file="/resources/include/main.jsp"%>