<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>로그 아웃</title>
	<link href="/resources/css/mlogout.css" rel="stylesheet">
</head>
<body>
<main>
<h1>
	${name }님 이용해 주셔서 감사합니다.
	<!-- <a class=hanker href="javascript:window.history.back();">취소</a> -->
</h1>

<div class="ank">

<form action="mlogout" method='post'>
<input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
<button>로그 아웃</button>
</form>
</div>
<img src = "/resources/images/bye.jpg">
</main>

</body>
</html>
