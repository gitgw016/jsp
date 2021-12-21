<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlFmtTest.jsp</title>
</head>
<body>
	<%-- <% request.setCharacterEncoding("utf=8"); %> --%>
	<f:requestEncoding value="utf-8"/>
	<c:out value="${param.test}"/>
	<c:out value="${param.encode}"/>
	<c:if test="${!empty param.encode}">
		<c:set var="encode" value="${param.encode}"/>
	</c:if>
	<!-- response로 전달된 클라이언트의 지역 지정 -->
	<f:setLocale value="${encode}"/>
	<br/>
	<%= response.getLocale() %>
	<br/>
	<!-- bundle -->
	<f:bundle basename="bundle">
		<f:message key="name"/>
		<f:message key="name_en"/>
	</f:bundle>
	<br/>
	<f:bundle basename="prop/bundle">
		<f:message key="name"/>
		<f:message key="addr">
			<f:param value="mingu's"/>
			<f:param value="69"/>
		</f:message>
		<f:message key="phone"/>
	</f:bundle>
	<br/> <hr/>
	<f:bundle basename="prop/bundle">
		<f:message var="name" key="name"/>
		<f:message var="addr" key="addr">
			<f:param value="밍구네"/>
			<f:param value="69"/>
		</f:message>
		<f:message var="phone" key="phone"/>
	</f:bundle>
	${name} - ${addr} - ${phone}
	<hr/>
	<h3>Format Date</h3>
	<!-- 현재시간 정보를 저장하고 있는 Date 객체 생성 -->
	<jsp:useBean id="now" class="java.util.Date" scope="page"/>
	<c:out value="${now}" /><br/>
	<!-- 문자열 정보를 시간 정보르 변경 파싱 -->
	<f:parseDate var="now" value="2021-12-20" pattern="yyyy-MM-dd" scope="page"/>
	<c:out value="${now}"/><br/>
	<!-- type : default date, time(시간) date(날짜) both(둘다) -->
	type = "date" : <f:formatDate value="${now}" type="date"/><br/>
	dateStyle = "full" : <f:formatDate value="${now}" dateStyle="full"/> <br/>
	dateStyle = "long" : <f:formatDate value="${now}" dateStyle="long"/> <br/>
	dateStyle = "medium" : <f:formatDate value="${now}" dateStyle="medium"/> <br/>
	dateStyle = "short" : <f:formatDate value="${now}" dateStyle="short"/> <br/>
	type = "time" : <f:formatDate value="${now}" type="time"/><br/>
	type = "both" : <f:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br/>
	pattern : <f:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss"/>
	<br/><hr/>
	<h3>FORMAT NUMBER</h3>
	<c:set var="price" value="10000000"/>
	<f:formatNumber var="numberType" type="number" value="${price}"/>
	숫자 : ${numberType} <br/>
	<!-- currency 통화 형식 -->
	기호 : <f:formatNumber value="${price}" type="currency" currencySymbol="￦"/><br/>
	국가 코드 : <f:formatNumber value="${price}" type="currency" currencyCode="KRW"/><br/>
	<f:setLocale value="en_US"/>
	dollar : <f:formatNumber value="${price}" type="currency"/><br/>
	<f:setLocale value="zh_CN"/>
	위안(¥) : <f:formatNumber value="${price}" type="currency"/><br/>
	<f:setLocale value="ja_JP"/>
	엔화(¥) : <f:formatNumber value="${price}" type="currency"/><br/>
	
	pattern : <f:formatNumber value="${price}" pattern="￦0,000.00"/>
</body>
</html>