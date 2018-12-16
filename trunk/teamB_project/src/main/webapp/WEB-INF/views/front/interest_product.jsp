<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | E-Shopper</title>
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
<!-- <link rel="shortcut icon" href="images/ico/favicon.ico"> -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/resources/front/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/resources/front/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/resources/front/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/front/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>
	
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
							<td class="interest_product_image"><a href="/product-details"><img
									src="/resources/front/images/cart/one.png" alt=""></a></td>

							<td class="interest_product"><a href="/product-details">
								<h4>제품명</h4>
							</a>
							</td>

							<td class="interest_prdouct_description"><a href="/product-details">
								<h4>제품설명</h4>
								<p>제품부과 설명</p>
								</a>
							</td>

							<td class="interest_product_register"><a href="/product-details">
								<p class="product_register_date">
									2018-10-17<br>5건
								</p></a>
							</td>

							<td class="interest_product_price"><a href="/product-details">
								<h4>$58</h4>
								</a>
							</td>

							<td class="interest_product_delete"><a
								class="interest_product_price_delete" href="/product-details"><i class="fa fa-times"></i></a></td>
						</tr>
						<tr>
							<td class="interest_product_image"><a href="/product-details"><img
									src="/resources/front/images/cart/two.png" alt=""></a></td>

							<td class="interest_product"><a href="/product-details">
								<h4>제품명</h4>
							</a>
							</td>

							<td class="interest_prdouct_description"><a href="/product-details">
								<h4>제품설명</h4>
								<p>제품부과 설명</p>
								</a>
							</td>

							<td class="interest_product_register"><a href="/product-details">
								<p class="product_register_date">
									2018-10-17<br>5건
								</p></a>
							</td>

							<td class="interest_product_price"><a href="/product-details">
								<h4>$58</h4>
								</a>
							</td>

							<td class="interest_product_delete"><a
								class="interest_product_price_delete" href="/product-details"><i class="fa fa-times"></i></a></td>
						</tr>
												<tr>
							<td class="interest_product_image"><a href="/product-details"><img
									src="/resources/front/images/cart/three.png" alt=""></a></td>

							<td class="interest_product"><a href="/product-details">
								<h4>제품명</h4>
							</a>
							</td>

							<td class="interest_prdouct_description"><a href="/product-details">
								<h4>제품설명</h4>
								<p>제품부과 설명</p>
								</a>
							</td>

							<td class="interest_product_register"><a href="/product-details">
								<p class="product_register_date">
									2018-10-17<br>5건
								</p></a>
							</td>

							<td class="interest_product_price"><a href="/product-details">
								<h4>$58</h4>
								</a>
							</td>

							<td class="interest_product_delete"><a
								class="interest_product_price_delete" href="/product-details"><i class="fa fa-times"></i></a></td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</section>
	

</body>
</html>