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
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/price-range.js"></script>
<script src="/resources/js/jquery.scrollUp.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.prettyPhoto.js"></script>
<script src="/resources/js/main.js"></script>
<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>


	<!-- section부분은 페이지에서 몸으로 해당합니다. -->
	<!-- 내용부분에서 주로 form태그로 구성이 되어있습니다. 
		   게시판에서 작성한 글을 클릭하면 제목, 내용, 작성자가 나오고, Button을 클릭하면 그에 해당하는 작성, 수정, 삭제가 됩니다. -->
	
	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
					
						<form role="form" method="post">
							<!-- free_board_num정보를 받아와서 hidden으로 숨겨둔후 보낼준비해둠 -->
							<input type='hidden' name='free_board_num' value="${boardVO.free_board_num}">
						</form>
					
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEamil1">Title</label>
								<input type="text" name='free_board_title' class="form-control" value="${boardVO.free_board_title}"
								readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Content</label>
								<input type="text" name='free_board_cont' class="form-control" value="${boardVO.free_board_cont}"
								readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputEamil1">Writer</label>
								<input type="text" name='free_board_writer' class="form-control" value="${boardVO.free_board_writer}"
								readonly="readonly">
							</div>
						</div>
						<!-- /.box-body -->
						<div>
							<c:if test="${not empty login }">
								<c:if test="${login.USER_ID eq  boardVO.user_id}">
								
								<button type="submit"  class="modifyBtn" id="modifyBtn">수정</button>
								<button type="submit"  class="removeBtn" id="removeBtn">삭제</button>
								</c:if>
							</c:if>
						
							<button type="submit"  class="listBtn" id ="goListBtn">목록</button>
						</div>
										
					</div>
				</div>

			</div>
		</div>
		<!--/category-tab-->


	</section>


<script>
/* JQuery의 문법입니다.
console.log는 요소를 HTML과 같은 트리 구조로 출력합니다. */ 

	 $(document).ready(function(){
	 	var formObj = $("form[role='form']");
	 	 /* 자바스크립트에서 로그를 찍어줍니다. */
	 	console.log(formObj); 
	 	$("#modifyBtn").on("click", function(){
	 		formObj.attr("action", "/front/freeboard_modify");
	 		formObj.attr("method", "get");		
	 		formObj.submit();
	 	});
	 	
	    $("#removeBtn").on("click", function(){
	 		formObj.attr("action", "/front/freeboard_remove");
	 		formObj.submit();
	 	});
	 	
	 	$("#goListBtn ").on("click", function(){
	 		formObj.attr("method", "get");
	 		formObj.attr("action", "/front/freeboard");
	 		formObj.submit();
	 	});
	 	
	 });
</script>
	
</body>
</html>