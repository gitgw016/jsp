<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header>
	<ul>
		<li><a href="main.jsp">홈</a></li>
		<%
			if(request.getParameter("name") != null){
				%>
				<li><a href="main.jsp?page=info"></a><%=request.getParameter("name")%>님 반갑습니다.</li>
		<%
			}else{%>
				<li><a href="main.jsp?page=login">로그인</a></li>
		<%	} %>
				<li><a href="main.jsp?page=join">회원가입</a></li>
	</ul>
</header>