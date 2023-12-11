<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<link href="/resources/css/bookform.css" rel="stylesheet">
<title>Book List</title>
</head>
<body>
	<header>
		<h1>도서 등록</h1>
		<a class=hanker href=/book/list>도서 목록</a>
	</header>
	<div>
		<form action="/book/add" method="post" accept-charset="utf-8">
		
			<label>제목</label> 
			<input type="text" required name="title" placeholder="제목 입력" />
			<label>저자</label> 
			<input type="text" required name="author" placeholder="저자 입력" />
			<label for = "issueyear">발행연도</label> 
			<input  id="issueyear" type="number" required name="issueyear" placeholder="발행연도 입력" /> 
			<label for="category">분류</label>
			<select id="category" name="category">
				<option value="자기계발">자기계발</option>
				<option value="문학">문학</option>
				<option value="교양">교양</option>
			</select> 
			<label>ISBN</label> 
			<input type="text" required name="isbn"
				placeholder="ISBN 입력" /> <input type="submit" value="등록하기">
			<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		</form>
	</div>

</body>
</html>
