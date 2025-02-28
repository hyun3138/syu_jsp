<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
<form action="join.do" method="post">
<p>
	ID : <br/><input type="text" name="id" value="${param.id }">
	<c:if test="${errors.id }">ID 입력하세요</c:if>
	<c:if test="${errors.duplicateId }">이미  사용중</c:if>
</p>
<p>
	Name : <br/><input type="text" name="name" value="${param.name }">
	<c:if test="${errors.name }">이름 입력하세요</c:if>
</p>
<p>
	Password : <br/><input type="password" name="password">
	<c:if test="${errors.password }">암호를 입력하세요</c:if>
</p>
<p>
	Confirm : <br/><input type="password" name="confirmPassword">
	<c:if test="${errors.confirmPassword }">확인을 입력하세요</c:if>
	<c:if test="${errors.notMatch }">불일치</c:if>
</p>
<input type="submit" value="Sign Up">
</form>
</body>
</html>