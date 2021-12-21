<%@page import="javax.naming.*, javax.sql.*, java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/MySqlDB");
		Connection conn = ds.getConnection();
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath+"/guestbook/guestbook_list.jsp");
		out.print("thㅓ엉공");
	}catch(Exception e){
		out.print("쉴패애");
	}
//192.168.1.113
%>
<%-- <jsp:forward page="guestbook/guestbook_list.jsp"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>