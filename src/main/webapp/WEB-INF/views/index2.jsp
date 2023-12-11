<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>Home</title>
	<link href="/resources/css/index.css" rel="stylesheet">
</head>
<body>
<main>
<h1>
	스마트 도서관에 오신걸 환영합니다
</h1>
<div class="ank">
	<a href="/member/regi" >회원 등록</a>
	<a href="/member/list" >회원 관리</a>
</div>
<div class="ank">
	<a href="#" >도서 대출</a>
	<a href="/book/list" >도서 관리</a>
</div>
<img src = "/resources/images/lib.jpg">
</main>

</body>
</html>
