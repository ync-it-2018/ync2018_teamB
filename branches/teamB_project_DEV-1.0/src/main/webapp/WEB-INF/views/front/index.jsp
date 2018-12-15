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
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>가</span>격비교사이트</h1>
									<h2>TEAM-B</h2>
									<p>팀장 : 강세훈</p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="/resources/front/images/home/girl1.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>팀</span> 프로젝트</h1>
									<h2>팀명 TEAM_B</h2>
									<p>조원 : 박지훈, 이건영, 이정욱 </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="/resources/front/images/home/girl2.jpg" class="girl img-responsive" alt="" />
									<img src="/resources/front/images/home/pricing.png"  class="pricing" alt="" />
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
						<h2 class="title text-center" style="width: 100%;"> 높은 조회수 제품 TOP 3</h2>
						<div class="PC">
						<h2>디지털</h2>
						<c:forEach items="${top_list}" var="Product_regiVO">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href='/front/product_details?PRO_NUM=${Product_regiVO.PRO_NUM }'><img src="${Product_regiVO.PRO_MAIN_IMAGE}" style="width:200px; height:200px" alt=""></a>
											<h2>${Product_regiVO.PRO_PRICE}</h2>
											<p>${Product_regiVO.PRO_NAME}</p>
											
										</div>
								</div>
							</div>
						</div>
						</c:forEach>

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