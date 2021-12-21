<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elTestForm.jsp</title>
</head>
<body>
	<h1>EXPRESSION LANGUAGE - 표현언어</h1>
	<!-- 4대 영역객체나 parameter 값을 쉽게 jsp 페이지 내부에서 사용할 수 있도록 지원하는 언어 -->
<%
	pageContext.setAttribute("scopeName", "pageContext영역");
	request.setAttribute("scopeName", "request 영역");
	session.setAttribute("scopeName", "session 영역");
	application.setAttribute("scopeName", "application 영역");
%>
page영역 : <%=pageContext.getAttribute("scopeName") %><br/>
request영역 : <%=request.getAttribute("scopeName") %><br/>
session영역 : <%=session.getAttribute("scopeName") %><br/>
application영역 : <%=application.getAttribute("scopeName") %><br/>
<hr/>
page 영역 EL 속성 값 : ${pageScope.scopeName}<br/>
request 영역 EL 속성 값 : ${requestScope.scopeName}<br/>
session 영역 EL 속성 값 : ${sessionScope.scopeName}<br/>
application 영역 EL 속성 값 : ${applicationScope.scopeName}<br/>
<hr/>
EL scopeName : ${scopeName}<br/>
<%
	session.setAttribute("test", "bae");
	application.setAttribute("test", "application mingu");
%>
EL test : ${test}<br/>
EL application test : ${applicationScope.test}<br/>
<hr/>
<form action="elTest.jsp" method="post">
	<input type="text" name="aaa" />
	<input type="submit" value="확인"/>
</form>
</body>
</html>