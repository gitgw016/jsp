<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, util.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>방명록 메시지 삭제함</title>
</head>
<body>
<br/>
<%
	request.setCharacterEncoding("utf-8");
	String msg = "";
	String paramID = request.getParameter("id");
	String password = request.getParameter("password");
	
	Connection conn = DBCPUtil.getConnection();
	PreparedStatement pstmt = null;
	try{
		int id = Integer.parseInt(paramID);
		String sql = "DELETE FROM test_guest WHERE id = ? AND password = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, password);
		msg = (pstmt.executeUpdate() > 0) ? "삭제 성공" : "삭제 실패";
	}catch(Exception e){
		msg = "삭제 실패";
	}finally{
		DBCPUtil.close(pstmt,conn);
	}
%>
<!-- 삭제 확인 처리  알림 code 작성-->
<h3><%=msg %></h3>
<a href="guestbook_list.jsp">[목록 보기]</a>
</body>
</html>