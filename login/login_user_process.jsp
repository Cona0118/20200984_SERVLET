<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.*"%>
<%@ include file = "../db/db_conn.jsp" %>
<%	
    request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
    
    String sql = "select id, password, name from member where id = ?";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, id); // 각 필드 설정 - ? 순서대로	
    rs = pstmt.executeQuery(); // 최종 SQL 쿼리 실행
    if(rs.next()){
        if(password.equals(rs.getString("password"))){
            session.setAttribute("name", rs.getString("name"));
        }
    }
    if(rs != null)
        rs.close();
	if(pstmt != null)
 		pstmt.close();
 	if(conn != null)
		conn.close();

	response.sendRedirect("../index.jsp");
%>