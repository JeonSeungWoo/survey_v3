<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Survey</title>

<style>
#img{
	width: 200px;
	height: 200px;
	text-align: center;
}

.box {
    position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
}
</style>


</head>

<%@ include file="/resources/include/menu.jsp" %>
<body>

<!-- Main content -->
    <section class="content">

      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">글번호 :${vo.smno}</h3> 
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>${qnum+1}문제</label>
                
                <form action="/surveyView/readDetail" method="get">
				<input type="hidden" name="smno" value="${vo.smno}">
				<input type="hidden" name="page" value="${param.page}">

					<div id = "box-main">
						<ul>
							<li>제목 : ${vo.sdtitle}</li>
							<li>내용 : ${vo.sdcontent}</li>
							<li><img id = "img"src='/upload/displayFile?fileName=${vo.attachFile}'></li>

							<input type="radio" name='answer' value="O" class="oxAnswer">O
							<input type="radio" name='answer' value="X" class="oxAnswer">X
						</ul>
					</div>
</form>
<div id = "prev"></div>
<button id="goListBtn">목록으로</button>
<div id = "next"></div>
                




                
                
                
                


        



          <!-- <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">iCheck - Checkbox &amp; Radio Inputs</h3>
            </div>
            <div class="box-body">
             
              <div class="form-group">
                <label>
                  <input type="checkbox" class="minimal" checked>
                </label>
                <label>
                  <input type="checkbox" class="minimal">
                </label>
                <label>
                  <input type="checkbox" class="minimal" disabled>
                  Minimal skin checkbox
                </label>
              </div>

              
              <div class="form-group">
                <label>
                  <input type="radio" name="r1" class="minimal" checked>
                </label>
                <label>
                  <input type="radio" name="r1" class="minimal">
                </label>
                <label>
                  <input type="radio" name="r1" class="minimal" disabled>
                  Minimal skin radio
                </label>
              </div>

             

             
              <div class="form-group">
                <label>
                  <input type="checkbox" class="minimal-red" checked>
                </label>
                <label>
                  <input type="checkbox" class="minimal-red">
                </label>
                <label>
                  <input type="checkbox" class="minimal-red" disabled>
                  Minimal red skin checkbox
                </label>
              </div>

              
              <div class="form-group">
                <label>
                  <input type="radio" name="r2" class="minimal-red" checked>
                </label>
                <label>
                  <input type="radio" name="r2" class="minimal-red">
                </label>
                <label>
                  <input type="radio" name="r2" class="minimal-red" disabled>
                  Minimal red skin radio
                </label>
              </div>

            


              <div class="form-group">
                <label>
                  <input type="checkbox" class="flat-red" checked>
                </label>
                <label>
                  <input type="checkbox" class="flat-red">
                </label>
                <label>
                  <input type="checkbox" class="flat-red" disabled>
                  Flat green skin checkbox
                </label>
              </div>

         
              <div class="form-group">
                <label>
                  <input type="radio" name="r3" class="flat-red" checked>
                </label>
                <label>
                  <input type="radio" name="r3" class="flat-red">
                </label>
                <label>
                  <input type="radio" name="r3" class="flat-red" disabled>
                  Flat green skin radio
                </label>
              </div>
            </div> 
          </div> -->



        </div>
  
      </div>

		</div>
	</div>
</div>
    </section>
    <!-- /.content -->




<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

<script>
var smno = ${vo.smno};

var sdno = ${vo.sdno};

var userid = '${login.userid}';
var qnum = ${qnum};

function checkAnswer(){
	
	console.log("check Answer.............................................");
	
    var answer = $(':input[name=answer]:radio:checked').val();
     
    if( answer ){
        alert(answer+"을 선택했습니다");
        goNext1();
        
        var data ={ smno : smno,
    		    sdno : sdno,
    		    userid : userid,
    		      answer : answer};
        
        $.ajax({
    		type : "post",
    		url : "/answer/oxAnswer/",
    		headers : {
    			"Content-Type":"application/json",
    			"X-HTTP-Method-Override" : "POST"
    		},
    		data :JSON.stringify(data),
    		success : function(result){
    			if(result == "SUCCESS"){
    				alert("버튼 입력 성공!!!!!!!!!");
    			}
    		}
    	});
        
        return true;
        
        
    }else{
        alert("번호를 선택 하세요.");
        return false;
    }  
}

var next = "";

var prev = "";

if(qnum >= 0){
	var next = "<button id='qnumNext' onclick='checkAnswer()'>다음</button>";
}
$("#next").html(next);


function goNext1(){
	alert("go Next 다음 페이지로");
	qnum = qnum+1;
	self.location = "/surveyView/readDetail?smno="+smno+"&page=1&qnum="+qnum;
	
}


if(qnum > 0){
	var prev = "<button id='prevNext'>이전</button>";
}
$("#prev").html(prev);


$("#prevNext").on("click",function(){
	alert("이전 페이지로");
	qnum = qnum-1;
	
	self.location = "/surveyView/readDetail?smno="+smno+"&page=1&qnum="+qnum;
	var sdnomus = ${vo.sdno-1};
	$.ajax({
		type : "delete",
		url : "/answer/"+sdnomus+"/"+userid,
		
		success : function(result){
			console.log("result : " +result );
			if(result == "SUCCESS"){
				alert("삭제 되었습니다.");
				
			}						
		}
	});

	
	alert("qnum  :" + qnum);
});



$("#goListBtn ").on("click", function(event) {
	event.preventDefault();
	self.location = "/surveyMain/listPage?page=1";
});




</script>

<script>
$(document).ready(function(){
  $('input').iCheck({
    checkboxClass: 'icheckbox_polaris',
    radioClass: 'iradio_polaris',
    increaseArea: '-10%' // optional
  });
});
</script>

</body>
</html>