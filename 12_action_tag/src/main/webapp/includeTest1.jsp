<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeTest1.jsp</title>
</head>
<body>
	<h1>여기는 include test1.jsp 입니다.</h1>
	<%-- <%@ include file="includeTest2.jsp?name=BMG" %> --%> <!-- 한개의 파일에 더함 / 못찾음 -->
	<%-- <jsp:include page="includeTest2.jsp?name=BMG"/> --%> <!-- 파일 2개 / 찾음-->
	<jsp:include page="includeTest2.jsp">
		<jsp:param name="name" value="OJM" />	<!-- 빨간줄 없이 전달 -->
	</jsp:include>
</body>
</html>