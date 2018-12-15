<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 카테고리 관리 폼 상위 항목 클릭시 하위 항목 출력 -->
<%@include file="include/header.jsp"%>
<link href="/resources/admin/css/multi-select.css" media="screen"
	rel="stylesheet" type="text/css">
<script src="/resources/js/jquery.multi-select.js"
	type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$("select[name=CID1]").change(function() {
		var temp1 = $("select[name=CID2]");
		var temp2 = $("select[name=CID3]");
		var temp3 = $("select[name=CID4]");
		var cid1_val = $(this).val();
		temp1.children().remove();
		temp2.children().remove();
		temp3.children().remove();
		
		
		if(cid1_val == '디지털') {
			temp1.append('<option value="PC">PC</option>');
			temp1.append('<option value="모바일">모바일</option>');
			temp1.append('<option value="가전제품">가전제품</option>');
			temp1.append('<option value="노트북">노트북</option>');

		}
		if(cid1_val == '아웃도어') {
			temp1.append('<option value="골프제품/골프웨어">골프제품/골프웨어</option>');
			temp1.append('<option value="등산제품/등산웨어">등산제품/등산웨어</option>');
			temp1.append('<option value="낚시">낚시</option>');
			temp1.append('<option value="캠핑">캠핑</option>');
		}
		if(cid1_val == '테스트') {
			temp1.append('<option value="테스트1">테스트1</option>');
			temp1.append('<option value="테스트2">테스트2</option>');
		}
	});

	$("select[name=CID2]").change(function() {
		var temp2 = $("select[name=CID3]");	 
		var temp3 = $("select[name=CID4]");	 
		var cid1_val = $("#CID1").val();
		var cid2_val = $(this).val();
		temp2.children().remove();
		temp3.children().remove();
		if(cid1_val == '디지털') {
			if(cid2_val == 'PC') {
				temp2.append('<option value="CPU">CPU</option>');
				temp2.append('<option value="메인보드">메인보드</option>');
				temp2.append('<option value="메모리">메모리</option>');
			}
			if(cid2_val == '모바일') {
				temp2.append('<option value="스마트워치">스마트워치</option>');
				temp2.append('<option value="스마트폰">스마트폰</option>');
			}
			if(cid2_val == '가전제품') {
				temp2.append('<option value="냉장고">냉장고</option>');
				temp2.append('<option value="전자렌지">전자렌지</option>');
			}
			if(cid2_val == '노트북') {
				temp2.append('<option value="게이밍노트북">게이밍노트북</option>');
				temp2.append('<option value="미니북">미니북</option>');
				temp2.append('<option value="울트라북">울트라북</option>');
			}		
			
			
		}
		if(cid1_val == '아웃도어') {
			if(cid2_val == '골프제품/골프웨어') {
				temp2.append('<option value="드라이버">드라이버</option>');
				temp2.append('<option value="골프공">골프공</option>');
			}
			if(cid2_val == '등산제품/등산웨어') {
				temp2.append('<option value="등산복">등산복</option>');
				temp2.append('<option value="등산화">등산화</option>');
			}
			if(cid2_val == '낚시') {
				temp2.append('<option value="낚시대">낚시대</option>');
				temp2.append('<option value="낚시줄">낚시줄</option>');
				temp2.append('<option value="루어">루어</option>');
			}
			if(cid2_val == '캠핑') {
				temp2.append('<option value="텐트">텐트</option>');
				temp2.append('<option value="코펠">코펠</option>');
				temp2.append('<option value="바베큐세트">바베큐세트</option>');
			}
		}
		if(cid1_val == '테스트') {
			if(cid2_val == '테스트1') {
				temp2.append('<option value="이건영">이건영</option>');
				temp2.append('<option value="박지훈">박지훈</option>');
			}
			if(cid2_val == '테스트2') {
				temp2.append('<option value="강세훈">강세훈</option>');
				temp2.append('<option value="이정욱">이정욱</option>');
			}
		}
		
	});
	$("select[name=CID3]").change(function() {
		var temp3 = $("select[name=CID4]");	 
		var cid1_val = $("#CID1").val();
		var cid2_val = $("#CID2").val();
		var cid3_val = $(this).val();
		temp3.children().remove();
		
		if(cid1_val == '디지털') {
			if(cid2_val == 'PC') {
				if(cid3_val == 'CPU') {
					temp3.append('<option value="인텔">인텔</option>');
					temp3.append('<option value="AMD">AMD</option>');
				}
				if(cid3_val == '메인보드') {
					temp3.append('<option value="인텔">인텔</option>');
					temp3.append('<option value="AMD">AMD</option>');
				}
				if(cid3_val == '메모리') {
					temp3.append('<option value="인텔">인텔</option>');
					temp3.append('<option value="AMD">AMD</option>');
				}
			}
			if(cid2_val == '모바일') {
				if(cid3_val == '스마트워치') {
					temp3.append('<option value="애플">애플</option>');
					temp3.append('<option value="삼성">삼성</option>');
				}
				if(cid3_val == '스마트폰') {
					temp3.append('<option value="애플">애플</option>');
					temp3.append('<option value="삼성">삼성</option>');
				}
				
			}
			if(cid2_val == '가전제품') {
				if(cid3_val == '냉장고') {
					temp3.append('<option value="LG">LG</option>');
					temp3.append('<option value="삼성">삼성</option>');
				}
				if(cid3_val == '전자렌지') {
					temp3.append('<option value="LG">LG</option>');
					temp3.append('<option value="삼성">삼성</option>');
				}
				
			}
			if(cid2_val == '노트북') {
				if(cid3_val == '게이밍노트북') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '미니북') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '울트라북') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
			}		
			
			
		}
		if(cid1_val == '아웃도어') {
			if(cid2_val == '골프제품/골프웨어') {
				if(cid3_val == '드라이버') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '골프공') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				
			}
			if(cid2_val == '등산제품/등산웨어') {
				if(cid3_val == '등산복') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '등산화') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				
			}
			if(cid2_val == '낚시') {
				if(cid3_val == '낚시대') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '낚시줄') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '루어') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				
			}if(cid2_val == '캠핑') {
				if(cid3_val == '텐트') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '코펠') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '바베큐세트') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
			}
		}
		if(cid1_val == '테스트') {
			if(cid2_val == '테스트1') {
				if(cid3_val == '이건영') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '박지훈') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
			}
			if(cid2_val == '테스트2') {
				if(cid3_val == '강세훈') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
				if(cid3_val == '이정욱') {
					temp3.append('<option value="회사1">회사1</option>');
					temp3.append('<option value="회사2">회사2</option>');
				}
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
									
									<option value='디지털'>디지털</option>
									<option value='아웃도어'>아웃도어</option>
									<option value='테스트'>테스트</option>
							</select></td>
							<td><select name='CID2' id='CID2' multiple='multiple' style="width: 150px;" size="10">
									
								
							</select></td>
							<td><select name='CID3' id='CID3' multiple='multiple' style="width: 150px;" size="10">
									
									
							</select></td>
							<td><select name='CID4' id='CID4' multiple='multiple' style="width: 150px;" size="10">
									
									
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