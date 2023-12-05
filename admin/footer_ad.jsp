<%@ page contentType="text/html; charset=utf-8"%>	
<%@ page import="example.*" %>
<%@ page import = "java.util.Date" %>


<footer class="container">
    <p><br> &copy; 쇼핑몰 대표 : 박창현, 고유번호 : 20200984, 연락처 : chpark0101@naver.com<br>
	<%
        ShopTime time = new ShopTime();
    %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
    </p>
</footer>