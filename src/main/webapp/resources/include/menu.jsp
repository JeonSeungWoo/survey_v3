<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>

<html lang="en" class="no-js">

<head>
	<title>SurveyPatient</title>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" type="text/css" href="/css/bootstrap.css" media="screen">	
	<link rel="stylesheet" type="text/css" href="/css/magnific-popup.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/css/font-awesome.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/css/flexslider.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/css/responsive.css" media="screen">
	<link rel="stylesheet" href="http://icono-49d6.kxcdn.com/icono.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
	
</head>
<body>

	<!-- Container -->
	<div id="container">
		<!-- Header
		    ================================================== -->
		<header>
			<div class="logo-box">
				<a class="logo" href="/"><img alt="" src="/images/patient.png" style="width: 58.7%;
height:58.7%;"></a>
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
				
				
					<li><a href="/surveyMain/listPage?page=1"><span>설문조사 리스트</span></a></li>
					
					
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

			<!-- <div class="filter-box">
				<h3>Filter<i class="fa fa-th-large"></i></h3>
				<ul class="filter">
					<li><a href="#" class="active" data-filter="*">All Works</a></li>
					<li><a href="#" data-filter=".web-design">Web Design</a></li>
					<li><a href="#" data-filter=".photography">Photography</a></li>
					<li><a href="#" data-filter=".illustration">Illustration</a></li>
					<li><a href="#" data-filter=".nature">Nature</a></li>
					<li><a href="#" data-filter=".logo">Logo</a></li>
				</ul>
			</div> -->

<!-- 			<div class="social-box">
				<ul class="social-icons">
					<li><a href="#" class="facebook" ><i class="fa fa-facebook"></i></a></li>
					<li><a href="#" class="twitter" ><i class="fa fa-twitter"></i></a></li>
					<li><a href="#" class="google" ><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#" class="linkedin" ><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#" class="pinterest" ><i class="fa fa-pinterest"></i></a></li>
					<li><a href="#" class="youtube" ><i class="fa fa-youtube"></i></a></li>
					<li><a href="#" class="github" ><i class="fa fa-github"></i></a></li>
				</ul>
			</div> -->
			
		</header>
	
		<!-- End Header -->
	</div>
	
	<div class="preloader">
		<img alt="" src="/images/preloader.gif">
	</div>
	
	<div id='content' style="background-color: white;">
		<div class='inner-content'>	
	



