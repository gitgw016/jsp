<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	String selectPage = request.getParameter("page");
	if(selectPage == null){
		selectPage = "guestbook_list.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="<%=selectPage %>"/>
</body>
</html>