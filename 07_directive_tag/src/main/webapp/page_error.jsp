<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
	<h3>Error Page</h3>
	<h1>오류떴다 뭐하냐 ㅋㅋㅋㅋㅋㅋㅋㅋ</h1>
	<hr/>
	<a href="index.jsp">메인으로 돌아가기</a><br/>
	<%=exception.getMessage() %>
</body>
</html>