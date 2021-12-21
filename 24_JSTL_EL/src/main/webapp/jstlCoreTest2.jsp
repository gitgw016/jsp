<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlCoreTest2.jsp</title>
</head>
<body>
	<h1>제어문</h1>
	<c:set var="myCar" value="빨강"/>
	<c:if test="${myCar eq '파랑'}">
		파란색!!<br/>
	</c:if>
	<c:if test="${myCar ne '파랑'}">
		빨강!!<br/>
	</c:if>
	<c:set var="grade" value="30"/>
	<c:choose>
		<c:when test="${grade >= 90}">A</c:when>
		<c:when test="${grade >= 80}">B</c:when>
		<c:when test="${grade >= 70}">C</c:when>
		<c:otherwise>F</c:otherwise>
	</c:choose>
	
	<%
		int[] num = {10,9,8,7,6,5,4,3,2,1};
		request.setAttribute("numArray", num);
	%>
	<br/>
	<c:forEach var="n" items="${numArray}">${n} &nbsp;&nbsp;</c:forEach><br/>${n} <!-- 영역 밖 불가 -->
	<br/>
	<c:forEach var="i" begin="1" end="100" step="1"> ${i} &nbsp;</c:forEach>
	<br/>
	<c:set var="data" value="배민구,오정만,백만규,안주홍,우성식"/>
	<!-- 특정 문자열에서 구분자를 이용하여 문자를 잘라내서 변수에 값을 저장 -->
	<c:forTokens var="name" items="${data}" delims=",">${name} &nbsp;</c:forTokens>
	<%
		java.util.ArrayList<String> list = new java.util.ArrayList<>();
		list.add("배민구");
		list.add("앗민구");
		list.add("쉐민구");
		list.add("배밍구");
		list.add("붸민구");
		list.add("배밍쿠");
		request.setAttribute("minguList", list);
	%>
	<br/>
	<c:choose>
		<c:when test="${!empty minguList}">
			<c:forEach var="mingu" items="${minguList}">${mingu} &nbsp;</c:forEach>
		</c:when>
		<c:otherwise>
			없다
		</c:otherwise>
	</c:choose>
	
</body>
</html>