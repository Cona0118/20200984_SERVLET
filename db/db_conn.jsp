<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<%
	Connection conn = null;	
	PreparedStatement pstmt = null;
    PreparedStatement pstmt_2 = null;
	ResultSet rs = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/gampang_20200984?characterEncoding=utf8";
		String user = "root";
		String password = "0591";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
	} catch (SQLException ex) {
		out.println("데이터베이스 연결이 실패되었습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
		
%>
