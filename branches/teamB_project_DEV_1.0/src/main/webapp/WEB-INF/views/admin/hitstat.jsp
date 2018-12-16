<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!-- 제품 조회수 통계 폼 -->
<%@include file="include/header.jsp" %>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->

					<div class="box">
            <div class="box-header with-border">
            <table border="1">
              	<tr>
              		<td width="100px" align="center">제품조회수</td>
              	</tr>
              	<tr>
              		<td width="100px" align="center">조회기간 선택</td>
              		<td width="400px" align="center"><input type="text"/>~<input type="text"/></td>
              	</tr>
              	<tr height="100px">
              		<td width="100px" align="center">카테고리 선택</td>
              		<td width="400px" align="center">
	              		<table>
	              		<tr>
		              		<td width="150px" align="center"><button>대분류</button></td>
		              		<td width="150px" align="center"><button>중분류</button></td>
		              		<td width="150px" align="center"><button>소분류</button></td>
	              		</tr>
	              		<tr>
	              			<td width="150px" align="center"><select>
	              			<option value="컴퓨터/노트북">컴퓨터/노트북</option></select></td>
	              			<td width="150px" align="center"><select>
	              			<option value="PC 주요 부품">PC 주요 부품</option></select></td>
	              			<td width="150px" align="center">
	              			<select><option value="CPU">CPU</option></select></td>
	               		</tr>
	              		</table>
					</td>
              	</tr>
              	<tr height="40px">
              		<td colspan="2" align="right">
              		<button><a href="/hitstatResult">검색</a></button>&nbsp;&nbsp;&nbsp;
              		<button>취소</button>	&nbsp;&nbsp;&nbsp;
              		</td>
              	</tr>
              </table>
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
 
 