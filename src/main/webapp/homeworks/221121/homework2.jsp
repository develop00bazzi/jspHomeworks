<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>homework2.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>221121 과제 2</h2>
	<p>
		atom 변수에 기억되어 있는 문자를 입력받아 그 문자가 두번째로 기억되어 있는 위치 값을 출력하시오.<br/>
		단, 두번째 기억 값이 없으면 1번째 기억 위치를 출력하고 '두번째 값 없음' 을 함께 출력하시오.
	</p>
	
	<%
		String atom="Welcome to My Homepage!";
		pageContext.setAttribute("atom", atom);
		pageContext.setAttribute("atom2", atom);
	%>
	
	<form name="myform">
		<p>
			찾고자 하는 문자는?
			<input type="text" name="findChar" class="form-control"/>
		</p>
		<p><input type="submit" value="찾기" class="btn btn-success form-control"/></p>
		<hr/>
		<c:set var="cnt" value="0" />
		<c:set var="findChar" value="${param.findChar}"/>
		<c:set var="bf" value="${fn:substringBefore(atom,findChar)}"/>
		<c:set var="af" value="${fn:substringAfter(atom,findChar)}"/>
		<c:set var="af2" value="${fn:indexOf(af,findChar)}"/>
		<c:if test="${af2>0}">입력하신 문자열 '${findChar}'의 두번째 값은 ${fn:length(bf)+af2+1}입니다.</c:if>
		<c:if test="${af2<0}">
			<p>입력하신 문자열 '${findChar}'의 두번째 값은 없습니다.</p>
			<p>추가로 입력하신 문자열 '${findChar}'의 첫번째 값은 ${fn:length(bf)}입니다.</p>
		</c:if>
		<br/>
	</form>
</div>
<p><br/></p>
</body>
</html>