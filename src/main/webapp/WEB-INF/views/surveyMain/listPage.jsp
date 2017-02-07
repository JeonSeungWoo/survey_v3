<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@ include file="/resources/include/menu.jsp"%>

<style>
.isotope {
	min-height: 700px;
}
</style>

<div class='blog-page'>

<div class="text-center" style="background-color: grey;">
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

	<div class="blog-box">

		<c:forEach items="${listPage}" var="SurveyMainVO">
			<!-- blog-post -->
			<div class="blog-post gallery-post">
				<div class="inner-post">


					<ul class="page">
						<li><a
							href='/surveyView/readMain?smno=${SurveyMainVO.smno}&page=${param.page}&searchType=${param.searchType}&keyword=${param.keyword}&qnum=${param.qnum}&sdno=${param.sdno}'>
								<img src="show?name=${SurveyMainVO.smimage}">
						</a></li>
						<li>${SurveyMainVO.smtitle}</li>
						<li>${SurveyMainVO.smcontent}</li>
						<li>${SurveyMainVO.smwriter}</li>
					</ul>

				</div>
			</div>
		</c:forEach>

	</div>
	</form>

</div>


<div class="text-center" style="background-color: grey;">
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

<%@ include file="/resources/include/main.jsp"%>