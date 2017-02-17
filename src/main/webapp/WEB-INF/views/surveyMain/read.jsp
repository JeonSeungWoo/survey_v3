<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/resources/include/menu.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/readPageCSS.css">	
</head>

        <div class="menu-box block"> <!-- MENU BOX (LEFT-CONTAINER) -->
                    <h2 class="titular col-md-12">설문조사 마법사</h2>
                    <ul class="menu-box-menu">
                        <li>
                            <a class="menu-box-tab"><span class="icon fontawesome-envelope scnd-font-color"></span>${SurveyMainVO.smtitle }</a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab"><span class="icon entypo-paper-plane scnd-font-color"></span>${SurveyMainVO.smcontent }</a>                            
                        </li>
                        <li style="height: 100%;">
                            <a class="menu-box-tab"><span class="icon entypo-calendar scnd-font-color"></span><img src="show?name=${SurveyMainVO.smimage}"></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab"><span class="icon entypo-cog scnd-font-color"></span>설문작성일 : <fmt:formatDate value="${SurveyMainVO.smregdate}"
                  pattern="yyyy-MM-dd HH:mm:ss" /></a>
                        </li>
                        <li style="line-height: 40px;">
                            <a class="menu-box-tab"><sapn class="icon entypo-chart-line scnd-font-color"></sapn>시작일<input type="text" id="from">종료일<input type="text" id="to"></a>
                        </li>                        
                    </ul>
                </div>
           

           


   <form role="form" action="/update" method="post">

      <input type='hidden' name='smno' value="${SurveyMainVO.smno}">
      <input type='hidden' name='page' value="${cri.page}"> <input
         type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
         type='hidden' name='searchType' value="${cri.searchType}"> <input
         type='hidden' name='keyword' value="${cri.keyword}">

   </form>
		     


      
   <div class="col-md-1 col-md-offset-5">
      <button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
   </div>
   <div>
      <div id="surveyDetiles"></div>
   </div>



   <!-- SurveyDetail modDiv Button -->
   <div id="modDiv" class="col-md-1 col-md-offset-3 menu-box block" style="display: none;">
      
      <div>
         <ul>
            <input type='hidden' name='attachFile' class='hiddenfile'>
            <li><input type="text" name="sdno" class="sdno"
               hidden="" ></li>
            <li>제목 <input type="text" name="sdtitle" class="sdtitle" style="width: 90%;"></li>
            <li>내용 <input type="text" name="sdcontent" class="sdcontent" style="width: 90%;"></li>
            <li> <select name="sdtype" class="sdtype" hidden="">
                     <option value="null">==선택하세요==</option>
                     <option value="OX">OX</option>
                     <option value="objective">객관식</option>
                     <option value="subjective">주관식</option>
                     <option value="table">표형</option>   

               </select></li>
            
            
            <li><div>
                                    이미지 <img name="sdimage" class="sdimage" style='width: 30%; height: 30%;'>
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
         
         <div class="col-md-6 col-md-offset-3 menu-box block">
            <ul>

               <li><input type="text" name="smno" class="newSmno"
                  value="${SurveyMainVO.smno}" hidden=""></li>
               <li><input type="text" name="sdtitle" class="newSdtitle"
                  placeholder="제목을 입력해주세요" style="width: 100%;"></li>
               <li><input type="text" name="sdcontent" class="newSdcontent"
                  placeholder="내용을 입력해주세요" style="width: 100%;"></li>


               <li><select name="sdtype" hidden="">
                     <option value="null">==선택하세요==</option>
                     <option value="OX">OX</option>
                     <option value="objective">객관식</option>
                     <option value="subjective">주관식</option>
                     <option value="table">표형</option>   

               </select></li>


               <li style="color: white;">이미지<input type="file" name="sdAttach" class="newSdtype" style="color: white;"></li>
               <li><button type="submit" class="surveyAddBtn" style="background-color: #81c47d; color: white; border-radius: 10px;">항목 등록</button></li>
            </ul>
         </div>
      </form>



   </div>

   <iframe hidden="" name='zeroFrame' width='0px' height='0px'></iframe>

   <div class="col-md-3 col-md-offset-9">

      <button type="submit" class="btn btn-danger" id="removeBtn">목록</button>
      <button type="submit" class="btn btn-primary" id="goListBtn">설문 등록</button>
   </div>


<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>

var rangeDate = 31; // set limit day
var setSdate, setEdate;
$("#from").datepicker({
    dateFormat: 'yy-mm-dd',
    minDate: 0,
    onSelect: function(selectDate){
        var stxt = selectDate.split("-");
            stxt[1] = stxt[1] - 1;
        var sdate = new Date(stxt[0], stxt[1], stxt[2]);
        var edate = new Date(stxt[0], stxt[1], stxt[2]);
            edate.setDate(sdate.getDate() + rangeDate);
        
        $('#to').datepicker('option', {
            minDate: selectDate,
            beforeShow : function () {
                $("#to").datepicker( "option", "maxDate", edate );                
                setSdate = selectDate;
                console.log(setSdate)
        }});
        //to 설정
    }
    //from 선택되었을 때
});
            
var rangeDate = 31; // set limit day
var setSdate, setEdate;
$("#from").datepicker({
    dateFormat: 'yy-mm-dd',
    minDate: 0,
    onSelect: function(selectDate){
        var stxt = selectDate.split("-");
            stxt[1] = stxt[1] - 1;
        var sdate = new Date(stxt[0], stxt[1], stxt[2]);
        var edate = new Date(stxt[0], stxt[1], stxt[2]);
            edate.setDate(sdate.getDate() + rangeDate);
        
        $('#to').datepicker('option', {
            minDate: selectDate,
            beforeShow : function () {
                $("#to").datepicker( "option", "maxDate", edate );                
                setSdate = selectDate;
                console.log(setSdate)
        }});
        //to 설정
    }
    //from 선택되었을 때
});
            
$("#to").datepicker({ 
    dateFormat: 'yy-mm-dd',
    onSelect : function(selectDate){
        setEdate = selectDate;
        console.log(setEdate)
    }
});
$('.btn').on('click', function(e){
    if($('input#from').val() == ''){
        /* alert('시작일을 선택해주세요.'); */
        $('input#from').focus();
        return false;
    }else if($('input#to').val() == ''){
        alert('종료일을 선택해주세요.');
        $('input#to').focus();
        return false;
    }

    var t1 = $('input#from').val().split("-");
    var t2 = $('input#to').val().split("-");
    var t1date = new Date(t1[0], t1[1], t1[2]);
    var t2date = new Date(t2[0], t2[1], t2[2]);
    var diff = t2date - t1date;
    var currDay = 24 * 60 * 60 * 1000;

});
//조회 버튼 클릭
</script>


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

                                    str += "<div id='detailDiv' class='col-md-6 col-md-offset-3'>"
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
                                          + "<li style='display: none'>타입  : "
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
      MainCreate.toggle();
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





