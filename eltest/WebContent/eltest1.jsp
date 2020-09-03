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
<h3>배열(fruit)</h3>
	<c:forEach items="${fruit}" var="temp">
		<div>${temp}</div>
	
	</c:forEach>
<hr>
첫번째 과일 :  ${requestScope.fruit[0] }<br>
두번째 회원이름 :  ${requestScope.user[1].name}<br>
content : ${board.content} <br>
id: ${login.id }   ${login.getId() } <br>
list 두번째 회원이름 : ${memberList[1].name }
</body>
</html>