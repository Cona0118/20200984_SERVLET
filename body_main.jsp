<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%! String greeting = "Welcome to GAMPANG";
    String tagline = "겜팡은 게임 소개 플렛폼입니다";%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-2, text-center">
            <%=greeting%>
        </h1>
    </div>
</div>
<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>
<div class="card bg-dark text-white">
    <img src="image/top.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">할로윈 세일 이벤트</h5>
        <p class="card-text">출처 : steam</p>
    </div>
</div>
<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        인기 할인 게임</a>
    <a href="#" class="list-group-item list-group-item-action">싱글 플레이</a>
    <a href="#" class="list-group-item list-group-item-action">멀티 플레이</a>
    <a href="#" class="list-group-item list-group-item-action">스토리</a>
    <a href="#" class="list-group-item list-group-item-action">패키지</a>
    <a href="#" class="list-group-item list-group-item-action">경쟁</a>
</div>

<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>
<div class="container">
    <div class="row" align="center">
        <%
			// for (int i = 0; i < listOfProducts.size(); i++) {
			// 	Product product = listOfProducts.get(i);
            String sql = "select * from product"; // 조회
            pstmt = conn.prepareStatement(sql); // 연결 생성
            rs = pstmt.executeQuery(); // 쿼리 실행
            while (rs.next()) { // 결과 ResultSet 객체 반복
		%>
        <div class="col-md-4">
            <div class="card bg-dark text-white">
               <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title">게임 타이틀 이미지</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                </div>
            </div>
            <h3><%=rs.getString("p_name")%></h3>
            <p><%=rs.getString("p_description")%>
            <p><%=rs.getString("p_UnitPrice")%>원
            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
        </div>
        <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>

    </div>
    <hr>
</div>