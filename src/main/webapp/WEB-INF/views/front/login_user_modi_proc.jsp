<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.net.URL"
	import="java.sql.Connection" import="java.sql.DriverManager"
	import="java.sql.PreparedStatement" import="java.sql.ResultSet"
	import="java.sql.SQLException"
	import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%


String encodedUID = "";
request.setCharacterEncoding("utf-8");
String strID="", strPWD="", strEmail="";

if ( request.getParameter("USER_ID") != null )
	strID = request.getParameter("USER_ID");

if ( request.getParameter("USER_PW") != null )
	strPWD = request.getParameter("USER_PW");

if ( request.getParameter("USER_EMAIL") != null )
	strEmail = request.getParameter("USER_EMAIL");


String driverName = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@220.67.2.3:1521:ora11";
String userID = "educ239";
String dbpwd = "pass239";
Connection conn = null;
PreparedStatement pstmt = null;
int result = 0;

String qry = "update TB_USER "
		   + "set USER_PW='" + strPWD + "', "
		       + "USER_EMAIL='" + strEmail + "' "
	     + "where USER_ID='" + strID + "'";
		
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

<body onload="updateResult('<%=result%>','<%=encodedUID%>')">

<%-- <form name="updateResult('<%=result%>')">
	<input type="hidden" name="result" value="<%=result%>"/>
</form> --%>
</body>
<script type="text/javascript">
	function updateResult(result, USER_ID) {
		if ( result >  0) {
			alert("수정되었습니다.");
		} else {
			alert("오류가 발생하였습니다. \n관리자에게 문의하세요. ");
		}
		self.location = "/";
		
	}
</script>
</html>