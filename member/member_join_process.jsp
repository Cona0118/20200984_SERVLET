<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<%@ include file = "../db/db_conn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	//String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");

    Date now = new Date();
    SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String regist_day = simple.format(now);

    String sql = "insert into member values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, id); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, gender);
	//pstmt.setString(5, birth);
    pstmt.setString(5, mail);
	pstmt.setString(6, phone);
	pstmt.setString(7, address);
	pstmt.setString(8, regist_day);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행
	if(pstmt != null)
 		pstmt.close();
 	if(conn != null)
		conn.close();

    session.invalidate();
    

	response.sendRedirect("../index.jsp");
%>