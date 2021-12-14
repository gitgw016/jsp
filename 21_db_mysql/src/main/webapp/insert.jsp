<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC CONNECTION INSERT TEST</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		Connection conn = null;
		Statement stmt = null;
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/smartWeb";
		String user = "smartWeb";
		String pass = "12345";
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,pass);
			out.print("<h3>database 됐다~</h3>");
			stmt = conn.createStatement();
			String sql = "INSERT INTO member(name,addr) "+" VALUES('"+name+"','"+addr+"')";
			System.out.println("sql : "+sql);
			int result = stmt.executeUpdate(sql);
			if(result > 0){
				out.print("회원정보 등록함<br/>");
			}else{
				out.print("회원정보 등록안됨<br/>");	
			}
		}catch(Exception e){
			out.print("<h3>database 안됐다~</h3>");
			out.print("<h2>"+e.toString()+"</h2>");
		}finally{
			stmt.close();
			conn.close();
		}
	%>
	<a href="index.jsp">메인으로</a>
</body>
</html>