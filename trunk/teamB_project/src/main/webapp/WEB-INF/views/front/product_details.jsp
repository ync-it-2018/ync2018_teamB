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
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>
	<section>
		<div class="container">
			<div class="row">
				
				<div>
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<form role="form" method="post">
								<input type='hidden' name='PRO_NUM' value="${productDetails.PRO_NUM}">
							</form>
							<div class="view-product">
								<img src="${productDetails.PRO_MAIN_IMAGE}" alt="" />
								<h3>ZOOM</h3>
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href=""><img src="/resources/front/images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="/resources/front/images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="/resources/front/images/product-details/similar3.jpg" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="/resources/front/images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="/resources/front/images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="/resources/front/images/product-details/similar3.jpg" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="/resources/front/images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="/resources/front/images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="/resources/front/images/product-details/similar3.jpg" alt=""></a>
										</div>
										
									</div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="/resources/front/images/product-details/new.jpg" class="newarrival" alt="" />
								<h2>${productDetails.PRO_NAME}</h2>
								<p>Web SITE: ${productDetails.PRO_SITE}</p>
								<img src="/resources/front/images/product-details/rating.png" alt="" />
								<span>
									<span>5000원</span>
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										관심물품에 추가
									</button>
								</span>
								
<!-- 								<p><b>Condition:</b> 새거(?)</p>
								<p><b>Brand:</b> 삼성</p> -->
								
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#details" data-toggle="tab">상세내용</a></li>
								<li><a href="#reviews" data-toggle="tab">리뷰</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="details" >
								${productDetails.PRO_EXPLAN}			
							</div>
							
							
							
							<div class="tab-pane fade" id="reviews" >
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
									</ul>
															
									<form action="#">
										<span>
											<input type="text" placeholder="이름"/>
											<input type="email" placeholder="이메일"/>
										</span>
										<textarea name="" placeholder="내용"></textarea>
										<b>Rating: </b> <img src="/resources/front/images/product-details/rating.png" alt="" />
										<button type="button" class="btn btn-default pull-right">
											Submit
										</button>
									</form>
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
					
					
				</div>
			</div>
		</div>
	</section>
	
    <script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.prettyPhoto.js"></script>
    <script src="/resources/js/main.js"></script>
</body>
</html>