<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String mid=request.getParameter("mid")==null?"admin":request.getParameter("mid");
	String pwd=request.getParameter("pwd")==null?"1234":request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>LoginCheck.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
	<div class="jumbotron">
		<h2 style="text-align:center;">그린 쇼핑몰 메인</h2>
		<p style="text-align:center;">'${sMid}'님이 로그인 하셨습니다.</p>
		<p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/5.png"/></p>
		<p style="text-align:center;">그린 쇼핑몰 조회 수: ${aVisitCnt}</p>
		<p style="text-align:center;">그린 쇼핑몰 방문자 수: ${sViewCnt}</p>
		<p><a href="${pageContext.request.contextPath}/j221117/LogOut" class="btn btn-primary form-control">로그아웃</a>
		
<%		if(mid.equals("admin")||pwd.equals("1234")) {	%>		
		<p><a href="${pageContext.request.contextPath}/j221117/DelInfo" class="btn btn-primary form-control">방문자 정보 삭제</a>
<%		} %>	
	
	</div>
</div>
<p><br/></p>
</body>
</html>