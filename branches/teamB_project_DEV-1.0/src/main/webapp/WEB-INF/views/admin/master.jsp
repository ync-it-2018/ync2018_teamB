
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <input type="text" placeholder="회원 ID 검색" /><button>검색</button>
            <%for(int i=0; i<21; i++){ %>
            	&nbsp;
            <%} %>
            <button>전체</button><button>권한자</button>
            <br>
            <form name="masterpost" method="post">
			  <table>
			  		<thead>
			  			<tr bgcolor="skyblue">
              				<td width="75px" align="center">회원번호</td>
              				<td width="75px" align="center">ID</td>
              				<td width="120px" align="center">E-mail</td>
              				<td width="75px" align="center">권한부여</td>
              				<td width="75px" align="center">삭제</td>
              			</tr>
			  		</thead>
			  		<tbody>
			  		<c:forEach items="${masterlist}" var="UserVO">
						<tr>
							<td>${UserVO.USER_NUM}</td>
							<td>${UserVO.USER_ID}</td>
							<td>${UserVO.USER_EMAIL}</td>
							<td><input type="button" id="" value="권한부여"></td>
							<td><input type="button" id="btnDelete" value="회원삭제"></td>
						</tr>
						</c:forEach>
			  		</tbody>
			  </table>
			  </form>	
           
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
<script type="text/javascript">

	$(document).ready(function() {
		$('#btnDelete').click(function() {
			alert("삭제");
		});
	});
</script>
 
 