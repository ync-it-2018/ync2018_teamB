<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 리뷰 검색 페이지 폼 -->
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

					<%-- <h3 class="box-title">Review PAGE ${serverTime }</h3> --%>
					<table class="table table-bordered">
						<tr>
							<th>사용후기</th>
							<th></th>

						</tr>
						<tr><td>카테고리 별</td>
							<td><button>대분류</button>
								<button>중분류</button>
								<button>소분류</button></td>
						</tr>
						<tr>
							<td></td>
							<div>
							<td><select id='selectbox'>
									<option value="1">컴퓨터/노트북</option>
							</select> <select id='selectbox'>
									<option value="1">PC주요 부품</option>
							</select> <select id='selectbox'>
									<option value="1">CPU</option>
							</select></td>
							</div>
						</tr>
						<tr>
							<td>검색어 별</td>
							<td><div class="input-group">
									<input type="text" name="q" class="form-control"
										placeholder="Search..." /> <span class="input-group-btn">
										<button type='submit' name='search' id='search-btn'
											class="btn btn-flat">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div></td>

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


