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
<!-- 스마트 글쓰기 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<script type="text/javascript" src="/resources/plugins/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/price-range.js"></script>
    <script src="/resources/js/jquery.prettyPhoto.js"></script>
    <script src="/resources/js/main.js"></script>
    
    <!-- console.log는 요소를 HTML과 같은 트리 구조로 출력합니다. -->
    <!-- 자바스크립트에서 로그를 찍어줍니다. -->
<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj); /* formobj의 로그를 찍어줍니다. */
	/* 버튼을 클릭하면 내가 지정한 위치에 이동합니다. */
	$(".btn-warning").on("click",function(){
		self.location = "/front/freeboard";
	});
	$(".btn-primary").on("click",function(){
		formObj.submit();
	});
});
</script>
	<!-- section부분은 페이지에서 몸으로 해당합니다. -->
	<!-- 내용부분에서 주로 form태그로 구성이 되어있습니다. 
		   로그인 화면에서 사용자 이름과 비밀번호를 입력하는 것, 
		   게시판에서 코멘트를 남기는 것입니다. -->
	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
						<form role="form" method="post">
						<table class="freeboard"  width= "100%">
										<div>
											<label for="exampleInputEmail1">글번호</label>
											<input type="text" name='free_board_num' class="form-control" value="${boardVO.free_board_num}" readonly="readonly">
										</div>
										<div>
											<label for="exampleInputEmail1">제목</label>
											<input type="text" name='free_board_title' class="form-control" value="${boardVO.free_board_title}">
										</div>
										<div>
											<label for="exampleInputPassword1">내용</label>
											<textarea name='free_board_cont' class="form-control" rows="3">${boardVO.free_board_cont}</textarea>
										</div>
										<div>
											<label for="exampleInputEmail1">작성자</label>
											<input type="text" name='free_board_writer' class="form-control" value="${boardVO.free_board_writer}">
										</div>
									<!-- /.box-body -->
								
								
								<div>
									<button type="submit" class="btn btn-primary">저장</button>
									<button type="submit" class="btn btn-warning">취소</button>
								</div>
							</table>													
						</form>
					</div>
				</div>

			</div>
		</div>
		<!--/category-tab-->
	</section>
</body>
</html>