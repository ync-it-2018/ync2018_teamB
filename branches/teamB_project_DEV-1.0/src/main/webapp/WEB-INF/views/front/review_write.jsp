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


<body>
	<header id="header">
		<!--header-->


		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/"><img src="/resources/front/images/home/logo.png"
								alt="" /></a>
						</div>
						<div class="btn-group pull-right"></div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-user"></i> 사용자정보</a></li>
								<li><a href="/cart"><i class="fa fa-shopping-cart"></i>
										장바구니</a></li>
								<li><a href="/login"><i class="fa fa-lock"></i> 로그인</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/" class="active">홈</a></li>
								<li><a href="">공지사항</a></li>
								<li class="dropdown"><a href="#">카테고리 펼쳐보기<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><h4 style="color: white">
												<strong>디지털</strong>
											</h4></li>

										<ul>
											<li><a href="/shop">PC</a></li>
											<li><a href="/shop">모바일</a></li>
											<li><a href="/shop">가전제품</a></li>
											<li><a href="/shop">노트북</a></li>
											<li><a href="/shop">태블릿</a></li>
										</ul>
										<li><h4 style="color: white">
												<strong>아웃도어</strong>
											</h4></li>
										<ul>
											<li><a href="/shop">골프제품/골프웨어</a></li>
											<li><a href="/shop">등산제품/등산웨어</a></li>
											<li><a href="/shop">낚시</a></li>
											<li><a href="/shop">캠핑</a></li>
										</ul>
										<li><h4 style="color: white">
												<strong>테스트</strong>
											</h4></li>
										<ul>
											<li><a href="/shop">테스트</a></li>
											<li><a href="/shop">테스트</a></li>
											<li><a href="/shop">테스트</a></li>
											<li><a href="/shop">테스트</a></li>
										</ul>
									</ul></li>
								<li class="dropdown"><a href="#">게시판<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="/front/freeboard">자유게시판</a></li>
										<li><a href="/blog-single">건의게시판</a></li>
									</ul></li>
								<li><a href="/review">상품사용후기</a></li>

							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->
	
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