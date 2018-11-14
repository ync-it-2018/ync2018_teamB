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
        		<table>
        			<tr>
        				<td><button>대분류</button></td>
        				<td><button>중분류</button></td>
        				<td><button>소분류</button></td>
        				<td><button>세분류</button></td>
        			</tr>
        			<tr>
        				<td>컴퓨터/노트북</td>
        				<td>PC주요부품</td>
        				<td>CPU</td>
        				<td>코어</td>
        			</tr>
        			<tr>
        				<td><button>추가</button></td>
        				<td><button>추가</button></td>
        				<td>메인보드</td>
        				<td>하드코어</td>
        			</tr>
        			<tr>
        				<td></td>
        				<td></td>
        				<td>메모리</td>
        				<td>입력</td>
        			</tr>
        			<tr>
        				<td></td>
        				<td></td>
        				<td><button>추가</button></td>
        				<td><button>추가</button></td>
        			</tr>
        		</table>
           	 </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>