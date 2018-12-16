<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.net.URL"
	import="java.sql.Connection" import="java.sql.DriverManager"
	import="java.sql.PreparedStatement" import="java.sql.ResultSet"
	import="java.sql.SQLException"
	import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
//한글파일 깨지지 않도록 UTF-8로 설정

request.setCharacterEncoding("UTF-8");
String strID = ""; String strPW = "";
/*
html문서의 폼으로 넘어온 정보의 값을 반환
public String getParameter(String name)
*/
if ( request.getParameter("USER_ID") != null){
	strID = request.getParameter("USER_ID");
}
if ( request.getParameter("USER_PW") != null){
	strPW = request.getParameter("USER_PW");	
}
%>
<% 
String driverName = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@220.67.2.3:1521:ora11";
String userID = "educ239";
String dbpwd = "pass239";
Connection conn = null;
PreparedStatement pstmt = null;
int result = 0;

String qry = "delete from TB_USER "
			+ "where USER_ID = '" + strID +"' and USER_PW = '"+ strPW +"'";
		
try {
	Class.forName(driverName);
	conn = (Connection) DriverManager.getConnection(url, userID, dbpwd);
	pstmt = conn.prepareStatement(qry);
	result = pstmt.executeUpdate(); // rs 자체는 arrayList
//	System.out.println(qry);
//	System.out.println(result);
	
} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	try {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}



	


%>
<body onload="deleteResult('<%=result%>')">
<%-- <form name="updateResult('<%=result%>')">
	<input type="hidden" name="result" value="<%=result%>"/>
</form> --%>
</body>
<script type="text/javascript">
/* 결과의 값이 1증가 되면 삭제가 됩니다. */
	function deleteResult(result) {
		if ( result >  0) {
			alert("삭제되었습니다.");
		} else {
			alert("오류가 발생하였습니다. \n관리에게 문의하세요. ");
		}
		self.location = "/";
	}
</script>
</html>