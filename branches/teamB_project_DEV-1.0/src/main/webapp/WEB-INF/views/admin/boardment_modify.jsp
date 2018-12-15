<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 자유게시판 수정 폼 -->
<%@include file="include/header.jsp"%>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<table class="table table-bordered">
						<tr>
							<td>글쓰기</td>
							<td>
							<input type="radio" name="chk_info" value="HTML">등록순
							<input type="radio" name="chk_info" value="CSS">작성순</td>
						</tr>
						<tr>
							<td>댓글 기능</td>
							<td>
							<input type="radio" name="chk_info2" value="HTML">사용
							<input type="radio" name="chk_info2" value="CSS">사용안함</td>
						</tr>
						<tr>
							<td>비밀글 기능</td>
							<td>
							<input type="radio" name="chk_info3" value="HTML">사용
							<input type="radio" name="chk_info3" value="CSS">사용안함</td>
						</tr>
						<tr>
							<td>표시여부</td>
							<td>
							<input type="radio" name="chk_info4" value="HTML">표시
							<input type="radio" name="chk_info4" value="CSS">숨김
							</td>
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