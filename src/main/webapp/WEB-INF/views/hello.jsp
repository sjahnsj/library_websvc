<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	hello 
</h1>
<table>
<tr>
<td>이름</td>
<td>나이</td>
</tr>
<c:forEach items="${list }" var="member">
	<tr>
		<td>${member.name}</td>
		<td>${member.age }</td>
	
	
	
	</tr>


</c:forEach>


</table>

</body>
</html>
