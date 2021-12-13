<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, vo.*"%>
<!-- withdraw.jsp -->
<jsp:useBean id="memberList" class="java.util.ArrayList" type="List<MemberVO>" scope="application"></jsp:useBean>
<jsp:useBean id="loginMember" class="vo.MemberVO" scope="session"></jsp:useBean>
<%
	System.out.println(memberList);
	memberList.remove(loginMember);
	response.sendRedirect("logOut.jsp");
	System.out.println(memberList);
%>