<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Product Details | E-Shopper</title>
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/front/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/front/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/front/css/price-range.css" rel="stylesheet">
<link href="/resources/front/css/animate.css" rel="stylesheet">
<link href="/resources/front/css/main.css" rel="stylesheet">
<link href="/resources/front/css/responsive.css" rel="stylesheet">
<link href="/resources/front/css/freeboard-write.css?after" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/resources/front/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/resources/front/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/resources/front/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/front/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->


		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/"><img src="/resources/front/images/home/logo.png"
								alt="" /></a>
						</div>
						<div class="btn-group pull-right"></div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-user"></i> 사용자정보</a></li>
								<li><a href="/cart"><i class="fa fa-shopping-cart"></i>
										장바구니</a></li>
								<li><a href="/login"><i class="fa fa-lock"></i> 로그인</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/" class="active">홈</a></li>
								<li><a href="/Notice">공지사항</a></li>
								<li class="dropdown"><a href="#">카테고리 펼쳐보기<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><h4 style="color: white">
												<strong>디지털</strong>
											</h4></li>

										<ul>
											<li><a href="/shop">PC</a></li>
											<li><a href="/shop">모바일</a></li>
											<li><a href="/shop">가전제품</a></li>
											<li><a href="/shop">노트북</a></li>
											<li><a href="/shop">태블릿</a></li>
										</ul>
										<li><h4 style="color: white">
												<strong>아웃도어</strong>
											</h4></li>
										<ul>
											<li><a href="/shop">골프제품/골프웨어</a></li>
											<li><a href="/shop">등산제품/등산웨어</a></li>
											<li><a href="/shop">낚시</a></li>
											<li><a href="/shop">캠핑</a></li>
										</ul>
										<li><h4 style="color: white">
												<strong>테스트</strong>
											</h4></li>
										<ul>
											<li><a href="/shop">테스트</a></li>
											<li><a href="/shop">테스트</a></li>
											<li><a href="/shop">테스트</a></li>
											<li><a href="/shop">테스트</a></li>
										</ul>
									</ul></li>
								<li class="dropdown"><a href="#">게시판<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="/front/freeboard">자유게시판</a></li>
										<li><a href="/blog-single">건의게시판</a></li>
									</ul></li>
								<li><a href="/review">상품사용후기</a></li>

							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->

	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
						
						
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEamil1">Title</label>
								<input type="text" name='free_board_title' class="form-control" value="${boardView.free_board_title}"
								readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Content</label>
								<input type="text" name='free_board_cont' class="form-control" value="${boardView.free_board_cont}"
								readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputEamil1">Writer</label>
								<input type="text" name='free_board_writer' class="form-control" value="${boardView.free_board_writer}"
								readonly="readonly">
								
							</div>
						</div>
						<!-- /.box-body -->
						<div>
						<form role="form" action="/front/freeboard_modify" method="post">
							<input type='hidden' name='free_board_num' value="${boardView.free_board_num}">
						
							<button type="submit"  id="modifyBtn">수정</button>
							<button type="submit"  id="removeBtn">삭제</button>
							<button type="submit"  id="listBtn">목록</button>
						</form>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!--/category-tab-->


	</section>

	<footer id="footer"><!--Footer-->
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Team-b © 2018-가격비교사이트 Inc. 영남이공대학교.</p>
					<p class="pull-right">
						Designed by <span><a target="_blank"
							href="">이건영</a></span>
					</p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	<script type="text/javascript">
	$(document).ready(function(){
	    
	    var formObj = $("form[role='form']");
	    
	    console.log(formObj);
	    
	    $("#modifyBtn").on("click", function() {
	    	alret("시발");
	       formObj.attr("action", "/front/freeboard_modify");
	       formObj.attr("method", "get");
	       formObj.submit();
	    });
	    
	    $("#removeBtn").on("click", function() {
	       formObj.attr("action", "/front");
	       formObj.submit();
	    });
	    
	    $("#listBtn").on("click", function() {
	       self.location = "/front/freeboard";	
	    });
	    
	 });
</script>
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.prettyPhoto.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>