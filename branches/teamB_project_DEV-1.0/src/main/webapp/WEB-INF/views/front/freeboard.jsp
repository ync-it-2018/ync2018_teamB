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
<!-- section부분은 페이지에서 몸으로 해당합니다. -->
	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
						<form action="#">
							<table class="freeboard">
								<Caption>자유게시판</Caption>
								<thead>
									<tr>
										<th class="bno">글번호</th>
										<th class="title">제목</th>
										<th class="writer">글쓴이</th>
										<th class="date">작성 일</th>
										<th class="views">조회수</th>
									</tr>
								</thead>
								
								<tbody>
								<!-- 반복으로 돌려 글을 작성한 만큼 나타납니다. -->
									<c:forEach items="${list}" var="BoardVO">
									<tr>
										<td>${BoardVO.free_board_num}</td><!-- 글 번호입니다.  -->
										<td><a href='/front/freeboard_view?free_board_num=${BoardVO.free_board_num }'>${BoardVO.free_board_title }</a>
										</td>
										<td>${BoardVO.free_board_writer}</td> <!-- 작성자입니다.  -->
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${BoardVO.free_board_date}"/></td> <!-- 글을 작성하면 날짜가 나타납니다. -->
										<td><span class="badge bg-red">${BoardVO.free_board_hits }</span> <!-- 조회수입니다. -->
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="pageMove"> ◀   ◀◀     1 2 3 4 5    ▶▶   ▶</div>
							
							<!-- 검색할 수 있게 합니다. -->
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
										<a href="/freeboard_write"><button type="button">글쓰기</button></a>
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