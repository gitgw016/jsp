<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attrResult.jsp</title>
</head>
<body>
	pageContext : <%=pageContext.getAttribute("aaa") %><br/>
	request : <%=request.getAttribute("bbb") %><br/>
	session : <%=session.getAttribute("email") %><br/>
	application : <%=application.getAttribute("id") %><br/>
</body>
</html>