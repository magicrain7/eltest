<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<% session.setAttribute("sum", 0); %>
<% 	for(int i = 1; i<10; i++) { %>
		<tr>
			<% if (i % 2 ==0) { %>
				<td><%=i%></td>
			<% } else { %>
				<td style ="background-color: yellow"><%=i%></td>
			<% } %>
			
		</tr>
<% } %>	
</table>
<hr>

<c:set var="sum" value="0" scope="session"/>
<table border="1">
<c:forEach begin="1" end="9" var="i">
	<tr>								
		<td <c:if test="${i % 2 == 0 }"> style ="background-color: red" </c:if> >${i}</td>
	
<%-- 		<c:choose>
			<c:when test="${ i % 2 ==0 }">
				<td>${i}</td>
			</c:when>
		<c:otherwise>
				<td style ="background-color: aqua">${i}</td>
		    </c:otherwise>
		</c:choose> --%>
		
	</tr>
</c:forEach>
</table>
</body>
</html>