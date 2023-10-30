<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%! String greeting = "Welcome to Web Shopping Mall";
    String tagline = "Welcome to Web Market!";%>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">
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
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
<div class="container">
	<div class="row" align="center">
		<%
			for (int i = 0; i < listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i);
		%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
			</div>
			<%
				}
			%>
	</div>
		<hr>
</div>
