<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, vo.*"%>
<!-- joinCheck.jsp -->
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberList" class="java.util.ArrayList" type="List<MemberVO>" scope="application"/>
<jsp:useBean id="joinMember" class="vo.MemberVO" scope="page"/>
<jsp:setProperty name="joinMember" property="*"/>
<%-- <%=joinMember%> --%>
<%
	if(memberList.contains(joinMember)){
		// 아이디 중복
		out.print("<script>");
		out.print("alert('누가 쓰고있는 아이디다.');");
		// 이전 페이지로 이동
		out.print("history.back();");
		out.print("</script>");
	}else{
		// 존재하지 않는 아이디 - 등록
		memberList.add(joinMember);
%>
	<script>
		alert("가입 성공");
		location.href="index.jsp?page=login";
	</script>
<% } %>		
	

