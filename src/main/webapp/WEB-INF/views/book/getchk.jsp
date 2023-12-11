<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<link href="/resources/css/get.css" rel="stylesheet">
<title>Book List</title>
</head>
<body>
	<header>
		<h1>도서 정보</h1>
		<div>
			<a class="hanker list" href=/member/checkout>도서 목록</a>
			<%-- <a class="hanker del" href='/book/modify?isbn=${book.isbn }'>도서 수정</a>
			<a class="hanker del" href='/book/delete?isbn=${book.isbn }'>도서 삭제</a> --%>
		</div>
	</header>
	<main>
		<form action="/book/checkout" method="post" accept-charset="utf-8">
		
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
			<c:choose>
                		<c:when test= "${book.avail == 0 }">
                			<input type="submit" value="대출중 ( 반납예정일 : <fmt:formatDate pattern="yyyy-MM-dd"
                  value="${checkout.retdate }" /> )" disabled>
                		</c:when>
                		<c:otherwise>
                			<input type="submit" value="대출">
                		</c:otherwise>
                	</c:choose>
               <input type="hidden" name="category" value="${book.category }" />
             <input type="hidden" name="avail" value="${book.avail }" />
			<input type="hidden" name="userid"
    value=<sec:authentication property="principal.member.userid"/> />
			<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
			
		</form>
	</main>

</body>
</html>
