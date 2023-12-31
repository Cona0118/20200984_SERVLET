<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel='stylesheet' href='/stylesheets/style.css' />
    <!-- jquery -->
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
    <script src="../js/order_popup.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>배송 정보</title>
</head>
<body>
	<jsp:include page="order_top_menu.jsp" />
	<div class="jumbotron">
	   <div class="container">
		<h1 class="display-3">배송 정보</h1>
	   </div>
	</div>
	<div class="container">
	   <form action="order_info_process.jsp" class="form-horizontal" method="post">
	     <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
	     <div class="form-group row">
	       <label class="col-sm-2">성명</label>
	          <div class="col-sm-3">
	      	<input name="name" type="text" class="form-control" />
	          </div>
	    </div>
          <!-- <div class="form-group row">
	<label class="col-sm-2">배송일</label>
	<div class="col-sm-3">
		<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
	</div>
	  </div>
	 <div class="form-group row">
	   <label class="col-sm-2">국가명</label>
	     <div class="col-sm-3">
		    <input name="country" type="text" class="form-control" />
	    </div>
	 </div>
	 <div class="form-group row">
	     <label class="col-sm-2">우편번호</label>
	     <div class="col-sm-3">
	 	     <input name="zipCode" type="text" class="form-control" />
	     </div>
	 </div>
    	<div class="form-group row">
	   <label class="col-sm-2">주소</label>
	     <div class="col-sm-5">
		<input name="addressName" type="text" class="form-control" />
	     </div>
	</div> -->
           
    <!-- 배송희망일 = 오늘 + 2일 부터 선택 가능 -->
    <%   
	Date date = new Date();
    date.setDate(date.getDate() + 2);
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = simpleDate.format(date);
    %>
    <div class="form-group row">
	    <label class="col-sm-2">배송희망일</label>
	    <div class="col-sm-3">
		    <input name="shippingDate" type="date" min="<%=strDate%>" class="form-control" />
	    </div>
	</div>
           
    <div class="form-group row">
	   <label class="col-sm-2">국가명</label>
        <div class="col-sm-5">
            <select name="country" >
                <option value="Korea">대한민국</option>
                <option value="China">중국</option>
                <option value="Japan">일본</option>
                <option value="America">미국</option>
              </select>
        </div>
	</div>
	 <div class="form-group row">
	     <label class="col-sm-2">우편번호</label>
	     <div class="col-sm-3">
	 	    <input type="text" id="sample6_postcode" name="zipCode" placeholder="우편번호"> 
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
	     </div>
	 </div>
    	<div class="form-group row">
	   <label class="col-sm-2">주소</label>
	     <div class="col-sm-5">
            <input type="text" id="sample6_address" name="addressName" placeholder="주소"><br>
            <input type="text" id="sample6_detailAddress" placeholder="상세주소">
            <input type="text" id="sample6_extraAddress" placeholder="참고항목">
	     </div>
	</div>
           
	<div class="form-group row">
	   <div class="col-sm-offset-2 col-sm-10 ">
	     <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
		<input type="submit" class="btn btn-primary" value="등록" />
		<a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
	   </div>
	</div>
  </form>
  </div>
</body>
</html>


	
