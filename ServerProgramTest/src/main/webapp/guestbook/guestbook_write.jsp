<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>방명록 메시지 작성 확인</title>
</head>
<body>
<!-- 방명록 작성 후 처리 결과 출력 code 작성 -->
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
String sql = "INSERT INTO test_guestbook VALUES(null,?,?,?)";
String guest = request.getParameter("guestName");
System.out.println("guest : "+guest);
String guestPw = request.getParameter("password");
String text = request.getParameter("text");
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, guest);
pstmt.setString(2, guestPw);
pstmt.setString(3, text);
int result = pstmt.executeUpdate();
System.out.println(result);
if(result < 1){
	out.print("<h3>방명록 등록 실패</h3>");
}else{
	out.print("<h3>방명록 등록 성공</h3>");
}
%>
방명록에 메시지를 남겼습니다.
<a href="guestbook_list.jsp">[목록 보기]</a>
<!-- 방명록 작성 후 처리 결과 출력 code 작성 end-->
</body>
</html>