<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>

<link href="/resources/adminMain/css/main.css?after" rel="stylesheet">



<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->


	<section class="content">
	<div ><!-- class="row" -->
		<!-- left column -->
		<div ><!-- class="col-md-12" -->
			<!-- general form elements -->

			<div class="box">
				<div class="box-body">
					<table border="1" >
						<tr>
							<td align="center" width="100px" height="50px">제목</td>
							<td align="center" width="400px" height="50px">I5 8세대 8400 사용후기</td>
							
						</tr>

						<tr>
							<td align="center" width="100px" height="50px">평점</td>
							<td align="center" width="400px" height="50px">★★★★☆</td>
							
						</tr>
						<tr>
							<td align="center" width="100px" height="400px">내용</td>
							<td align="center" width="400px" height="400px">내용테스트1</td>
							
						</tr>
						<tr align="right" border="0">
							<td colspan="2"><button>
							<a href="/review">변경</button>
							<button>취소</button></td>
						</tr>

					</table>
					
				</div>
			</div>
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->


<%@include file="include/footer.jsp"%>


