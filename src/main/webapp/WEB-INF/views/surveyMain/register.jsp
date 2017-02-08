<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/resources/include/menu.jsp"%>
<style>
html {
	background-color: #ffffff;
}

.post {
	background-color: #ffffff;
}

.fileDrop {
	width: 380px;
	height: 340px;
	border: 3px dotted #3e5ea2;
	margin: 15px;
	font-size: 15pt;
	background: #a6dbdd;
	
}



li {
	list-style: none;
}

.page-header h1 {
	color: #ffffff;
	font-size: 40pt;
	text-decoration: blink;
}

h1 {
	font-family: 'Lobster', cursive;
}



.rBtn {
	background: #197f84;
  	color: #fff;
  	border: none;
  	padding: 8px;
  	border-radius: 10px;
}

.lBtn {
	background: #1ab5b3;
  	color: #fff;
  	border: none;
  	padding: 8px;
  	border-radius: 10px;
}

.input {
	position: relative;
	z-index: 1;
	display: inline-block;
	margin: 1em;
	max-width: 350px;
	width: calc(100% - 2em);
	vertical-align: top;
}

.input__field {
	position: relative;
	display: block;
	float: right;
	padding: 0.8em;
	width: 60%;
	border: none;
	border-radius: 0;
	background: #f0f0f0;
	color: #aaa;
	font-weight: 400;
	font-family: "Avenir Next", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
	-webkit-appearance: none; /* for box shadows to show on iOS */
}

.input__field:focus {
	outline: none;
}

.input__label {
	display: inline-block;
	float: right;
	padding: 0 1em;
	width: 40%;
	color: #696969;
	font-weight: bold;
	font-size: 70.25%;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.input__label-content {
	position: relative;
	display: block;
	padding: 1.6em 0;
	width: 100%;
}

.graphic {
	position: absolute;
	top: 0;
	left: 0;
	fill: none;
}

.icon {
	color: #ddd;
	font-size: 150%;
}

/* Shoko */
.input--shoko {
	overflow: hidden;
	padding-bottom: 2.5em;
}

.input__field--shoko {
	padding: 0;
	margin-top: 1.2em;
	width: 100%;
	background: transparent;
	color: #000000;
	font-size: 1.55em;
}

.input__label--shoko {
	position: absolute;
	top: 2em;
	left: 0;
	display: block;
	width: 100%;
	text-align: left;
	padding: 0em;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: #A09C9C;
	pointer-events: none;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transition: -webkit-transform 0.2s 0.1s, color 0.3s;
	transition: transform 0.2s 0.1s, color 0.3s;
	-webkit-transition-timing-function: ease-out;
	transition-timing-function: ease-out;
}

.graphic--shoko {
	stroke: #A09C9C;
	pointer-events: none;
	stroke-width: 2px;
	top: 1.25em;
	bottom: 0px;
	height: 3.275em;
	-webkit-transition: -webkit-transform 0.7s, stroke 0.7s;
	transition: transform 0.7s, stroke 0.7s;
	-webkit-transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
	transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
}

.input__field--shoko:focus+.input__label--shoko, .input--filled .input__label--shoko
	{
	color: #3ca7ad;
	-webkit-transform: translate3d(0, 3.5em, 0) scale3d(0.85, 0.85, 1);
	transform: translate3d(0, 3.5em, 0) scale3d(0.85, 0.85, 1);
}

.input__field--shoko:focus ~ .graphic--shoko, .input--filled .graphic--shoko
	{
	stroke: #3ca7ad;
	-webkit-transform: translate3d(-66.6%, 0, 0);
	transform: translate3d(-66.6%, 0, 0);
}

.page-header{
border-radius: 10px;
width: 360px;
text-align: justify;"

}

#all{
	position:absolute;
  	top:5%;
  	left:50%;
}

.contentBox{
background: #DDDDFF;
}


</style>

<div id="all">
	<form role="form" class="post" action="register" method="post"enctype="multipart/form-data" id="f1">
		<input type="hidden" name="smno" value="${param.page}">
</form>


			<section class="content bgcolor-10">

			<span class="input input--shoko"> 
			<input class="input__field input__field--shoko" type="text"
				value="설문조사 만들기" readonly="readonly"/> <label class="input__label input__label--shoko"
				for="smwriter">
			</label> <svg class="graphic graphic--shoko" width="300%" height="100%"
					viewBox="0 0 1200 60" preserveAspectRatio="none"> <path
					d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
				<path
					d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0" />
				</svg>
			</span>
		


			<p>
				<span class="input input--shoko"> <input
					class="input__field input__field--shoko" type="text" id="smtitle"
					name="smtitle" /> <label class="input__label input__label--shoko"
					for="smtitle"> <span
						class="input__label-content input__label-content--shoko">제목</span>
				</label> <svg class="graphic graphic--shoko" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none"> <path
						d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					<path
						d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0" />
					</svg>


				</span>
			</p>

			<p>
				<span class="input input--shoko"> <input
					class="input__field input__field--shoko" type="text" id="smcontent"
					name="smcontent" /> <label
					class="input__label input__label--shoko" for="smcontent"> <span
						class="input__label-content input__label-content--shoko">내용</span>
				</label> <svg class="graphic graphic--shoko" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none"> <path
						d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					<path
						d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0" />
					</svg>


				</span>
			</p>

			<span class="input input--shoko"> 
			<input class="input__field input__field--shoko" type="text" id="smwriter"
				name="smwriter" value="${login.userid}" readonly="readonly"/> <label class="input__label input__label--shoko"
				for="smwriter"> <span
					class="input__label-content input__label-content--shoko">작성자</span>
			</label> <svg class="graphic graphic--shoko" width="300%" height="100%"
					viewBox="0 0 1200 60" preserveAspectRatio="none"> <path
					d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
				<path
					d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0" />
				</svg>
			</span> </section>
			<input type="hidden" name="smimage" id="smimage">
			<div class='fileDrop'>
				여기에 메인화면에 쓸 사진을 넣어주세요
				<div class="uploadedList"></div>
			</div>

			<p>
			<button id="goListBtn" class="lBtn">목록으로</button>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button id="rBtn" class="rBtn" onclick="validate_user_text();">등록</button>
				
			</p>
		</div>
		

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>

	<script>
		var swear_words_arr = new Array("섹스", "대출", "무이자", "병신", "씨발", "개새끼",
				"십새끼", "개년", "누드", "조건만남", "필로폰", "마약", "바다이야기", "바카라", "시알리스",
				"비아그라", "멍청이", "똥개", "씹년", "미친년", "엠창", "호로새끼", "자지", "보지"); // 제한 목록

		var swear_alert_arr = new Array;

		var swear_alert_count = 0;

		function reset_alert_count() {
			swear_alert_count = 0;
		}

		function validate_user_text() {
			reset_alert_count();
			var compare_text = document.getElementById("smtitle").value;
			for (var i = 0; i < swear_words_arr.length; i++) {
				for (var j = 0; j < (compare_text.length); j++) {
					if (swear_words_arr[i] == compare_text.substring(j,
							(j + swear_words_arr[i].length)).toLowerCase()) {
						swear_alert_arr[swear_alert_count] = compare_text
								.substring(j, (j + swear_words_arr[i].length));
						swear_alert_count++;
					}
				}
			}
			var alert_text = "";
			for (var k = 1; k <= swear_alert_count; k++) {
				alert_text += "n" + "(" + k + ")" + swear_alert_arr[k - 1];
			}

			if (swear_alert_count > 0) {

				$("#f1").submit(function(event) {
					event.preventDefault();
					// 불량단어 나왔을때 멘트
					alert(alert_text + "는 입력할 수 없는 단어입니다. 예쁜 말을 써주세요");
					// 불량단어 나왔을때 멘트
					document.getElementById("smtitle").select();
					self.location = "/surveyMain/register";
				});
				return;

			} else {
				alert(alert_text + "등록 되었습니다.");
				var formObj = $("#f1");
				$("#rBtn").on("click", function() {
					formObj.attr("action", "/surveyMain/register");
					formObj.attr("method", "post");
					formObj.submit();
					return;
				});
			}

		}
		function select_area() {

			document.getElementById("smtitle").select();
		}

		window.onload = reset_alert_count;
	</script>


	<script>
		$(document).ready(function() {

			$("#goListBtn ").on("click", function(event) {
				event.preventDefault();
				self.location = "/surveyMain/listPage?page=1";
			});

			var uploadedList = $(".uploadedList");
			$(".fileDrop").on("dragenter dragover", function(event) {
				event.preventDefault();
			});
			$(".fileDrop").on("drop", function(event) {
				event.preventDefault();
				var files = event.originalEvent.dataTransfer.files;
				var file = files[0];
				var formData = new FormData();
				$('.uploadedList').empty();
				formData.append("file", file);
				console.log(formData);
				$.ajax({
					url : "uploadFile",
					data : formData,
					dataType : 'text',
					type : "post",
					contentType : false,
					processData : false,
					success : function(data) {
						console.log(data);
						uploadedList.html("<img src=show?name=" + data + ">");
						$("#smimage").val(data);
					}
				});
			});
		});
	</script>

	<script src="/js/classie.js"></script>
	<script>
		(function() {
			// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
			if (!String.prototype.trim) {
				(function() {
					// Make sure we trim BOM and NBSP
					var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
					String.prototype.trim = function() {
						return this.replace(rtrim, '');
					};
				})();
			}

			[].slice.call(document.querySelectorAll('input.input__field'))
					.forEach(function(inputEl) {
						// in case the input is already filled..
						if (inputEl.value.trim() !== '') {
							classie.add(inputEl.parentNode, 'input--filled');
						}

						// events:
						inputEl.addEventListener('focus', onInputFocus);
						inputEl.addEventListener('blur', onInputBlur);
					});

			function onInputFocus(ev) {
				classie.add(ev.target.parentNode, 'input--filled');
			}

			function onInputBlur(ev) {
				if (ev.target.value.trim() === '') {
					classie.remove(ev.target.parentNode, 'input--filled');
				}
			}
		})();
	</script>

<%@ include file="/resources/include/main.jsp"%>