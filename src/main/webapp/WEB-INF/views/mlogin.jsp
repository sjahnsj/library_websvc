<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>로그인</title>
	<link href="/resources/css/bookform.css" rel="stylesheet">
</head>
<body>

<header>
		<h1>로그인</h1>
		<a class=hanker href="/">취소</a>
	</header>

	<div>
		<form action="/login" method="post" >
		
			<label>ID</label> 
			<input type="text" required name="username" placeholder="이메일 입력" />
			<label>비밀번호</label> 
			<input type="password" required name="password" placeholder="비밀번호 입력" /> 
		 	<input type="submit" value="로그인">
		 	<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		</form>
	</div>



</body>
</html>
