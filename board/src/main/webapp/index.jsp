<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member board ex</title>
</head>
<body>
<u:isLogin>
	CT: ${authUser.name } 안녕하세요.
	<a href="logout.do">[LogOut]</a>
	<a href="changePwd.do">[Change Password]</a>
</u:isLogin>
<u:notLogin>
	CT: <a href="join.do">[Sign Up]</a>
	<a href="login.do">[Login]</a>
</u:notLogin>
</body>
</html>