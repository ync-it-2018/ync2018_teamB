<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>

<link href="/resources/adminMain/css/main.css?after" rel="stylesheet">

<style>
span.star-prototype, span.star-prototype > * {
    height: 16px; 
    background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
    width: 80px;
    display: inline-block;
}
 
span.star-prototype > * {
    background-position: 0 0;
    max-width:80px; 
}
/* .text1 {
	height:100%;
	width:100%;
} */


</style>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<script type="text/javascript" src="/resources/plugins/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
<!-- Main content -->


	<section class="content">
	<div ><!-- class="row" -->
		<!-- left column -->
		<div ><!-- class="col-md-12" -->
			<!-- general form elements -->

			<div class="box">
				<div class="box-body">
					<table border="1">
						<tr>
							<td align="center" width="100px">제목</td>
							<td><textarea name="title" id="title" rows="1" style="width:100%"></textarea></td>
						</tr>

						<tr>
							<td align="center" width="100px" height="50px">평점</td>
							<td><span class="star-prototype">4.5</span></td>
							
						</tr>
						<tr>
							<td align="center" width="100px" height="400px">내용</td>
							<td class="text1" width="800px" height="400px">
							<textarea name="contents" id="contents" required="" rows="20" style="width:100%"></textarea></td>
						</tr>						
						<tr align="right" border="0">
							<td colspan="2">
							<input type="submit" value="변경" />
							<button>취소</button>
							</td>
						</tr>
					</table>
					
				</div>
			</div>
		</div>
		<!--/.col (left) -->
	</div>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "contents",
			sSkinURI : "/resources/plugins/editor/SmartEditor2Skin.html",
			fCreator : "createSEditor2"
		});
		function submitContents(elClickedObj) {
			// 에디터의 내용이 textarea에 적용됩니다.
			oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
			// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

			try {
				elClickedObj.form.submit();
			} catch (e) {
			}
		}
	</script>
	<!-- /.row -->
</section>
<script>
$.fn.generateStars = function() {
    return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
};

// 숫자 평점을 별로 변환하도록 호출하는 함수
$('.star-prototype').generateStars();
</script>

<!-- /.content -->


<%@include file="include/footer.jsp"%>


