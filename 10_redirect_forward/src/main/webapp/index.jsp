<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX JSP</title>
</head>
<body>
	<!-- response : sendRedirect -->
	<!-- request(dispatcher) : forward  -->
	<%
	pageContext.setAttribute("aaa", "배민구");
	request.setAttribute("aaa", "오정만");
	%>
	<h3><%=pageContext.getAttribute("aaa") %></h3>
	<h3><%=request.getAttribute("aaa") %></h3>
	<a href="response?id=qoalsrn">response send redirect</a>
	<form action="response" method="post">
		<input type="text" name="id" value="qoalsrn"/>
		<button>확인</button>
	</form>
	<br/>
	<a href="dispatcher?id=qoalsrn">dispatcher forward</a>
</body>
</html>