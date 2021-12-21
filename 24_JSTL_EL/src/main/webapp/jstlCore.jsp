<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlCore.jsp</title>
</head>
<body>
	<!-- 특정 영역 객체에 속성값을 추가 -->
	<c:set var="varPage" value="pageContext 영역" scope="page"/>
	<%
		String pageABC = "page영역에 저장";
		pageContext.setAttribute("pageABC", pageABC);
	%>
	EL : ${pageScope.varPage}<br/>
	EL : ${pageABC}<br/>
	
	<c:set var="request1" value="request 영역" scope="request"/>
	<c:set var="session1" value="session 영역" scope="session"/>
	<c:set var="application1" value="application 영역" scope="application"/>
	request1 : ${request1}<br/>
	<c:remove var="request1" scope="request"/>
	request1 : ${request1}<br/>
	<hr/>
	<c:out value="${session1}"/><br/>
	<c:set var="test1" value="<script>alert('밍구밍구');</script>"/>
	<%-- ${test1} 보안상 취약--%>
	<c:out value="${test1}" escapeXml="true"/> <!-- true시 단순 문자열 취급 -->
	<%-- <c:out value="${test1}" escapeXml="false"/> --%>
	<br/>
	<c:out value="${aaa}" default="aaa없다 default는 출력 기본값"/><br/>
	<c:out value="${aaa}">default="aaa없다 default는 출력 기본값"/></c:out><br/>
	
	<jsp:useBean id="member" class="vo.MemberVO" scope="page"/>
	${member.id} | ${member.pass}<br/> <!-- getter -->
	
	<c:set target="${member}" property="id" value="qoalsrn"/>
	${member.id} | ${member.pass}<br/>
	
	<%-- <% response.sendRedirect("jstlCoreTest2.jsp"); %> --%>
	<%-- <c:redirect url="jstlCoreTest2.jsp"/> 이렇게 가능하다--%>
</body>
</html>