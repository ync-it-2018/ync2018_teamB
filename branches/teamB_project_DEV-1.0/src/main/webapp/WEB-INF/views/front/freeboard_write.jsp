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
</head>
<!--/head-->

<!-- 헤더부분에는  header-middle, header-bottom이 있습니다. -->
<!-- header-middle는 사이트로고, 사용자정보, 관심물품, 로그인이 있습니다. -->
<!-- header-bottom은 홈, 공지사항, 카테고리펼쳐보기, 게시판(자유게시판, 건의게시판), 상품사용후기가 나옵니다.  -->

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
										<td colspan=2><textarea name="free_board_cont" id="content" required="" rows="200" style="width:100%"></textarea></td>
									</tr>
									<tr>
										<th>작성자</th>
										<td><input type="text" name="free_board_writer" placeholder="작성자" /></td>
									</tr>
									<tr>
										<th>아이디</th>
										<td><input type="text" name="user_id" placeholder="admin" /></td>
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

	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.prettyPhoto.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>