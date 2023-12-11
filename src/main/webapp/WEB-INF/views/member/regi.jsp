<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>회원가입</title>
	<link href="/resources/css/bookform.css" rel="stylesheet">
</head>
<body>

<header>
		<h1>회원 등록</h1>
		<a class=hanker href="/">취소</a>
	</header>
	<div>
		<form action="/member/regi" method="post" accept-charset="utf-8">
		
			<label>ID</label> 
			<input type="text" required name="userid" placeholder="이메일 입력" />
			<label>비밀번호</label> 
			<input type="password" required name="userpw" placeholder="비밀번호 입력" />
			<label >이름</label> 
			<input  type="text" required name="username" placeholder="이름 입력" /> 
			
			
			<label for="admin">관리자</label>
			<input type="radio" id="admin" name="role" value="ROLE_ADMIN">
  			<label for="member">일반회원</label>
  			<input type="radio" id="member" name="role" value="ROLE_MEMBER">
  			

		 	<input type="submit" value="등록하기">
		 	<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		</form>
	</div>



</body>
</html>
