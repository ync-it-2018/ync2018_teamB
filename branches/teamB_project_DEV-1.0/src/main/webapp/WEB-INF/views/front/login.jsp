<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Login | E-Shopper</title>
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/front/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/front/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/front/css/price-range.css" rel="stylesheet">
<link href="/resources/front/css/animate.css" rel="stylesheet">
<link href="/resources/front/css/main.css" rel="stylesheet">
<link href="/resources/front/css/responsive.css" rel="stylesheet">
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
</head>

<script>

function formCheck(){
	if(!document.frm.USER_ID.value){
		alert("아이디를 입력하세요");
		document.frm.USER_ID.focus();
		return false;
	}
	if(!document.frm.USER_EMAIL.value){
		alert("you must input email");
		document.frm.USER_EMAIL.focus();
		return false;
	}
	
	if(!document.frm.USER_PW.value){
		alert("you must input password");
		document.frm.USER_PW.focus();
		return false;
	}
}

</script>
<%
if(session.getAttribute("login") == null) {%>
<!-- 해당하는 파일JSP를 불러옵니다. -->
<%@include file="include/header.jsp"%>
<%}else{ %>
<%@include file="include/loginedheader.jsp"%>
<%} %>
	
	<section id="form" >
		<!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form">
						<!--login form-->
						<h2>로그인</h2>
						<!-- action으로 front에 loginPost로 이동합니다. -->
						<form action="/front/loginPost" method="post">
						<div>
						<input type="text" name="USER_ID" placeholder="아이디" /> 
						</div>
						<div><input type="password" name="USER_PW" placeholder="비밀번호" />
						</div>
					
						<button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
						<button type="submit" class="btn btn-primary btn-block btn-flat">아이디/비밀번호 찾기</button>

						</form>
					</div>
					<!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				
				<div class="col-sm-4">
					<div class="signup-form">
						<!--sign up form-->
						<h2>회원가입</h2>
						<!-- 회원가입을 하면 login_new_proc로 이동합니다. -->
						<form action="front/userPost" method="post" name="frm" onsubmit="return formCheck()">
							<input type="text" name="USER_ID" placeholder="아이디" /> 
							<input type="email"  name="USER_EMAIL"  placeholder="E-mail 주소" /> 
							<input type="password" name="USER_PW" placeholder="비밀번호" />
							<input type="submit" class="btn btn-primary btn-block btn-flat" value="회원가입">
						</form>
					</div>
					<!--/sign up form-->
				</div>
				
			</div>
		</div>
	</section>
	<!--/form-->

	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/price-range.js"></script>
	<script src="/resources/js/jquery.scrollUp.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.prettyPhoto.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>