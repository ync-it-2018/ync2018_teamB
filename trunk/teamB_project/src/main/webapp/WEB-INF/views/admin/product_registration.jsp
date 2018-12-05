<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							<th>제품등록</th>
							<th></th>

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
							</select> <select id='selectbox'>
									<option value="1">INTEL</option>
							</select>
							<button>AWM</button>
							</td>
							</div>
						</tr>
						<tr>
							<td>가장낮은가격</td>
							<td>248000</td>
							<td>판매사이트</td>
							<td>건영컴퓨터</td>
							<td>사러가기url</td>
							<td>http://auction.com/...</td>
						</tr>
						<tr>
							<td>제품설명</td>
							<td colspan=5>인텔(소켓1151v2) / 14nm / 헥사(6)코어 / 쓰레드 6개 / 2.80GHz / 9MB / 64비트 / 65W / 인텔 UHD 630 / 350MHz / 옵테인
							</td>
						</tr>
						<tr>
							<td>대표썸네일</td>
							<td><button>추가</button></td>
							<td>이미지추가</td>
							<td colspan=2>
								<button>사진</button>
								<button>사진</button>
								<button>사진</button>
								<button>사진</button>
							</td>
						</tr>
						<tr>
							<td>제품url(#1)</td>
							<td colspan=5>http://auction.com/...</td>
						</tr>
						<tr>
							<td>제품가격(#1)</td>
							<td colspan=5>206320원</td>
						</tr>
						<tr>
							<td>제품url(#2)</td>
							<td colspan=5>http://gmarket.com/..</td>
						</tr>
						<tr>
							<td>제품가격(#2)</td>
							<td colspan=5>204800원</td>
						</tr>
						<tr>
							<td>제품url(#3)</td>
							<td colspan=5>http://gmarket.com/...</td>
						</tr>
						<tr>
							<td>제품가격(#3)</td>
							<td colspan=5>204800원</td>
						</tr>
						
					</table>
					<button>확인</button>
					<button>취소</button>
				</div>
			</div>
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->


<%@include file="include/footer.jsp"%>


