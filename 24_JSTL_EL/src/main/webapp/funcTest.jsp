<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>funcTest.jsp</title>
</head>
<body>
	<c:set var="test" value="Hello, mingu World Area!"/>
	toUpperCase : ${fn:toUpperCase(test)}<br/>
	toLowerCase : ${fn:toLowerCase(test)}<br/>
	
	<c:set var="text" value="mingu.png"/>
	startsWith : ${fn:startsWith(text,"mingu")}<br/>
	endsWith : ${fn:endsWith(text,".png")}<br/>
	<hr/>
	contains : ${fn:contains(test,"area")} <br/>
	containsIgnoreCase : ${fn:containsIgnoreCase(test,"area")}<br/>
	<hr/>
	indexOf : ${fn:indexOf(test,"mingu")}<br/>
	substringBefore : ${fn:substringBefore(test,"mingu")}<br/>
	substringAfter :  ${fn:substringAfter(test,"mingu")}<br/>
	<!-- substring(text,startIndex, endIndex(-1)) -->
	substring : ${fn:substring(test,fn:indexOf(test,"mingu"),12)}<br/>
	<hr/>
	<c:set var="strs" value="${fn:split(test,' ')}"/>
	<c:forEach var="str" items="${strs}">
		${str}<br/>
	</c:forEach>
	<hr/>
	${fn:join(strs," Bae ")}
	<c:set var="err" value="<div style='border:1px solid red;'>민구하세요</div>"/>
	${err}s
	escapeXml = ${fn:escapeXml(err)}<br/>
	<hr/>
	${fn:replace(err,'<','&rt;')}<br/>
</body>
</html>