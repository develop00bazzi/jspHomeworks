<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../../include/bs4.jsp" %>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	<ul class="navbar-nav" style="margin: 0 auto;">
    	<li class="nav-item active">
			<a class="nav-link" href="${pageContext.request.contextPath}/j221116/Main?sw=main&pName=${vo.pName}&pPrice=${vo.pPrice}&pStock=${vo.pStock}">메인 화면</a>
    	</li>
    	<li class="nav-item active">
			<a class="nav-link" href="${pageContext.request.contextPath}/j221116/Main?sw=pUpdate&pName=${vo.pName}&pPrice=${vo.pPrice}&pStock=${vo.pStock}">판매 상품 등록</a>
    	</li>
	    <li class="nav-item active">
			<a class="nav-link" href="${pageContext.request.contextPath}/j221116/Main?sw=pList&pName=${vo.pName}&pPrice=${vo.pPrice}&pStock=${vo.pStock}">상품 조회</a>
	    </li>
	</ul>
</nav>