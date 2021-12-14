<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- update.jsp -->
<%@ include file="connection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String mNum = request.getParameter("num");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	Statement stmt = null;
	try{
		int num = Integer.parseInt(mNum);
		stmt = conn.createStatement();
		String sql = "UPDATE member SET "+ " name='"+name+"' ,"+" addr='"+addr+"' "+" WHERE num="+num;
		System.out.println("sql : "+sql);
		stmt.executeUpdate(sql);
		out.println("<script>alert('수정완료');location.href='memberList.jsp';</script>");
	}catch(Exception e){
		out.println("<script>alert('수정실패');history.go(-1);</script>");
	}finally{
		stmt.close();
		conn.close();
	}
%>