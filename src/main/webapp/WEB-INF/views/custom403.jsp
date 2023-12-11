<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Access Denied Page</title>
<link href="/resources/css/error.css" rel="stylesheet">
</head>
<body>
<main>
<h1>관리자 전용 메뉴입니다.</h1>
<form action="/mlogout" method='post'>
<input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
<button class="btn">OK</button>
</form>
<img src = "/resources/images/AdminOnly.png">
</main>

</body>
</html>