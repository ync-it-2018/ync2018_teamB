<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URL"
	import="java.sql.Connection" import="java.sql.DriverManager"
	import="java.sql.PreparedStatement" import="java.sql.ResultSet"
	import="java.sql.SQLException"

	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%

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
//System.out.println("★★★★★★★★★★★★★어디까지 왔냐★★★★★★★★★★★★★");
Connection conn = null;
PreparedStatement pstmt = null;
int result = 0;


String qry =    "insert into TB_USER "
        + "(USER_ID, USER_PW, USER_EMAIL) "
        + "values (" 
        + "'" + strID + "', "
        + "'" + strPWD + "', "
        + "'" + strEmail + "')";
        //+ "ON DUPLICATE KEY UPDATE user_i=VALUES('"+ strID+"1')";

		
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
	if (result > 0) { %>
	<script>
		alert("추가되었습니다.");
	</script>
<%	} else { %>
	<script>
		alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
	</script>
<%  } %>
	<script>
		self.location = "/login";
	</script>
<% 
	
}
	
%> 
<body>

</body>
<script type ="text/javascript">
	function insertResult() {
		if (result > 0 ) {
			alert("추가되었습니다. ")
		}else if (result == 0 ) {
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}else if (result == 1) {
			
		}
		self.location = "/login";
	}
</script>
</html>