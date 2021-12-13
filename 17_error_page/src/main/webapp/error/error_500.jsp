<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error_500</title>
</head>
<body>
	<h1>뭔가 잘못됐다</h1>
	<h2>나가</h2>
	<h3><%= exception.getMessage() %></h3>
	<a href="../index.jsp">메인으로</a>
</body>
</html>