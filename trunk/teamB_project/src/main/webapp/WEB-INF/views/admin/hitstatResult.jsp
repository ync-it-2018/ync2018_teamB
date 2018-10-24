<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

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
            <input type="text"/>~<input type="text"/><button>재검색</button>
            <br>
              <table border="1">
              	<tr bgcolor="skyblue">
              		<td width="75px" align="center">순위</td>
              		<td width="75px" align="center">이미지</td>
              		<td width="100px" align="center">제품명</td>
              		<td width="75px" align="center">조회수</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">1</td>
              		<td width="75px" align="center">이미지1</td>
              		<td width="100px" align="center">i7-7700k</td>
              		<td width="75px" align="center">78</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">2</td>
              		<td width="75px" align="center">이미지2</td>
              		<td width="100px" align="center">CORE I5</td>
              		<td width="75px" align="center">55</td>
              	</tr>
              </table>
              
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
 
 