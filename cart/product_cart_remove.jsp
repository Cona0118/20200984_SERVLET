<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("../product_detail.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("../exception/product_not_found.jsp");
	}

    ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
    Product goodsQnt = new Product();
    if (cartList != null){ // 카트리스트가 존재 하면
        for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
            goodsQnt = cartList.get(i);
            if (goodsQnt.getProductId().equals(id)) {
                cartList.remove(goodsQnt);
            }
        }
    }

	response.sendRedirect("product_cart.jsp");
%>
