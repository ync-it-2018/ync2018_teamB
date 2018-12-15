<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.prettyPhoto.js"></script>
	<script src="/resources/js/main.js"></script>
</head>
<!--/head-->
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
							<form role="form" method="post">
								<input type='hidden' name='REVIEW_NUM' value="${review_View.REVIEW_NUM}">
							</form>
							<table class="freeboard">
								<Caption>사용자후기 글 보기</Caption>
								<tbody>
									<tr>
										<th>제목</th>
										<td><h4 align="left">${review_View.REVIEW_TITLE}</h4> </td>
									</tr>
									<tr>
										<th style="vertical-align: center; padding-top: 50px;">내용</th>
										<td style="float: left; width: 1004px;" bgcolor="white">
										<%-- <input type="text"	name="writer" class="form-control" placeholder="${review_View.REVIEW_CONT}" readonly> --%>
										<%-- <textarea name="" style="width: 1004px; name="review_cont" id="review_cont" required="" rows="20" style="width:100%" placeholder="${review_View.REVIEW_CONT}" readonly></textarea>
 --%>									${review_View.REVIEW_CONT}	
									 </td>
									</tr>
									<tr>
										<th>이미지</th>
										<td style="float: left;"><!-- 사용자의 이미지를 보여준다.  -->
												<img src="${review_View.REVIEW_IMAGE}" alt="" />
										</td>
									</tr>
								</tbody>
							</table>
							<div style="margin-left:950px;">
								<button type="submit"  class="modifyBtn" id="modifyBtn">수정</button>
								<button type="submit"  class="removeBtn" id="removeBtn">삭제</button>
								<button type="submit"  class="listBtn" id ="goListBtn">목록</button>
							</div>
							<h3>댓글</h3>
							
							<textarea style="width: 1020px; height: 50px;">테스트</textarea>
							
							<a class="btn btn-default update" style="height: 40px;width: 80px;"href="">의견쓰기</a>
					</div>
				</div>

			</div>
		</div>
	</section>
	
	<script>
/* JQuery의 문법입니다.
console.log는 요소를 HTML과 같은 트리 구조로 출력합니다. */ 

	 $(document).ready(function(){
	 	var formObj = $("form[role='form']");
	 	 /* 자바스크립트에서 로그를 찍어줍니다. */
	 	console.log(formObj); 
	 	$("#modifyBtn").on("click", function(){
/* 	 		alert("수정버튼클릭"); */
	 		formObj.attr("action", "/front/review_modify?REVIEW_NUM="${Review_regiVO.REVIEW_NUM });
	 		formObj.attr("method", "get");		
	 		formObj.submit();
	 	});
	 	
	    $("#removeBtn").on("click", function(){
	 		formObj.attr("action", "/front/review_remove");
	 		formObj.submit();
	 	});
	 	
	 	$("#goListBtn ").on("click", function(){
	 		formObj.attr("method", "get");
	 		formObj.attr("action", "/front/review");
	 		formObj.submit();
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