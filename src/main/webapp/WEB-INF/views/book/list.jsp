<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<link href="/resources/css/booklist.css" rel="stylesheet">
<title>Book List</title>
</head>
<body>
	<header>
	<h1>도서 목록</h1>
	<div>
		<a class=hanker href=/book/bookform>도서 등록</a>
		<a class=hanker href=/mlogout?userid=<sec:authentication property="principal.member.username"/>><sec:authentication property="principal.member.username"/>님 로그아웃</a>
	</div>
	</header>
	<table class=tbl>
		<tr>
			<th>제목</th>
			<th>저자</th>
			<th>분류</th>
			<th>발행연도</th>
			<th>ISBN</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${list }" var="book">
			<tr>
				<td><a class="tanker" href='/book/get?isbn=${book.isbn }'>${book.title}</a></td>
				<td>${book.author }</td>
				<td>${book.category }</td>
				<td>${book.issueyear }</td>
				<td>${book.isbn }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${book.regdate }" /></td>
			</tr>
		</c:forEach>
	</table>
	<div id="myModal" class="modal">

	  	<!-- Modal content -->
	  	<div class="modal-content">
	    	<span class="close">✔</span>
	    	<p id="modal-msg" >처리 되었습니다</p>
	  	</div>

	</div>
	<script type="text/javascript">
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	function show_modal() {
		let var_result = "${result}"
		if (var_result !== "") {
			console.log("${result}")
			document.getElementById("modal-msg").innerHTML = "${result}" + " 되었습니다"
			modal.style.display = "block";
		}
	  }

	document.addEventListener("DOMContentLoaded", show_modal);
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	
	</script>
</body>
</html>
