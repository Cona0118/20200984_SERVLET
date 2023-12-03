<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

	// String id = multi.getParameter("id");
	// String password = multi.getParameter("password");
	// String name = multi.getParameter("name");
	// String gender = multi.getParameter("gender");
	// String mail = multi.getParameter("mail");
	// String phone = multi.getParameter("phone");
	// String address = multi.getParameter("address");

    Date curDate = new Date();
    Date regist_day = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes() + ":" + curDate.getSeconds();

    String sql = "insert into member values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, id); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, gender);
	pstmt.setString(5, mail);
    pstmt.setString(6, phone);
	pstmt.setString(7, address);
	pstmt.setString(8, regist_day);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();


	response.sendRedirect("../member/login_user.jsp");
%>