<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("board_title");
	String auth = request.getParameter("board_auth");
	String content = request.getParameter("board_content");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String message = "";
	
	try{
		DataSource ds = (DataSource)new InitialContext().lookup("java:comp/env/java/MySqlDB");
		conn = ds.getConnection();
		System.out.println("DB 연결 성공 : "+conn);
		String sql = "INSERT INTO board_test "+" VALUES(null,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,title);
		pstmt.setString(2,auth);
		pstmt.setString(3,content);
		int result = pstmt.executeUpdate();
		if(result > 0){
			message = "작성 성공 ^^7";	
		}else{
			message = "작성 실패. 제대로 써라 임마";
		}
		// message = (result>0) ? "작성 성공 ^^7" : "작성 실패. 제대로 써라 임마";
	}catch(Exception e){
		e.printStackTrace();
		message = "작성 실패. 뭐가 잘못됐다.";
	}finally{
		if(pstmt != null)pstmt.close();
		if(conn != null)conn.close();
%>
	<script>
		alert('<%=message%>');
		location.href='index.jsp';
	</script>
<%
	}
%>