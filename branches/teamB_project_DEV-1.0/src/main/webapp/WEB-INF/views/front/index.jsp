<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="/resources/front/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/front/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/front/css/prettyPhoto.css" rel="stylesheet">
    <link href="/resources/front/css/price-range.css" rel="stylesheet">
    <link href="/resources/front/css/animate.css" rel="stylesheet">
	<link href="/resources/front/css/main.css" rel="stylesheet">
	<link href="/resources/front/css/responsive.css" rel="stylesheet">
	<link href="/resources/front/css/freeboard.css?after" rel="stylesheet">
	<link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/front/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/front/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/front/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/front/images/ico/apple-touch-icon-57-precomposed.png">
<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>
	
	<!-- 메인페이지입니다. -->
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>가</span>격비교사이트</h1>
									<h2>TEAM-B</h2>
									<p>팀장 : 강세훈 그외 3명 </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="/resources/front/images/home/zzal.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>팀</span> 프로젝트</h1>
									<h2>100% 수제작</h2>
									<p>레알 개망한듯 </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="/resources/front/images/home/girl2.jpg" class="girl img-responsive" alt="" />
									<img src="/resources/front/images/home/pricing.png"  class="pricing" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>하</span>기싫다</h1>
									<h2>너무 귀찮다</h2>
									<p>사실 할줄 모른다</p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="/resources/front/images/home/girl3.jpg" class="girl img-responsive" alt="" />
									<img src="/resources/front/images/home/pricing.png" class="pricing" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">

			<div class="row">
			
				</div>

				<div>
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center" style="width: 100%;">카테고리별 인기제품 TOP 3</h2>
						<div class="PC">
						<h2>디지털</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/LG.jpg" alt=""></a>
											<h2>150만원</h2>
											<p>LG 4문형 냉장고</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/LG_2.jpg" alt=""></a>
											<h2>140만원</h2>
											<p>LG 김치냉장고</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/LG3.jpg" alt=""></a>
											<h2>51만원</h2>
											<p>전기오븐</p>
											
										</div>
								</div>
							</div>
						</div>
						</div>
						<div class="outdoor">
						<h2>아웃도어</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/gazuaaa.gif" alt=""></a>
											<h2>가즈아아아아!!</h2>
											<p>떡상</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/buaa.gif" alt=""></a>
											<h2>좀비 폭탄</h2>
											<p>메탈슬러그</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/hell.gif" alt=""></a>
											<h2>입소2일차</h2>
											<p>집합15분전</p>
											
										</div>
								</div>
							</div>
						</div>
						</div>
						<div class="test">
						<h2>테스트</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/ah.gif" alt=""></a>
											<h2>절레절레</h2>
											<p>안철수</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/giee.jpg" alt=""></a>
											<h2>끼에에엑!</h2>
											<p>빼애애액!</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="/product-details"><img src="/resources/front/images/home/goza.gif" alt=""></a>
											<h2>고자라니!!</h2>
											<p>심영</p>
											
										</div>
								</div>
							</div>
						</div>
					</div>
						

					</div><!--features_items-->
				</div>
			</div>
	</section>
    <script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/price-range.js"></script>
    <script src="/resources/js/jquery.prettyPhoto.js"></script>
    <script src="/resources/js/main.js"></script>
</body>
</html>