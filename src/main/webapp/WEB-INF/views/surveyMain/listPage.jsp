<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@ include file="/resources/include/menu.jsp"%>

<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300);

.isotope {
	min-height: 700px;
}
.page{
background: #c3dcdd;
}


.inner-post{
font-size: 23px;
font-family: sans-serif, dotum,gulim, arial, helvetica;
font-weight: bold;
color: black;
background-color: #c3dcdd;
text-align: center;
}

.inner-post ul li{
padding: 10px;
border-bottom: 2px solid white;
} 

.comment-form{
color: white;
border-radius: 10px;
font-size: 14px;
padding: 10px;
text-transform: uppercase;
 transition: all 0.2s ease-in-out;
    -moz-transition: all 0.2s ease-in-out;
    -webkit-transition: all 0.2s ease-in-out;
    -o-transition: all 0.2s ease-in-out;
}

#keywordInput{
border-radius: 10px;
width:500px;
padding: 6px;
}

#searchTypeID{
border-radius: 10px;
padding: 6px;
}

.blog-page{
background: url(/resources/images/3.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;
}

html { background: url(/resources/images/3.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; }

.text-center{

background: url(/resources/images/3.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;
}

.page a{

	-webkit-filter: blur(3px);
	filter: blur(3px);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.page a:HOVER{
	-webkit-filter: blur(0);
	filter: blur(0);
}




</style>

<div class='blog-page'>

<div class="text-center">
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
            제목 or 설문내용</option>
         <option value="cw"
            <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
            설문내용 or 작성자</option>
         <option value="tcw"
            <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
            제목 or 설문내용 or 작성자</option>
      </select> 
      
      <input type="text" name='keyword' id="keywordInput" value='${cri.keyword }'>
         
         
      <button id='searchBtn' class="comment-form" style="background-color: #70a3a5">검색</button>
      
     
     
      <input type="submit" id='newBtn' class="comment-form" style="background-color:#488d91" value="설문조사 등록">
      <input type="submit" id='listBtn' class="comment-form" style="background-color:#237175" value="목록">
      <input type="submit" id="partiBtn" class="comment-form" style="background-color:#014b4f"value="참여한목록">
    
	
</div>

	<div class="blog-box">

		<c:forEach items="${listPage}" var="SurveyMainVO">
			<!-- blog-post -->
			<div class="blog-post gallery-post">
				<div class="inner-post">


					<ul class="page">
						<li><a
							href='/surveyView/readMain?smno=${SurveyMainVO.smno}&page=${param.page}&searchType=${param.searchType}&keyword=${param.keyword}&qnum=${param.qnum}&sdno=${param.sdno}'>
								<img  src="show?name=${SurveyMainVO.smimage}">
						</a></li>
						<li>${SurveyMainVO.smtitle}</li>
						<li style="font-size: 15px">${SurveyMainVO.smcontent}</li>
						<li style="font-size: 15px">${SurveyMainVO.smwriter}</li>
					</ul>

				</div>
			</div>
		</c:forEach>

	</div>
	</form>

</div>


<div class="text-center">
	<ul class="pagination">

		<c:if test="${pageMaker.prev}">
			<li class="prev"><a
				href="listPage${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
		</c:if>

		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
			var="idx">
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

</div>

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.migrate.js"></script>
<script type="text/javascript" src="/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery.imagesloaded.min.js"></script>
<script type="text/javascript" src="/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="/js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="/js/script.js"></script>


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


<%@ include file="/resources/include/main.jsp"%>