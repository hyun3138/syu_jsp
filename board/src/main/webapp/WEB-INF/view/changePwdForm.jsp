<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>change pwd</title>
</head>
<body>
<form action="changePwd.do" method="post">
<p>
	현재 암호 : <br/><input type="password" name="curPwd">
	<c:if test="${errors.curPwd }">현재 암호 입력</c:if>
	<c:if test="${errors.badCurPwd }">현재 암호 불일치</c:if>
</p>
<p>
	새 암호 : <br/><input type="password" name="newPwd">
	<c:if test="${errors.newPwd }">새 암호 입력</c:if>
</p>
<input type="submit" value="change pwd">
</form>
</body>
</html>