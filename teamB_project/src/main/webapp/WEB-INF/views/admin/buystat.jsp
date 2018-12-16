<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!-- 사러가기 통계 폼 -->
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
            <button>년도 별</button>&nbsp;<button>월 별</button>&nbsp;<button>일 별</button>
            <br>
              <table border="1">
              	<tr bgcolor="skyblue">
              		<td width="75px" align="center">순위</td>
              		<td width="75px" align="center">카테고리</td>
              		<td width="75px" align="center">이미지</td>
              		<td width="100px" align="center">제품명</td>
              		<td width="75px" align="center">사이트명</td>
              		<td width="75px" align="center">연결횟수</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">1</td>
              		<td width="75px" align="center">모바일</td>
              		<td width="75px" align="center">IMG1</td>
              		<td width="100px" align="center">갤럭시S9</td>
              		<td width="75px" align="center">건영쓰폰</td>
              		<td width="75px" align="center">1423</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">2</td>
              		<td width="75px" align="center">모바일</td>
              		<td width="75px" align="center">IMG2</td>
              		<td width="75px" align="center">아이폰8</td>
              		<td width="75px" align="center">다나와폰</td>
              		<td width="75px" align="center">1123</td>
              	</tr>
              </table>
              
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
 
 