<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>
<link href="/resources/admin/css/multi-select.css" media="screen"
	rel="stylesheet" type="text/css">
<script src="/resources/js/jquery.multi-select.js"
	type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$("select[name=CID1]").change(function() {
		var temp1 = $("select[name=CID2]");
		var cid1_val = $(this).val();
		temp1.children().remove();
		temp1.append('<option value="">카테고리2 선택</option>');
		
		if(cid1_val == 'P') {
			temp1.append('<option value="11">일본</option>');
			temp1.append('<option value="12">중국</option>');

		}
		if(cid1_val == 'H') {
			temp1.append('<option value="11">인도네시아</option>');
			temp1.append('<option value="12">필리핀</option>');
		}
	});

	$("select[name=CID2]").change(function() {
		var temp2 = $("select[name=CID3]");	 
		var cid1_val = $("#CID1").val();
		var cid2_val = $(this).val();
		temp2.children().remove();
		temp2.append('<option value="">카테고리3 선택</option>');

		if(cid1_val == 'P') {
			if(cid2_val == '11') {
				temp2.append('<option value="10">동경(시즈오카,하코네,요코하마)</option>');
				temp2.append('<option value="11">큐슈(후쿠오카,벳부,가고시마,오이타,나가사키,구마모토,미야자키)</option>');
				temp2.append('<option value="12">북해도(삿포로,하코다테,아사히가와)</option>');
			}
			if(cid2_val == '12') {
				temp2.append('<option value="10">만리장성/백석산/태원/면산</option>');
				temp2.append('<option value="11">항주/주가각/소주/서당</option>');
				temp2.append('<option value="12">원가계/천자산/천문산</option>');
			}			
		}
		if(cid1_val == 'H') {
			if(cid2_val == '11') {
				temp2.append('<option value="11">발리</option>');
				temp2.append('<option value="12">보라카이</option>');
			}
			if(cid2_val == '12') {
				temp2.append('<option value="11">세부</option>');
				temp2.append('<option value="12">팔라완</option>');
			}
		}
		
	});

});
</script>

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
							<td><button>대분류</button></td>
							<td><button>중분류</button></td>
							<td><button>소분류</button></td>
							<td><button>세분류</button></td>
						</tr>
						<tr>
							<td><select name='CID1' id='CID1' multiple='multiple' style="width: 150px;" size="10">
									<option value="">카테고리1</option>
									<option value='P'>PC주요부품</option>
									<option value='H'>CPU</option>
									<option value='elem_4'>코어</option>
							</select></td>
							<td><select name='CID2' id='CID2' multiple='multiple' style="width: 150px;" size="10">
									<option value="">카테고리2</option>
									<option value='elem_2'>AMD</option>
									<option value='elem_3'>elem 3</option>
									<option value='elem_4'>elem 4</option>
							</select></td>
							<td><select name='CID3' id='CID3' multiple='multiple' style="width: 150px;" size="10">
									<option value="">카테고리3</option>
									<option value='elem_2'>elem 2</option>
									<option value='elem_3'>elem 3</option>
									<option value='elem_4'>elem 4</option>
							</select></td>
							<td><select name='CID4' id='CID4' multiple='multiple' style="width: 150px;" size="10">
									<option value="">카테고리4</option>
									<option value='elem_2'>elem 2</option>
									<option value='elem_3'>elem 3</option>
									<option value='elem_4'>elem 4</option>
							</select></td>
							<!-- <td>컴퓨터/노트북</td>
							<td>PC주요부품</td>
							<td>CPU</td>
							<td>코어</td> -->
						</tr>
						<tr>
							<td><input type="text" name="CID1_input" placeholder="대분류 입력" /></td>
							<td><input type="text" name="CID1_input" placeholder="중분류 입력" /></td>
							<td><input type="text" name="CID1_input" placeholder="소분류 입력" /></td>
							<td><input type="text" name="CID1_input" placeholder="세분류 입력" /></td>
							<!-- 							<td>메인보드</td>
							<td>하드코어</td> -->
						</tr>
						<tr>
							<td></td>
							<td></td>
							<!-- 							<td>메모리</td>
							<td>입력</td> -->
						</tr>
						<tr>
							<td><button>추가</button></td>
							<td><button>추가</button></td>
							<td><button>추가</button></td>
							<td><button>추가</button></td>						</tr>
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