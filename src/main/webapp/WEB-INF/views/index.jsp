<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Home</title>
<link href="/resources/css/index.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<main>
		<h1>스마트 도서관에 오신걸 환영합니다</h1>

		<nav>
			<div class="menu">
				<ul class="hidden">
					<li><a href="/member/regi">회원 등록</a></li>
					<li><a href="/member/list">회원 관리</a></li>
					<li><a href="/member/checkout">도서 대출</a></li>
					<li><a href="/book/list">도서 관리</a></li>
				</ul>
			</div>
			<!-- <div class="hamburger_menu hamburger">
				<i class="fa-solid fa-bars"></i>
			</div> -->

		</nav>

		


		<img src="/resources/images/library.jpg">
	</main>

</body>
</html>
