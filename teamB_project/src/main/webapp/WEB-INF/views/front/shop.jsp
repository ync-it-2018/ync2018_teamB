<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
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

	
</head>
<body>
	<section id="cart_items">
		<!-- interest_product_itmes -->
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image" style="width:200px">사진</td>
							<td class="product">제품명</td>
							<td class="description">제품설명</td>
							<td class="register">제품 등록일자 <br>상품 사용후기 건수</td>
							<td class="price">가격</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${product_list}" var="Product_regiVO">
						<tr>
							<td class="interest_product_image">
							
							<img  src="${Product_regiVO.PRO_MAIN_IMAGE}" style="width:130px; height:130px" alt=""></td>

							<td class="interest_product">
								<a href='/front/product_details?PRO_NUM=${Product_regiVO.PRO_NUM }'>
								<h4>${Product_regiVO.PRO_NAME}</h4></a></td>


							<td class="interest_prdouct_description">

								<h4>${Product_regiVO.PRO_EXPLAN}</h4>
								<p>${Product_regiVO.PRO_TAG}</p></td>

							<td class="interest_product_register">

									<fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${Product_regiVO.PRO_DATE}"/>

									<p>5건
								</p></td>

							<td class="interest_product_price">

								<h4 class="number">${Product_regiVO.PRO_PRICE}</h4>
							</td>
												
						</tr>
					</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!--/#cart_items-->


		<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a href="shop${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="shop${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="shop${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>


	

</body>
</html>