<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<link href="/resources/css/get.css" rel="stylesheet">
<title>Member Info</title>
</head>
<body>
	<header>
		<h1>회원 정보</h1>
		<div>
			<a class="hanker list" href=/member/list>회원 목록</a>
			<a class="hanker del" href='/member/delete?userid=${member.userid }'>회원 삭제</a>
		</div>
	</header>
	<main>
		<form action="/member/modify" method="post" accept-charset="utf-8">
		
			<label>ID(이메일)</label> 
			<input type="text" required name="title" value="${member.userid }" readonly="readonly"/>
			<label>이름</label> 
			<input type="text" required name="author" value="${member.username }" readonly="readonly"/>
			<label for = "issueyear">대출가능권수</label> 
			<input  id="issueyear" type="number" required name="issueyear" value="${member.chkavail }" readonly="readonly"/> 
			
			<label>등록일</label> 
			<input type="text" required name="isbn" value="${member.regdate }" readonly="readonly"/> 
			
		</form>
	</main>

</body>
</html>
