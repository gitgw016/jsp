<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("board_num");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String msg = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/java/MySqlDB");
		conn = ds.getConnection();
		String sql = "DELETE FROM board_test WHERE board_num = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(num));
		int result = pstmt.executeUpdate();
		msg = (result > 0) ? "삭제했다. ㅂㅂ" : "삭제 할게 없다. ㅉㅉ";
	}catch(Exception e){
		msg = "잘못됐다 = 삭제 못함 ㅅㄱ";		
	}finally{
		if(pstmt != null)pstmt.close();
		if(conn != null)conn.close();
		out.print("<script>alert('"+msg+"');location.href='index.jsp';</script>");
	}
%>