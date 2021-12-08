<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attrTest4.jsp</title>
</head>
<body>
	<%
		pageContext.setAttribute("aaa", "안홍");
		request.setAttribute("bbb", "배액만규");
	%>
	pageContext : <%=pageContext.getAttribute("aaa") %><br/>
	request : <%=request.getAttribute("bbb") %><br/>
	session : <%=session.getAttribute("email") %><br/>
	application : <%=application.getAttribute("id") %><br/>
	
	<%
		// 사용자에게 보여줄 화면을 저장 및 request값을 그대로 노출
		RequestDispatcher rd = request.getRequestDispatcher("attrResult.jsp");
		// (4번 무시하고 result로 바로감)
		rd.forward(request,response);
	%>
	<!-- <a href="attrResult.jsp">결과 확인</a> -->
</body>
</html>