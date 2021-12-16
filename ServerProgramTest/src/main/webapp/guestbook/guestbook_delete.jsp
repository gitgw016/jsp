<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/smartWeb";
String user = "smartWeb";
String pass = "12345";
Class.forName(driver);
conn = DriverManager.getConnection(url,user,pass);
String id = request.getParameter("id");
System.out.println(id);
%>
<!DOCTYPE html>
<html>
<head>
	<title>방명록 메시지 삭제함</title>
</head>
<body>
<br/>
<!-- 삭제 확인 처리 알림 code 작성-->
<%
String sql = "DELETE FROM test_guestbook WHERE id = ? AND password = ?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, request.getParameter("id"));
pstmt.setString(2, request.getParameter("password"));
int result = pstmt.executeUpdate();
System.out.println(result);
if(result < 1){
	out.print("<h3>방명록 삭제 실패하였습니다.</h3>");
}else{
	out.print("<h3>방명록을 삭제하였습니다.</h3>");
}
%>
<a href="guestbook_list.jsp">[목록 보기]</a>
</body>
</html>