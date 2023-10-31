<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

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
        <h5 class="card-title">여름세일 이벤트</h5>
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
    ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = dao.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>
<div class="container">
    <div class="row" align="center">
        <%
			for (int i = 0; i < listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i);
		%>
        <div class="col-md-4">
            <div class="card bg-dark text-white">
                <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title">게임 타이틀 이미지</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                </div>
            </div>
            <h3><%=product.getPname()%></h3> 
            <p><%=product.getDescription()%>
            <p><%=product.getUnitPrice()%>
            <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
        </div>
        <%
				}
			%>
    </div>
    <hr>
</div>