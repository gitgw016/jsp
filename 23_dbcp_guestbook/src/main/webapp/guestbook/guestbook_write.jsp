<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,util.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String msg="";
%>
<jsp:useBean id="guestBook" class="vo.GuestBook"/>
<jsp:setProperty name="guestBook" property="*"/>
<%-- <%=guestBook %> --%>
<%
	Connection conn = DBCPUtil.getConnection();
	PreparedStatement pstmt = null;
	String sql = "INSERT INTO test_guest(guestName,password,message) "+" VALUES(?,?,?)";
	try{
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, guestBook.getGuestName());
	pstmt.setString(2, guestBook.getPassword());
	pstmt.setString(3, guestBook.getMessage());
	msg = (pstmt.executeUpdate() > 0) ? "방명록 등록 성공" : "방명록 등록 실패";
	}catch(Exception e){
		msg = "방명록 등록 실패";
		System.out.println(e.toString());
	}finally{
		DBCPUtil.close(pstmt,conn);
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>방명록 메시지 작성 확인</title>
</head>
<body>

<!-- 방명록 작성 후 처리 결과 출력 code 작성 -->
<h3><%=msg %></h3>


<!-- 방명록 작성 후 처리 결과 출력 code 작성 end-->
<a href="guestbook_list.jsp">[목록 보기]</a>
</body>
</html>