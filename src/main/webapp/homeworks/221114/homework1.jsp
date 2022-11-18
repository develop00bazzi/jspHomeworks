<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>title</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
		'use strict';

		let newForm="";
		let idx=0;

		function inputForm() {
			idx++;
            newForm='<div id="proTxt'+idx+'" class="alert-dark">';
            newForm+= '&nbsp 상품명 <input type="text" name="product" id="product'+idx+'"/> &nbsp;';
            newForm+= '가격 <input type="text" name="price" id="price'+idx+'"/> &nbsp;';
            newForm+= '수량 <input type="text" name="productCnt" id="productCnt'+idx+'"/> &nbsp;';
            newForm+= "<input type='button' value='삭제' onclick='deleteBox("+idx+")' class='btn btn-danger'/><br/>";
            newForm+='</div>';
            demo.innerHTML+=newForm;
		}

		function deleteBox(idx) {
            let proTxt="proTxt"+idx;
            let item=document.getElementById(proTxt);
            item.parentNode.removeChild(item);
        }

		function updateForm() {
			myform.submit();
		}
	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<form name="myform" method="post" action="<%=request.getContextPath()%>/j221114_Homework1Check">
		<div class="jumbotron">
			<h1 style="text-align: center;">환영합니다. 그린 쇼핑몰입니다.</h1>
			<h3>구매자</h3>
			<p><input type="text" name="name" id="name" class="form-control" /></p>
			<h3>상품 분류</h3>
			<div class="form-group">
				<select class="form-control" id="productClass" name="productClass">
					<option>상의</option>
					<option>하의</option>
					<option>아우터</option>
					<option>신발</option>
				</select>
			</div>
			<p><input type="button" value="상품 추가하기" id="addProduct" name="addProduct" onclick="inputForm()" class="btn btn-success"/></p>
			<div id="demo"></div>
			<br/>
			<p><input type="button" value="상품 등록하기" id="updateProduct" name="updateProduct" onclick="updateForm()" class="btn btn-primary"/></p>
		</div>
	</form>
</div>
<p><br/></p>
</body>
</html>