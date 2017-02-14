<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<style>
img{
width: 58.7%;
height:58.7%;
}

</style>



<html lang="en" class="no-js">
<head>
	<title>유통기한 코딩단</title>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen">	
	<link rel="stylesheet" type="text/css" href="css/magnific-popup.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/flexslider.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/responsive.css" media="screen">
	
</head>
<body>

	<!-- Container -->
	<div id="container">
		<!-- Header
		    ================================================== -->
		<header>
			<div class="logo-box">
				<a class="logo" href="/"><img alt="" src="/images/patient.png"></a>
			</div>
			
			<a class="elemadded responsive-link" href="#">Menu</a>
			
			<div class="menu-box">
				<ul class="menu">
				
				<c:if test="${login.userid == null}">
					<li><a href="/member/login"><span>로그인</span></a></li>
				</c:if>	
				
				<c:if test="${login.userid != null}">	
					<li><a href="/member/logout"><span>로그아웃</span></a></li>
				</c:if>
			
			<div class="menu-box">
				<ul class="menu">
					<li><a  href="/surveyMain/listPage?page=1"><span>설문조사 리스트</span></a></li>
					<li><a href="/surveyMain/register"><span>설문조사 만들기</span></a></li>
					
					<li class="drop"><a href="#"><span>내 페이지</span></a>
						<ul class="drop-down">
							<li><a href="#"><span>내가 참여한 설문조사</span></a></li>
							<li class="drop"><a href="#"><span>하하하</span></a>
								<ul class="drop-down">
									<li><a href="#"><span>Level 3</span></a></li>
									
								</ul>
							</li>
							<li><a href="#"><span>내가 등록한 설문조사</span></a></li>
						</ul>
					</li>
					<li><a href="/statistics/statistics"><span>통계</span></a></li>
				</ul>				
			</div>

			<div class="filter-box">
				<h3>Filter<i class="fa fa-th-large"></i></h3>
				<ul class="filter">
					<li><a href="#" class="active" data-filter="*">All Works</a></li>
					<li><a href="#" data-filter=".web-design">Web Design</a></li>
					<li><a href="#" data-filter=".photography">Photography</a></li>
					<li><a href="#" data-filter=".illustration">Illustration</a></li>
					<li><a href="#" data-filter=".nature">Nature</a></li>
					<li><a href="#" data-filter=".logo">Logo</a></li>
				</ul>
			</div>

			
		</header>
		<!-- End Header -->

		<!-- content 
			================================================== -->
		<div id="content">
			<div class="inner-content">
				<div class="portfolio-page">
					<div class="portfolio-box">

						<div class="project-post web-design illustration">
							<img alt="" src="upload/image1.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>고귀한</h2>
									<span>1. 고귀한 페이지 입니다.</span>
									<div><a href="https://www.google.com/trends"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img alt="" src="upload/image2.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>고귀한</h2>
									<span>2. 아주 고귀하죠</span>
									<div><a href="https://www.jobkorea.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design logo">
							<img alt="" src="upload/image3.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>고귀한</h2>
									<span>3. 고기한개</span>
									<div><a href="http://kostat.go.kr"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography illustration">
							<img alt="" src="upload/image4.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>고귀한</h2>
									<span>4. 참 귀한 사람입니다.</span>
									<div><a href="https://www.jobplanet.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature logo">
							<img alt="" src="upload/image5.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>고귀한</h2>
									<span>5. 최고 연장자 입니다.</span>
									<div><a href="https://ko.wikipedia.org/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design illustration">
							<img alt="" src="upload/image6.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>이승찬</h2>
									<span>1. 본인은 30이라 우기지만</span>
									<div><a href="https://www.google.com/intl/ko_kr/forms/about/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img alt="" src="upload/image7.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>이승찬</h2>
									<span>2. 87년생. 2017년 기준 31살 입니다.</span>
									<div><a href="http://office.naver.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature illustration">
							<img alt="" src="upload/image8.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>이승찬</h2>
									<span>3. 이승은 일본식 표현. 이제곱이 맞습니다.</span>
									<div><a href="https://ko.surveymonkey.com"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo">
							<img alt="" src="upload/image9.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>이승찬</h2>
									<span>4. 이제 이제곱찬이라 부르기로 하죠.</span>
									<div><a href="https://www.nownsurvey.com/‎"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design nature">
							<img alt="" src="upload/image10.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>이승찬</h2>
									<span>5. 저승보다 이승이 훨씬 훌륭합니다.</span>
									<div><a href="https://dart.fss.or.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography illustration">
							<img alt="" src="upload/image11.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>전승우</h2>
									<span>1. 전 승우예요.</span>
									<div><a href="https://www.krx.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature logo">
							<img alt="" src="upload/image12.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>전승우</h2>
									<span>2. 다시한번 말하지만 승은 일본식 표현. 제곱이 맞습니다.</span>
									<div><a href="http://finance.naver.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design illustration">
							<img alt="" src="upload/image1.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>전승우</h2>
									<span>3. 전제곱우</span>
									<div><a href="http://finance.daum.net/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography nature">
							<img alt="" src="upload/image4.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>전승우</h2>
									<span>4. 롤 실력을 보면 이름값 합니다.</span>
									<div><a href="http://finance.yahoo.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo illustration">
							<img alt="" src="upload/image5.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>전승우</h2>
									<span>5. 하는 족족 이기죠. 역시 전승을 하는 전승우 입니다.</span>
									<div><a href="https://www.work.go.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography logo">
							<img alt="" src="upload/image2.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>최원빈</h2>
									<span>1. 이름이 원빈이예요.</span>
									<div><a href="/menu/BMI"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature">
							<img alt="" src="upload/image12.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>최원빈</h2>
									<span>2. 이름이 잘생겼어요.</span>
									<div><a href="/menu/lotto"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo illustration">
							<img alt="" src="upload/image9.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>최원빈</h2>
									<span>3. 어머니가 강가라 합하면 최강원빈이죠.</span>
									<div><a href="/menu/Quiz"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography nature">
							<img alt="" src="upload/image11.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>최원빈</h2>
									<span>4. 콩한쪽. 콩한쪽도 나눠먹자.</span>
									<div><a href="/menu/image"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature logo">
							<img alt="" src="upload/image6.jpg">
							<div class="hover-box">
								<div class="project-title">
									<h2>최원빈</h2>
									<span>5. 언젠간 투빈이 되길</span>
									<div><a href="/menu/iwatch"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- End content -->

	</div>
	<!-- End Container -->

	

	<div class="preloader">
		<img alt="" src="images/preloader.gif">
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.migrate.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery.imagesloaded.min.js"></script>
  	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>


</body>
</html>