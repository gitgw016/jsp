<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,vo.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%String member = request.getParameter("id"); %>
<%=member%>

<jsp:useBean id="memberList" class="java.util.ArrayList" type="List<MemberVO>" scope="application"/>
<jsp:useBean id="joinMember" class="vo.MemberVO" scope="application"/>
<jsp:setProperty name="joinMember" property="*"/>
<%System.out.println("joinMember : "+joinMember);%>
<%
	if(memberList.contains(joinMember)){
		out.print("<script>");
		out.print("alert('이미 존재하는 사용자 아이디 입니다.');");
		out.print("history.back();");
		out.print("</script>");
	}else{
		memberList.add(joinMember);
%>
	<script>
		alert("가입 성공");
		location.href="main.jsp?page=login";
	</script>
<% } %>
