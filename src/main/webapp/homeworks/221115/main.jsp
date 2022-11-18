<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>그린 쇼핑몰 Main</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
	<div id="menu">
		<%@ include file="menu.jsp" %>
	</div>
	<hr/>
	<div class="jumbotron">
		<h1 style="text-align: center;">그린 쇼핑몰 상품 판매 관리</h1>
		<p><br/></p>
		<p style="text-align: center;">환영합니다. 그린 쇼핑몰 상품 판매 관리 페이지입니다.</p>
		<p style="text-align: center;">원하시는 메뉴로 이동하시면 쇼핑몰 관리를 진행 하실 수 있습니다. </p>
		<p style="text-align: center;"><img src="${pageContext.request.contextPath}/images/5.png" width="500px" style="margin: 0 auto;"/></p>
	</div>
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</div>
<p><br/></p>
</body>
</html>