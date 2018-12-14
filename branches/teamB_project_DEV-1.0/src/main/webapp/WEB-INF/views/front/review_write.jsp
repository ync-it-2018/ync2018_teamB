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
<link href="/resources/front/css/freeboard-write.css?after"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/admin/css/star-rating.css"
	media="all" rel="stylesheet" type="text/css" />
<link href="/resources/adminMain/css/main.css?after" rel="stylesheet">	
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/resources/js/star-rating.js" type="text/javascript"></script>

<script type="text/javascript" src="/resources/plugins/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.prettyPhoto.js"></script>
	<script src="/resources/js/main.js"></script>
</head>
<!--/head-->
<script type="text/javascript">
	$(function(){
	    //전역변수
	    var obj = [];               
	    //스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "contents",
	        sSkinURI: "/resources/plugins/editor/SmartEditor2Skin.html", 
	        htParams : {
	            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseToolbar : true,             
	            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseVerticalResizer : true,     
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseModeChanger : true, 
	        }
	    });
	    //전송버튼
	    $("#savebutton").click(function(){
	        //id가 smarteditor인 textarea에 에디터에서 대입
	        obj.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
	        //폼 submit
	        $("#frm").submit();
	    })
	})
	</script>
<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>
	
	
	<form  method="post" id="frm" ><!--role="form" method="post" id="frm"  -->
	<section>
		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
							<table class="freeboard">
								<Caption>사용후기 글쓰기</Caption>
								<tbody>
									<tr>
										<th>제목</th>
										<td>
										<input type="text" name="REVIEW_TITLE" id="REVIEW_TITLE" style="width: 1004px; height: 30px;" placeholder="제목을 입력 하세요.">
											</td>
									</tr>
									<tr>
										<th style="vertical-align:center; ">내용</th>
										<td bgcolor="white">
										    <textarea name="contents" id="contents" rows="10" cols="100" style="width:766px; height:412px;"></textarea>
										<!-- <textarea name="REVIEW_CONT" id="REVIEW_CONT" style="width: 1004px;  required="" rows="20" style="width:100%" placeholder="제목을 입력 하세요." ></textarea> -->
										</td>
									</tr>
								</tbody>
							</table>	
<!-- 							<input type="Text" style="width: 100%;" rows ="20" /> -->
						
							<div style="float:left; width:175px; height:100px; margin-left: 10px;margin-top: 10px; ">
							<label> 평점 </label></div>						
							<div style="float:left; width:300px; height:100px; margin-top: 10px;">
							<input name="REVIEW_GRADE" id="input-21e" value="0" type="number" class="rating" min=0 max=5 step=0.5 data-size="sm" ></div>
							<div style="float:right; display:inline-block; width:600px; height:100px; ">
							<%-- <input type='hidden' name='REVIEW_CONT' value="${review_View.REVIEW_NUM}"> --%>
							<!-- <input type="button" id="savebutton" value="서버전송" /> -->
							<button id="savebutton" >글 쓰기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- action : 에디터에 입력한 html 코드를 전달받을 Controller페이지 URL -->



		<!--/category-tab-->
	</section>
	</form>
	<script>
	$('#input-21e').rating('update', {disabled: true, showClear: false, showCaption: false});
	 
	// method chaining 
	var ratingValue = $('#input-21e').rating('update', {
	    disabled: true, 
	    showClear: false, 
	    showCaption: false
	}).val();
	</script>

</body>
</html>