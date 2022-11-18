<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>그린 쇼핑몰 상품 등록</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<style>
		#pAdd {
			margin: 0 auto;
		}
	</style>
	<script>
		'use strict';
		
		function pUpdate() {
			alert("상품 등록이 완료되었습니다!");
		}
	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<div id="menu">
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<p><br/></p>
	<form name="pAdd" method="post" action="${pageContext.request.contextPath}/j221116/Main">
		<div class="jumbotron">
			<h1 style="text-align: center;">판매 상품 등록</h1>
			<p><br/></p>
			<p style="text-align: center;">판매하고 싶은 상품을 등록하여 주시기 바랍니다.</p>
			<div id="pAdd">
				<h5>상품명</h5>
				<input type="text" name="pName" id="pName" value="맥북" class="form-control"/>&nbsp
				<h5>가격</h5>
				<input type="text" name="pPrice" id="pPrice" value="1600000" class="form-control"/>&nbsp
				<h5>수량</h5>
				<input type="text" name="pStock" id="pStock" value="3" class="form-control"/>&nbsp
				<br/>
				<p><input type="submit" value="상품 등록" onclick="pUpdate()" class="btn btn-primary form-control"/></p>
				<p><input type="reset" value="다시 입력" class="btn btn-danger form-control"/></p>
			</div>
		</div>
	</form>
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</div>
<p><br/></p>
</body>
</html>