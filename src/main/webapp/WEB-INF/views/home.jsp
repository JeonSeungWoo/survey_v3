<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<style>
img{
width: 58.7%;
height:58.7%;
}
.img{
height:248px;
width: 200px;
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
							<img class="img" alt="" src="upload/image1-1.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>구글트렌드</h2>
									<span>트렌드를 검색해줍니다</span>
									<div><a href="https://www.google.com/trends"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img class="img" alt="" src="upload/image1-2.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>잡코리아</h2>
									<span>구직활동을 위한 사이트</span>
									<div><a href="https://www.jobkorea.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design logo">
							<img class="img" alt="" src="upload/image1-3.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>통계청</h2>
									<span>대한민국 통계 자료</span>
									<div><a href="http://kostat.go.kr"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography illustration">
							<img class="img" alt="" src="upload/image1-4.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>잡플래닛</h2>
									<span>구직활동을 위한 사이트</span>
									<div><a href="https://www.jobplanet.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature logo">
							<img class="img" alt="" src="upload/image1-5.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>위키백과</h2>
									<span>전 세계 여러 언어로 만들어 나가는 자유 백과사전</span>
									<div><a href="https://ko.wikipedia.org/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design illustration">
							<img class="img" alt="" src="upload/image1-6.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>구글 설문지</h2>
									<span>구글에서 만든 설문조사 입니다</span>
									<div><a href="https://www.google.com/intl/ko_kr/forms/about/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img class="img" alt="" src="upload/image1-7.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>네이버 오피스</h2>
									<span>네이버에서 만든 오피스</span>
									<div><a href="http://office.naver.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature illustration">
							<img class="img" alt="" src="upload/image1-8.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>서베이몽키</h2>
									<span>유료 설문조사 사이트 입니다</span>
									<div><a href="https://ko.surveymonkey.com"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo">
							<img class="img" alt="" src="upload/image1-9.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>사람인</h2>
									<span>구인구직 사이트</span>
									<div><a href="https://www.saramin.co.kr/‎/‎"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design nature">
							<img class="img" alt="" src="upload/image1-10.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>다트</h2>
									<span>전자공시시스템 기업 정보 사이트</span>
									<div><a href="https://dart.fss.or.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography illustration">
							<img class="img" alt="" src="upload/image1-11.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>한국거래소</h2>
									<span>한국거래소 기업 정보 사이트</span>
									<div><a href="https://www.krx.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature logo">
							<img class="img" alt="" src="upload/image1-12.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>네이버금융</h2>
									<span>네이버금융 기업 정보 사이트</span>
									<div><a href="http://finance.naver.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design illustration">
							<img class="img" alt="" src="upload/image1-13.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>다음금융</h2>
									<span>다음금융 기업 정보 사이트</span>
									<div><a href="http://finance.daum.net/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography nature">
							<img class="img" alt="" src="upload/image1-14.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>야후금융</h2>
									<span>야후금융 국외 기업 정보 사이트</span>
									<div><a href="http://finance.yahoo.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo illustration">
							<img class="img" alt="" src="upload/image1-15.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>워크넷</h2>
									<span>대한민국 취업정보 사이트</span>
									<div><a href="https://www.work.go.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography logo">
							<img class="img" alt="" src="upload/image1-16.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>BMI</h2>
									<span>BMI지수 계산</span>
									<div><a href="/menu/BMI"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature">
							<img class="img" alt="" src="upload/image1-17.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>로또</h2>
									<span>로또 당첨번호 추출기</span>
									<div><a href="/menu/lotto"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo illustration">
							<img class="img" alt="" src="upload/image1-18.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>퀴즈쇼</h2>
									<span>5개의 재미있는 객관식 퀴즈</span>
									<div><a href="/menu/Quiz"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography nature">
							<img class="img" alt="" src="upload/image1-19.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>우주여행 갤러리</h2>
									<span>갤러리를 통해 우주여행을 해봅시다</span>
									<div><a href="/menu/image"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature logo">
							<img class="img" alt="" src="upload/image1-20.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>스탑워치</h2>
									<span>아이워치 디자인의 스탑워치</span>
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