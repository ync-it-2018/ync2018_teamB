<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 자유게시판 수정하는 JSP  -->
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

<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/resources/front/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/resources/front/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/resources/front/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/front/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
	<!-- 헤더부분에는  header-middle, header-bottom이 있습니다. -->
	<!-- header-middle는 사이트로고, 사용자정보, 관심물품, 로그인이 있습니다. -->
	<!-- header-bottom은 홈, 공지사항, 카테고리펼쳐보기, 게시판(자유게시판, 건의게시판), 상품사용후기가 나옵니다.  -->
								
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
								<li><a href="/Notice">공지사항</a></li>
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
								</form>
								
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