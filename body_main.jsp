<%@ page contentType="text/html; charset=utf-8"%>
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
