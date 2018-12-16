<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
	<link href="/resources/front/css/freeboard.css?after" rel="stylesheet">
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
<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>
	

	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
						<form action="#">
							<table class="freeboard">
								<Caption>사용후기게시판</Caption>
								<thead>
									<tr>
										<th class="title">제목</th>
										<th class="writer">글쓴이</th>
										<th class="date">작성 일</th>
										<th class="views">조회수</th>
									</tr>
								</thead>
								<tbody>
								<!-- 반복문입니다. 사용후기를 작성하면 작성한 만큼 제목, 글쓴이, 작성 일, 조회수가 순차적으로 나옵니다. -->
 									<c:forEach items="${review_list}" var="Review_regiVO">
									<tr>
										<!-- DB에서 리뷰테이블을 받아옵니다.  -->
										<td><a href='/front/review_view?REVIEW_NUM=${Review_regiVO.REVIEW_NUM } '>
										<h4>${Review_regiVO.REVIEW_TITLE}</h4></a></td>
										<td><h4>${Review_regiVO.USER_ID}</h4></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${Review_regiVO.REVIEW_DATE}"/></td>
										<td><h4>${Review_regiVO.REVIEW_HITS}</h4></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
					<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">
							<!-- 화면 하단의 페이징 처리입니다. 시작페이지, 끝페이지가 있습니다.   -->
							<c:if test="${pageMaker.prev}">
								<li><a href="review${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="review${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="review${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>

				</div>
							<div class="searchBody">
								<div class="searchPart">
									<select class='searchArea'>
										<option value='title' selected>제목</option>
										<option value='cont-title'>제목+내용</option>
										<option value='cont'>내용</option>
									</select>
								</div>
								<div class="searchPart">
									<input type="text" class="searchKeyword"
										placeholder="검색 입력하세요.">
								</div>
								<div class="searchPart">
									<span class="serachButton">
										<button class="search" type="button">검색</button>
									</span>
									
								</div>
								<div class="searchPart">
									<span class="serachButton">
										<a href="/review_write"><button class="write" type="button" >글쓰기</button></a>
									</span>
									
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
		<!--/category-tab-->


	</section>

	

  
    <script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.prettyPhoto.js"></script>
    <script src="/resources/js/main.js"></script>
</body>
</html>