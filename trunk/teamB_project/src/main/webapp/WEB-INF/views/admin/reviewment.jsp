<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 리뷰 관리 페이지 폼 -->
<%@include file="include/header.jsp"%>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->
<style>
span.star-prototype, span.star-prototype > * {
    height: 16px; 
    background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
    width: 80px;
    display: inline-block;
}
 
span.star-prototype > * {
    background-position: 0 0;
    max-width:80px; 
}
</style>
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-body">

					<table class="table table-bordered">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>이름</th>
							<th>작성일</th>
							<th>평점</th>
							<th>관리</th>
						</tr>

						<tr>
							<td>1</td>
							<td>배틀 그라운드사용후기</td>
							<td>Sweetmelody</td>
							<td>2018-04-18</td>
							<td><span class="star-prototype">4.5</span></td>
							<td><button>
									<a href="/reviewmodify">수정
								</button>
								<br>
								<button>삭제</button></td>
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
<script>
$.fn.generateStars = function() {
    return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
};

// 숫자 평점을 별로 변환하도록 호출하는 함수
$('.star-prototype').generateStars();
</script>

<%@include file="include/footer.jsp"%>


