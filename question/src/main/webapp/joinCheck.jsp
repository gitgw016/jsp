<%@page import="vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="joinMember" class="vo.MemberVO" scope="application"></jsp:useBean>
<jsp:setProperty property="*" name="joinMember"/>
<%=application.getAttribute("joinMember") %>
<script>
	alert("가입성공");
	location.href="index.jsp?page=login";
</script>


</body>
</html>