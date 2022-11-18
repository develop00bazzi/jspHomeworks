<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	Cookie[] cookies=request.getCookies();

	String mid="";
	
	if(cookies !=null) {
		for(int i=0; i<cookies.length; i++) {
				System.out.println("!!!!::"+mid);
				System.out.println("@@@@::"+cookies[i].getName());
				if(cookies[i].getName().equals("cMid")) {
					mid = cookies[i].getValue();
					System.out.println("@@@@::"+mid);
					break;
				}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>그린 쇼핑몰 로그인</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<style>
		.jumbotron {
			margin:0 auto;
			width:500px;
		}
	</style>
</head>
<body>
<p><br/></p>
<div class="container">
	<%-- <form name="myform" method="post" action="${pageContext.request.contextPath}/j221117/LoginCheck1"> --%>
	<form name="myform" method="post" action="${pageContext.request.contextPath}/j221118/LoginCheck1">
		<div class="jumbotron">
			<h1 style="text-align:center;">그린 쇼핑몰 로그인</h1>
			<div>
				<p>아이디</p>
				<p><input type="text" name="mid" value="<%=mid%>"autofocus class="form-control"/></p>
			</div>
			<div>
				<p>비밀번호</p>
				<p><input type="password" name="pwd" autofocus class="form-control"/></p>
			</div>
			<div style="text-align:center;">
				<p><input type="radio" name="cCheck" value="1" checked>쿠키 저장 허용</p>
        		<p><input type="radio" name="cCheck" value="2">쿠키 저장 비허용</p>
			</div>
			<div>
				<p><input type="submit" value="로그인" class="btn btn-primary form-control" /></p>
				<p><input type="reset" value="재입력" class="btn btn-success form-control" /></p>
				<p style="text-align:center;">
					아이디 및 비밀번호 미 입력시 <br/>
					'admin' 계정으로 로그인 됩니다!
				</p>
			</div>
		</div>
	</form>
</div>
<p><br/></p>
</body>
</html>