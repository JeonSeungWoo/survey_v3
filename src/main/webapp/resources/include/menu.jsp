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
				
				
					<li><a href="/surveyMain/listPage?page=1"><span>설문조사 리스트</span></a></li>
					
					
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
	
	<div id='content'>
		<div class='inner-content'>	
	



