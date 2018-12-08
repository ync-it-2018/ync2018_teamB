<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<body>
	<form action="/admin/product_regiPost" method="post">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box">
					<div class="box-header with-border">

						<%-- <h3 class="box-title">Review PAGE ${serverTime }</h3> --%>
						<table class="table table-bordered">
							<tr>
								<th><label>제품명</label></th>
								<th><input type="text" name="PRO_NAME"  placeholder="제품명"></th>
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
									</select></td> </select><label>브랜드</label> <select id='selectbox'>
										<option value="1">INTEL</option>
									</select>
									<button>선택</button>
									</td>
								</div>
							</tr>
							<tr>
								<td><label>가장낮은가격</label></td>
								<td>자동 입력</td>
								<td><label>판매사이트</label></td>
								<td><input type="text" name="PRO_SITE"  placeholder="판매사이트명"></td>
								<td>
									<!-- 사러가기url -->
								</td>
								<td>
									<!-- http://auction.com/... -->
								</td>
							</tr>
							<tr>
								<td><label>제품설명</label></td>
								<td colspan=5><input type="text" name="PRO_EXPLAN" style="width: 90%" placeholder="제품 제원 소개">
									<!-- 인텔(소켓1151v2) / 14nm / 헥사(6)코어 / 쓰레드 6개 / 2.80GHz / 9MB / 64비트 / 65W / 인텔 UHD 630 / 350MHz / 옵테인 -->
								</td>
							</tr>
							<tr>
								<td><label>대표썸네일</label></td>
								<td><button>추가</button></td>
								<td><label>이미지추가</label></td>
								<td colspan=2>
									<button>사진</button>
									<button>사진</button>
									<button>사진</button>
									<button>사진</button>
								</td>
							</tr>
							<tr>
								<td><label>제품url(#1)</label></td>
								<td colspan=5><input type="text" name="PRO_URL" placeholder="url#1"></td>
							</tr>
							<tr>
								<td><label>제품가격(#1)</label></td>
								<td colspan=5><input type="text" name="PRO_PRICE" placeholder="제품 가격#1"></td>
							</tr>
							<tr>
								<td><label>제품url(#2)</label></td>
								<td colspan=5><input type="text" name="PRO_URL2" placeholder="url#2"></td>
							</tr>
							<tr>
								<td><label>제품가격(#2)</label></td>
								<td colspan=5><input type="text" name="PRO_PRICE2" placeholder="제품가격#2"></td>
							</tr>
							<tr>
								<td><label>제품url(#3)</label></td>
								<td colspan=5><input type="text" name="PRO_URL3" placeholder="url#3"></td>
							</tr>
							<tr>
								<td><label>제품가격(#3)</label></td>
								<td colspan=5><input type="text" name="PRO_PRICE3" placeholder="제품가격#3"></td>
							</tr>
						</table>
						<button type="submit">확인</button>
						<button>취소</button>
					</div>
				</div>
			</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
	</form>
</body>
</html>

<!-- /.content -->


<%@include file="include/footer.jsp"%>