<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>상품 조회</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
	<div id="menu">
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<p><br/></p>
	<div class="jumbotron">
		<h1 style="text-align: center;">판매 상품 조회</h1>
		<p><br/></p>
		<p style="text-align: center;">그린 쇼핑몰에 관리자가 등록한 상품 목록입니다.</p>
		<div class="alert alert-info pList" style="text-align: center;">
 			<p>
 				<strong>판매 상품</strong>&nbsp${vo.pName}
 				<strong>가격</strong>&nbsp${vo.pPrice}
 				<strong>수량</strong>&nbsp${vo.pStock}
 			</p>
		</div>
	</div>
	<div id="footer">
		<%@ include file="footer.jsp" %>
	</div>
</div>
<p><br/></p>
</body>
</html>

