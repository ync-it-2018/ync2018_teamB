<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!-- 검색 통계 결과 페이지 폼 -->
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
            <select><option value="4개씩">4개씩</option></select>&nbsp;&nbsp;
            <select><option value="4개씩">전체보기</option></select>&nbsp;&nbsp;
            <br>
              <table border="1">
              	<tr bgcolor="skyblue">
              		<td width="75px" align="center">순위</td>
              		<td width="75px" align="center">제품명</td>
              		<td width="100px" align="center">사이트명</td>
              		<td width="75px" align="center">검색횟수</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">1</td>
              		<td width="75px" align="center">갤럭시S9</td>
              		<td width="100px" align="center">건영쓰폰</td>
              		<td width="75px" align="center">87</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">2</td>
              		<td width="75px" align="center">아이폰8</td>
              		<td width="100px" align="center">다나와폰</td>
              		<td width="75px" align="center">83</td>
              	</tr>
              </table>
              
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
 
 