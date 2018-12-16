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
<!-- 스마트 글쓰기 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<script type="text/javascript" src="/resources/plugins/editor/js/HuskyEZCreator.js" charset="utf-8"></script>


<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/resources/front/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/resources/front/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/resources/front/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/front/images/ico/apple-touch-icon-57-precomposed.png">

<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>

<!-- section부분은 페이지에서 몸으로 해당합니다. -->
<!-- 글을 작성합니다 . -->

	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
						<!-- 글작성부분이고 method는 post입니다. -->
						<form action="/front/boardwritefail" method="post">
						<table class="freeboard"  width= "100%">
								<Caption>자유게시판 글쓰기</Caption>
									<tr>
										<th>제목</th>
										<td><input type="text" name="free_board_title" placeholder="제목" /></td>
									</tr>
									<tr>
										<td colspan=2><textarea name="free_board_cont"  required="" rows="200" style="width:100%"></textarea></td>
									</tr>
									<tr>
										<th>작성자</th><!-- 자동 불러오기 기능 현재 미구현 -->
										<td><input type="text" name="free_board_writer" placeholder="로그인한 id를 적어주세요" /></td>
									</tr>
									<tr>
										<th>아이디</th><!-- 자동 불러오기 기능 현재 미구현 -->
										<td><input type="text" name="user_id" placeholder="로그인한 id를 적어주세요" /></td>
									</tr>
							</table>

							<button type="submit">등록</button>
													
						</form>
					</div>
				</div>

			</div>
		</div>
		<!--/category-tab-->
<script type="text/javascript">

/* 스마트 에디터입니다. */
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "content",
			sSkinURI : "/resources/plugins/editor/SmartEditor2Skin.html",
			fCreator : "createSEditor2"
		});
		function submitContents(elClickedObj) {
			// 에디터의 내용이 textarea에 적용됩니다.
			oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

			try {
				elClickedObj.form.submit();
			} catch (e) {
			}
		}
	</script>

	</section>

	
</body>
</html>