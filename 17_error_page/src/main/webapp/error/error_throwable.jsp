<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error_throwable.jsp</title>
</head>
<%@ page isErrorPage="true" %>
<body>
	<h1>Throwable Error 등장</h1>
	<h2>나가</h2>
	<h3><%=exception.getMessage() %></h3>
	<a href="../index.jsp">메인으로</a>
</body>
</html>