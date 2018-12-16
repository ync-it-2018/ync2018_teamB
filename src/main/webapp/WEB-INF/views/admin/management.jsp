<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!-- 일반 회원관리자 페이지 폼  -->
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
            <input type="text" placeholder="회원 ID 검색" /><button>검색</button>
            <br>
              <table border="1">
              	<tr bgcolor="skyblue">
              		<td width="75px" align="center">회원번호</td>
              		<td width="75px" align="center">ID</td>
              		<td width="120px" align="center">E-mail</td>
              		<td width="75px" align="center">삭제</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">1</td>
              		<td width="75px" align="center">Admins</td>
              		<td width="120px" align="center">ksh@daum.net</td>
              		<td width="75px" align="center">X</td>
              	</tr>
              	<tr>
              		<td width="75px" align="center">2</td>
              		<td width="75px" align="center">emps1</td>
              		<td width="120px" align="center">ksh@daum.net</td>
              		<td width="75px" align="center">X</td>
              	</tr>
              </table>
              
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
 
 