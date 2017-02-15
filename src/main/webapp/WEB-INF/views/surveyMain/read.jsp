<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/resources/include/menu.jsp"%>

<style>
html{
background: url(/resources/images/ccc.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;
}

#image{
width: 200px;
height: 200px;
border-radius: 10px;
}


.fileDrop {
   width: 80%;
   height: 100px;
   border: 1px dotted black;
   background-color: gray;
   margin: auto;
}

#modDiv {
   width: 50%;
   height: 110%;
   background-color: #d0eced;
   position: relative;
   padding: 10px;
   z-index: 1000;
   top: -280%;
   left: 45%;
   border-radius: 10px;
}

#modDiv button{
border-radius: 10px;
}

.divSmno {
   border: groove;
   text-align: center;
   font-size: 25px;
   font-style: inherit;
   background-color: #FFFFFF;
   border-radius: 10px;
   
}

.divSmno ul li{
border-bottom: 1px solid;

}

.divSmno ul li img{
	width: 200px;
   height: 200px;
   
   border-radius: 50px;
   background: url(/resources/images/no-image.jpg);
   background-size: cover;
}

#detailDiv {
   border-radius: 10px;
   text-align: center;
   font-size: 25px;
   font-style: inherit;
   background-color: #EFFBFB;
  
}


#divSdno {
   border: 1px solid green;
   text-align: center;
   font-size: 20px;
   font-style: inherit;
   background-color: #E0E6F8;
   border-radius: 10px;
}








#surveyDetailAddIDval {
   background: #7fd8bb;
   color: #fff;
   border: none;
   padding: 8px;
   border-radius: 6px;
}



.icono-image {
   width: 30px;
   height: 26px;
   border-radius: 3px;
   overflow: hidden;
   margin: 4px 2px
}

.icono-image:before {
   position: absolute;
   width: 20px;
   height: 20px;
   left: -2px;
   top: 14px;
   -webkit-transform: rotate(45deg);
   -ms-transform: rotate(45deg);
   transform: rotate(45deg);
   box-shadow: inset 0 0 0 32px, 10px -6px 0 0
}

.icono-image:after {
   position: absolute;
   width: 4px;
   height: 4px;
   border-radius: 50%;
   box-shadow: inset 0 0 0 32px;
   top: 5px;
   right: 5px
}




</style>



   <form role="form" action="/update" method="post">

      <input type='hidden' name='smno' value="${SurveyMainVO.smno}">
      <input type='hidden' name='page' value="${cri.page}"> <input
         type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
         type='hidden' name='searchType' value="${cri.searchType}"> <input
         type='hidden' name='keyword' value="${cri.keyword}">

   </form>

   <form action="SurveyMainVO" class="col-md-10 col-md-offset-1">
      <input type="hidden" name="smno" value="${SurveyMainVO.smno}">
      <input type="hidden" name="page" value="${param.page}">

      <div class="divSmno">
         <ul>

            <li style="font-size: 30px;">${SurveyMainVO.smtitle }</li>
            <li>${SurveyMainVO.smcontent }</li>
            <li><img src="show?name=${SurveyMainVO.smimage}"></li>

            <li style="font-size: 20px;">설문시작일 : <fmt:formatDate value="${SurveyMainVO.smregdate}"
                  pattern="yyyy-MM-dd HH:mm:ss" /></li>
            <li style="font-size: 20px;">설문수정일 : <fmt:formatDate
                  value="${SurveyMainVO.smupdatedate}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
         </ul>
      </div>
   </form>

   <div class="col-md-1 col-md-offset-5">
      <button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
	</div>
   <div>
      <div id="surveyDetiles"></div>
   </div>



   <!-- SurveyDetail modDiv Button -->
   <div id="modDiv" style="display: none;">
      <div class="modal-title"></div>
      <div>
         <ul>
            <input type='hidden' name='attachFile' class='hiddenfile'>
            <li><input type="text" name="sdno" class="sdno"
               hidden="" ></li>
            <li>제목 <input type="text" name="sdtitle" class="sdtitle" style="width: 90%;"></li>
            <li>내용 <input type="text" name="sdcontent" class="sdcontent" style="width: 90%;"></li>
            <li>타입 <select name="sdtype" class="sdtype">
                     <option value="null">==선택하세요==</option>
                     <option value="OX">OX</option>
                     <option value="objective">객관식</option>
                     <option value="subjective">주관식</option>
                     <option value="table">표형</option>	

               </select></li>
            
            
            <li><div>
                 	이미지 <img name="sdimage" class="sdimage"
                     style='width: 10%; height: 10%;'>
                  <button class='modDelImage' style="background-color: #4a905e; color: white;">이미지삭제</button>
               </div></li>
            <li>
               <form id="modImageForm" method="post" action="/upload/uploadForm"
                  target="zeroFrame" enctype="multipart/form-data" style="border-radius: 10px;">
                  <input type='file' name='modImageFile' id="modImageFile">
                  <button id='changeImageBtn' style="background-color: #074f2d; color: white;">CHANGE IMAGE</button>
               </form>
         </ul>
      </div>

      <div>
         <button type="submit" id="surveyDetailUpdateBtn" style="background-color: #90ad41; color: white;">수정</button>
         <button type="submit" id="surveyDetailDelBtn" style="background-color: #ad4141; color: white;">삭제</button>
         <button type="submit" id="closeBtn" style="background-color: #4170ad; color: white;">닫기</button>
      </div>
   </div>

   <div class="col-md-7 col-md-offset-5">
      <div id="surveyDetailAdd">
         <input type="submit" value="+질문 추가" id="surveyDetailAddIDval">
      </div>
   </div>

   <!-- SurveyDetailCreate -->
   <div class="SurveyDetailMainCreate" style="display: none;">

      <form id="detailForm" method="post" action="/surveyDetail"
         target="zeroFrame" enctype="multipart/form-data">
         
         <div id="divSdno" class="col-md-6 col-md-offset-3">
            <ul>

               <li><input type="text" name="smno" class="newSmno"
                  value="${SurveyMainVO.smno}" hidden=""></li>
               <li><input type="text" name="sdtitle" class="newSdtitle"
                  placeholder="제목을 입력해주세요"></li>
               <li><input type="text" name="sdcontent" class="newSdcontent"
                  placeholder="내용을 입력해주세요"></li>


               <li><select name="sdtype">
                     <option value="null">==선택하세요==</option>
                     <option value="OX">OX</option>
                     <option value="objective">객관식</option>
                     <option value="subjective">주관식</option>
                     <option value="table">표형</option>	

               </select></li>


               <li>이미지<input type="file" name="sdAttach" class="newSdtype"></li>
               <li><button type="submit" class="surveyAddBtn" style="background-color: #81c47d; color: white; border-radius: 10px;">항목 등록</button></li>
            </ul>
         </div>
      </form>



   </div>

   <iframe hidden="" name='zeroFrame' width='0px' height='0px'></iframe>

   <div class="col-md-3 col-md-offset-9">

      <button type="submit" class="btn btn-danger" id="removeBtn">목록</button>
      <button type="submit" class="btn btn-primary" id="goListBtn">등록</button>
   </div>




<script src="https://code.jquery.com/jquery-2.2.4.js"
   integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
   crossorigin="anonymous"></script>






<script>
   var smno = ${SurveyMainVO.smno};

   function showResult(result, savedName) {
      alert(result);

      if (result == 'SUCCESS') {
         document.getElementById("detailForm").reset();
      }

      if (savedName) {
         $(".hiddenfile").val(savedName);
         return;
      }

      getAllList();
   }

   function getAllList() {

      $.getJSON("/surveyDetail/all/" + smno,
                  function(data) {
         var str = "";
                     console.log(data.length);

                     $(data).each(function() {

                                    var attachFile = this.attachFile;

                                    var link = "";

                                    if (attachFile) {
                                       link = "<img id='image' data-file='"
                                             + attachFile
                                             + "'"
                                             + " src='/upload/displayFile?fileName="
                                             + attachFile + "'>";
                                    }

                                    str += "<div id='detailDiv'>"
                                          + "<ul><li data-sdno='"+this.sdno+"' class='surveyLi'>"
                                          + "</li>"
                                          + "<li>제목  : "
                                          + "<small class='surveyTitle'>"
                                          + this.sdtitle
                                          + "</small></li>"
                                          + "<li>내용  : "
                                          + "<small class='surveyContent'>"
                                          + this.sdcontent
                                          + "</small></li>"
                                          + "<li>타입  : "
                                          + "<small class='surveyType'>"
                                          + this.sdtype
                                          + "</small></li>"
                                          + "<li>"
                                          + "<small class='surveryImage' >"
                                          + link
                                          + "</small></li></ul></div>";

                                 });

                     $("#surveyDetiles").html(str);

                  });

   }

   $(".surveyAddBtn").click(function(event) {
      event.preventDefault();
      console.log("survey detail add Btn clicked");
      $("#detailForm").submit();
      $(".SurveyDetailMainCreate").hide("slow");
   });

   $("#surveyDetailAdd").on("click", function() {
      var MainCreate = $(".SurveyDetailMainCreate");
      MainCreate.hide().show('slow');
   });

   $("#closeBtn").on("click", function(event) {
      event.preventDefault();
      $("#modDiv").hide("slow");

   });

   $('#surveyDetiles').on("click", "#detailDiv", function(event) {

      console.log("detail div clicked...");

      var target = $(this);

      var sdno = target.find(".surveyLi").attr("data-sdno");
      var sdtitle = target.find(".surveyTitle").text();
      var sdcontent = target.find(".surveyContent").text();
      var sdtype = target.find(".surveyType").text();
      var sdimageEle = target.find(".surveryImage");

      var sdimageFileName = target.find("img").attr("data-file");

      var sdimage = null;

      if (sdimageEle.find("img")) {
         sdimage = sdimageEle.find("img").attr("src");
      }

      console.log(sdno, sdtitle, sdcontent, sdtype, sdimageFileName);

      var modDiv = $("#modDiv");
      modDiv.find(".hiddenfile").val(sdimageFileName);
      modDiv.find(".sdno").val(sdno);
      modDiv.find(".sdtitle").val(sdtitle);
      modDiv.find(".sdcontent").val(sdcontent);
      modDiv.find(".sdtype").val(sdtype);
      modDiv.find(".sdimage").attr("src", sdimage);

      modDiv.hide().show('slow');
   });

   $("#surveyDetailDelBtn").click(function(event) {

      var sdno = $(".sdno").val();

      console.log("delete survey detail....." + sdno);

      $.ajax({
         type : "delete",
         url : "/surveyDetail/" + sdno,

         success : function(result) {
            console.log("result : " + result);
            if (result == "SUCCESS") {
               alert("삭제 되었습니다.");
               $("#modDiv").hide("slow");
               getAllList();
            }
         }
      });

   });

   //modify survey detail 

   $("#surveyDetailUpdateBtn").click(function(event) {

      var target = $("#modDiv");

      var sdno = target.find(".sdno").val();
      var sdtitle = target.find(".sdtitle").val();
      var sdcontent = target.find(".sdcontent").val();
      var sdtype = target.find(".sdtype").val();
      var sdfile = target.find(".hiddenfile").val();

      console.log("surveyDetailUpdateBtn..................1");
      console.log(sdno, sdtitle, sdcontent, sdtype);

      var data = {
         sdno : sdno,
         sdtitle : sdtitle,
         sdcontent : sdcontent,
         sdtype : sdtype,
         attachFile : sdfile
      };

      console.log(data);

      $.ajax({

         url : "/surveyDetail/" + sdno,
         headers : {
            "Content-Type" : "application/json",
            "X-HTTP-Method-Override" : "POST"
         },
         processData : false,
         contentType : false,
         data : JSON.stringify(data),
         type : "PUT",
         success : function(result) {
            if (result == "SUCCESS") {
               alert("수정되었습니다.");
               $("#modDiv").hide("slow");
               getAllList();
            }
         }
      });

   });

   $(".modDelImage").click(function() {

      var target = $("#modDiv");
      target.find('.hiddenfile').val("");
      target.find("img").attr("src", "");
   });

   $(document).ready(function() {
      getAllList();
   });
</script>

<script>
   $(document).ready(function() {

      var formObj = $("form[role='form']");

      console.log(formObj);

      $("#modifyBtn").on("click", function() {
         formObj.attr("action", "/surveyMain/update");
         formObj.attr("method", "get");
         formObj.submit();
      });

      $("#removeBtn").on("click", function() {
         formObj.attr("action", "/surveyMain/delete");
         formObj.submit();
      });

      $("#goListBtn ").on("click", function() {
         formObj.attr("action", "listPage?page=1");
         formObj.attr("method", "get");
         formObj.submit();
      });

   });
</script>


<%@ include file="/resources/include/main.jsp"%>






