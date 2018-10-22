<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop | E-Shopper</title>
    <link href="/resources/front/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/front/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/front/css/prettyPhoto.css" rel="stylesheet">
    <link href="/resources/front/css/price-range.css" rel="stylesheet">
    <link href="/resources/front/css/animate.css" rel="stylesheet">
	<link href="/resources/front/css/main.css" rel="stylesheet">
	<link href="/resources/front/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/front/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/front/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/front/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/front/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->

		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/"><img src="/resources/front/images/home/logo.png" alt="" /></a>
						</div>

					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-user"></i> 사용자정보</a></li>		
								<li><a href="/interest_product"><i class="fa fa-shopping-cart"></i> 관심물품</a></li>
								<li><a href="/login"> 로그인</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/" class="active">홈</a></li>
                                <li><a href="">공지사항</a></li>
								<li class="dropdown"><a href="#">카테고리 펼쳐보기<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">                      
                                         <li><a href="/shop">디지털</a></li>
                                        	<ul>
                                        		<li><a href="/product-details">PC</a></li>
                                        		<li><a href="/product-details">모바일</a></li>
                                        		<li><a href="/product-details">가전제품</a></li>
                                        		<li><a href="/product-details">노트북</a></li>
                                        		<li><a href="/product-details">태블릿</a></li>
                                        	</ul>
										<li><a href="/shop">아웃도어</a></li> 
											<ul>
                                        		<li><a href="/product-details">골프제품/골프웨어</a></li>
                                        		<li><a href="/product-details">등산제품/등산웨어</a></li>
                                        		<li><a href="/product-details">낚시</a></li>
                                        		<li><a href="/product-details">캠핑</a></li>          
                                        	</ul> 
                                        <li><a href="/shop">테스트</a></li> 
											<ul>
                                        		<li><a href="/product-details">테스트</a></li>
                                        		<li><a href="/product-details">테스트</a></li>
                                        		<li><a href="/product-details">테스트</a></li>
                                        		<li><a href="/product-details">테스트</a></li>          
                                        	</ul> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">게시판<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="/blog">자유게시판</a></li>
										<li><a href="/blog-single">건의게시판</a></li>
                                    </ul>
                                </li> 
								<li><a href="/404">상품사용후기</a></li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="검색"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="advertisement">
		<div class="container">
			<img src="/resources/front/images/shop/advertisement.jpg" alt="" />
		</div>
	</section>
	
		<section id="cart_items">
		<!-- interest_product_itmes -->
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image"><h3>나의 관심상품</h3></td>
							<!-- image -->
							<td class="product"></td>
							<td class="description"></td>
							<td class="register"></td>
							<td class="price"></td>
							<td calss="delete"></td>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="interest_product_image"><a href=""><img
									src="/resources/front/images/cart/one.png" alt=""></a></td>

							<td class="interest_product">
								<h4>제품명</h4>

							</td>

							<td class="interest_prdouct_description">
								<h4>제품설명</h4>
								<p>제품부과 설명</p>
							</td>

							<td class="interest_product_register">
								<p class="product_register_date">
									2018-10-17<br>5건
								</p>
							</td>

							<td class="interest_product_price">
								<h4>$58</h4>
							</td>

							<td class="interest_product_delete"><a
								class="interest_product_price_delete" href=""><i
									class="fa fa-times"></i></a></td>
						</tr>




						<tr>
							<td class="interest_product_image"><a href=""><img
									src="/resources/front/images/cart/two.png" alt=""></a></td>

							<td class="interest_product">
								<h4>제품명</h4>

							</td>

							<td class="interest_prdouct_description">
								<h4>제품설명</h4>
								<p>제품부과 설명</p>
							</td>

							<td class="interest_product_register">
								<p class="product_register_date">
									2018-10-17<br>5건
								</p>
							</td>

							<td class="interest_product_price">
								<h4>$58</h4>
							</td>

							<td class="interest_product_delete"><a
								class="interest_product_price_delete" href=""><i
									class="fa fa-times"></i></a></td>
						</tr>


						<tr>
							<td class="interest_product_image"><a href=""><img
									src="/resources/front/images/cart/three.png" alt=""></a></td>

							<td class="interest_product">
								<h4>제품명</h4>

							</td>

							<td class="interest_prdouct_description">
								<h4>제품설명</h4>
								<p>제품부과 설명</p>
							</td>

							<td class="interest_product_register">
								<p class="product_register_date">
									2018-10-17<br>5건
								</p>
							</td>

							<td class="interest_product_price">
								<h4>$58</h4>
							</td>

							<td class="interest_product_delete"><a
								class="interest_product_price_delete" href=""><i
									class="fa fa-times"></i></a></td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!--/#cart_items-->
	
	  
    <script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.prettyPhoto.js"></script>
    <script src="/resources/js/main.js"></script>
</body>
</html>