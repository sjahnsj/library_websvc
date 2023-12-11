<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<link href="/resources/css/get.css" rel="stylesheet">
<title>Book List</title>
</head>
<body>
	<header>
		<h1>도서 정보</h1>
		<div>
			<a class="hanker list" href=/book/list>도서 목록</a>
			<a class="hanker del" href='/book/modify?isbn=${book.isbn }'>도서 수정</a>
			<a class="hanker del" href='/book/delete?isbn=${book.isbn }'>도서 삭제</a>
		</div>
	</header>
	<main>
		<form action="/book/modify" method="post" accept-charset="utf-8">
		
			<label>제목</label> 
			<input type="text" required name="title" value="${book.title }" readonly="readonly"/>
			<label>저자</label> 
			<input type="text" required name="author" value="${book.author }" readonly="readonly"/>
			<label for = "issueyear">발행연도</label> 
			<input  id="issueyear" type="number" required name="issueyear" value="${book.issueyear }" readonly="readonly"/> 
			<label for="category">분류</label>
			<select id="category" name="category" disabled>
				
				<option value="자기계발" <c:if test="${book.category eq '자기계발'}"> selected </c:if> >자기계발</option>
				<option value="문학" <c:if test="${book.category eq '문학'}"> selected </c:if> >문학</option>
				<option value="교양" <c:if test="${book.category eq '교양'}"> selected </c:if> >교양</option>
			</select> 
			<label>ISBN</label> 
			<input type="text" required name="isbn" value="${book.isbn }" readonly="readonly"/> 
			
		</form>
	</main>

</body>
</html>
