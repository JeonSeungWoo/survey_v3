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
					<li><a href="javascript:(function()%7BwordsChunk%20%3D%20document.getElementsByTagName('body')%5B0%5D.textContent.replace(%2F%5Cs%7B2%2C%7D%2Fg%2C%20'').replace(%2F%5Cn%2Fg%2C%20'%20').split('%20')%3BwordSortTable%20%3D%20%7B%7D%3Bfor(i%20%3D%200%3B%20i%20%3C%20wordsChunk.length%3B%20i%2B%2B)%7Bvar%20current%20%3D%20wordsChunk%5Bi%5D.toLowerCase()%3BwordSortTable%5Bcurrent%5D%20%3D%20wordSortTable%5Bcurrent%5D%20%3D%3D%20undefined%20%3F%201%20%3A%20wordSortTable%5Bcurrent%5D%2B1%3B%7DwordSort%20%3D%20%5B%5D%3Bfor(var%20name%20in%20wordSortTable)%7Bif(name.length%20%3D%3D%201%20%26%26%20name.match(%2F%5CW%2Fg))continue%3BwordSort.push(%5Bname%2C%20wordSortTable%5Bname%5D%5D)%3B%7DwordSort.sort(function(a%2C%20b)%20%7Breturn%20b%5B1%5D%20-%20a%5B1%5D%7D)%3BwordSort%20%3D%20wordSort.slice(0%2C%2040)%3Bstr%20%3D%20'WordCounter.js%20(by%20%EC%84%9C%ED%88%B0%20%EC%98%81%EC%96%B4%EC%9D%98%20%EC%8B%9C%EB%8C%80)%5Cn'%3Bfor(var%20i%20%3D%200%3B%20i%20%3C%20wordSort.length%3B%20i%2B%2B)%7Bstr%20%2B%3D%20wordSort%5Bi%5D%5B1%5D%20%2B%22%2C%20%22%2B%20wordSort%5Bi%5D%5B0%5D%20%2B%20%22%5Cn%22%3B%7Dalert(str)%7D)()"><span>텍스트마이닝</span></a></li>
					
					
					
					
					<!-- <li class="drop"><a href="#"><span>내 페이지</span></a>
						<ul class="drop-down">
							<li><a href="#"><span>내가 참여한 설문조사</span></a></li>
							<li class="drop"><a href="#"><span>하하하</span></a>
								<ul class="drop-down">
									<li><a href="#"><span>Level 3</span></a></li>
									
								</ul>
							</li>
							<li><a href="#"><span>내가 등록한 설문조사</span></a></li>
						</ul>
					</li> -->
					<li><a href="/statistics/statistics"><span>통계</span></a></li>
				</ul>				
			</div>

			<div class="filter-box">
				<h3>필터<i class="fa fa-th-large"></i></h3>
				<ul class="filter">
					<li><a href="#" class="active" data-filter="*">모든 사이트</a></li>
					<li><a href="#" data-filter=".web-design">개발에 도움</a></li>
					<li><a href="#" data-filter=".photography">취업 정보</a></li>
					<li><a href="#" data-filter=".illustration">기업 정보</a></li>
					<li><a href="#" data-filter=".nature">데이터 수집</a></li>
					<li><a href="#" data-filter=".logo">실습 데이터</a></li>
				</ul>
			</div>


			
	</div>
	<!-- End Container -->
			
		</header>
		<!-- End Header -->

		<!-- content 
			================================================== -->
		<div id="content">
			<div class="inner-content">
				<div class="portfolio-page">
					<div class="portfolio-box">

						<div class="project-post web-design">
							<img class="img" alt="" src="upload/image1-1.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>w3school</h2>
									<span>web 학습 사이트</span>
									<div><a href="https://www.w3schools.com/"><i class="fa fa-arrow-right"></i></a></div>
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

						<div class="project-post nature">
							<img class="img" alt="" src="upload/image1-3.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>통계청</h2>
									<span>대한민국 통계 자료</span>
									<div><a href="http://kostat.go.kr"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img class="img" alt="" src="upload/image1-4.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>잡플래닛</h2>
									<span>구직활동을 위한 사이트</span>
									<div><a href="https://www.jobplanet.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design">
							<img class="img" alt="" src="upload/image1-5.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>깃허브</h2>
									<span>분산 버전 관리 프로젝트 툴</span>
									<div><a href="https://github.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design">
							<img class="img" alt="" src="upload/image1-6.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>trello</h2>
									<span>협업 스케쥴링 도구</span>
									<div><a href="http://trello.com"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post web-design">
							<img class="img" alt="" src="upload/image1-7.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>stackoverflow</h2>
									<span>프로그래밍 Q&A</span>
									<div><a href="http://stackoverflow.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>
						
						
						

						<div class="project-post illustration">
							<img class="img" alt="" src="upload/image1-8.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>크레딧잡</h2>
									<span>연봉정보, 기업정보 사이트</span>
									<div><a href="https://kreditjob.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img class="img" alt="" src="upload/image1-9.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>사람인</h2>
									<span>구인구직 사이트</span>
									<div><a href="https://www.saramin.co.kr/‎/‎"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post illustration">
							<img class="img" alt="" src="upload/image1-10.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>다트</h2>
									<span>전자공시시스템 기업 정보 사이트</span>
									<div><a href="https://dart.fss.or.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post illustration">
							<img class="img" alt="" src="upload/image1-11.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>한국거래소</h2>
									<span>한국거래소 기업 정보 사이트</span>
									<div><a href="https://www.krx.co.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature">
							<img class="img" alt="" src="upload/image1-12.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>정부데이터 포털</h2>
									<span>정부 데이터 포털 사이트</span>
									<div><a href="https://www.open.go.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature">
							<img class="img" alt="" src="upload/image1-13.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>RISS(한국교육학술정보원)</h2>
									<span>정부 학술 논문 사이트</span>
									<div><a href="http://riss.kr/index.do"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post illustration">
							<img class="img" alt="" src="upload/image1-14.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>finance.yahoo</h2>
									<span>야후금융 국외 기업 정보 사이트</span>
									<div><a href="http://finance.yahoo.com/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post photography">
							<img class="img" alt="" src="upload/image1-15.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>워크넷</h2>
									<span>대한민국 취업정보 사이트</span>
									<div><a href="https://www.work.go.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post nature">
							<img class="img" alt="" src="upload/image1-16.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>공공데이터포털</h2>
									<span>정부 공공데이터 포털 사이트</span>
									<div><a href="https://www.data.go.kr/"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo">
							<img class="img" alt="" src="upload/image1-17.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>로또</h2>
									<span>로또 당첨번호 추출기</span>
									<div><a href="/menu/lotto"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo">
							<img class="img" alt="" src="upload/image1-18.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>퀴즈쇼</h2>
									<span>5개의 재미있는 객관식 퀴즈</span>
									<div><a href="/menu/Quiz"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo">
							<img class="img" alt="" src="upload/image1-19.JPG">
							<div class="hover-box">
								<div class="project-title">
									<h2>우주여행 갤러리</h2>
									<span>갤러리를 통해 우주여행을 해봅시다</span>
									<div><a href="/menu/image"><i class="fa fa-arrow-right"></i></a></div>
								</div>
							</div>
						</div>

						<div class="project-post logo">
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