<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form action="login.do" method="post">
<c:if test="${errors.idOrPwNotMatch }">
id pw 일치하지 않음
</c:if>
<p>
	ID : <br/><input type="text" name="id" value="${param.id }">
	<c:if test="${errors.id }">ID 입력하세요</c:if>
</p>
<p>
	Password : <br/><input type="password" name="password">
	<c:if test="${errors.password }">PW 입력하세요</c:if>
</p>
<input type="submit" value="login">
</form>
</body>
</html> 