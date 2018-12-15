<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 자유게시판 관리 폼 -->
<%@include file="include/header.jsp"%>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->
<head>
</head>
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-body">

					<table class="table table-bordered">
						<tr>
							<th>게시판</th>
							<th>게시판ID</th>
							<th>권한(쓰기/읽기)</th>
							<th>새글/전체</th>
							<th>게시판 관리</th>
							<th>표시여부</th>
						</tr>

						<tr>
							<td><a>공지사항</a></td>
							<td>1</td>
							<td>관리자/회원</td>
							<td>1/2</td>
							<td><a href="/boardment_modify" data-role="button" data-icon="gear" data-iconpos="notext">설정</a>
							    <a href="index.html" data-role="button" data-icon="delete" data-iconpos="notext">삭제</a></td>
							<td>표시</td>
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


