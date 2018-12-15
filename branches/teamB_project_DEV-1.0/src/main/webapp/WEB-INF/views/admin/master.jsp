
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 최고관리자 페이지 폼 -->
<%@include file="include/header.jsp"%>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.scrollUp.min.js"></script>
<script src="/resources/js/price-range.js"></script>
<script src="/resources/js/jquery.prettyPhoto.js"></script>
<script src="/resources/js/main.js"></script>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<input type="text" placeholder="회원 ID 검색" />
					<button>검색</button>
					<%for(int i=0; i<21; i++){ %>
					&nbsp;
					<%} %>
					<button>전체</button>
					<button>권한자</button>
					<br>
					<form role="form" method="post">
						<input type='hidden' name='USER_NUM' value="${UserVO.USER_NUM}">
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
							<c:forEach items="${masterlist}" var="UserVO"><!-- masterlist에 저장된 데이터 UserVO라는 이름으로 불러옴 -->
								<tr>
									<td>${UserVO.USER_NUM}</td>
									<td>${UserVO.USER_ID}</td>
									<td>${UserVO.USER_EMAIL}</td>
									<td><button type="submit" class="gradeBtn" id="gradeBtn">권한부여</button></td>
									<td><button type="submit" class="removeBtn" id="removeBtn">삭제</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->



<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

지훈이 헬프미!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
JSP -> master_user_remove, master
Controller -> admin에 masterController(기능,페이지이동), 
masteruserController(master_user_remove로 이동시키기 위한 컨트롤러)
VO -> UserVO
dto -> UserDTO
interceptor -> MasterInterceptor
persistence -> UserDAO, UserDAOImpl
service -> UserService, UserServiceImpl
mapper -> userMapper


참고사항 : JQuery문도 있음. 
 -->



<%@include file="include/footer.jsp"%>
<script type="text/javascript">
  /*   $(document).ready(function(){
 	var formObj = $("form[role='form']");
 	console.log(formObj);
    $("#removeBtn").on("click", function(){
 		formObj.attr("action", "/admin/master_user_remove");
 		formObj.submit();
 	});
});  */
 
 $(document).ready(function(){
   var formObj = $("form[role='form']");
   console.log(formObj);
   
   $(".removeBtn").on("click",function(){
	  	 formObj.attr("action", "/admin/master_user_remove");
       /* self.location = "/admin/master_user_remove";  */
 		 formObj.submit();
   });
  
}); 
</script>
 
 

