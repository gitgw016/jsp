<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attrTest1.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	if(id != null){
		// application은 서버가 종료할때까지 저장
		application.setAttribute("id",id);
	}
	// pageContext는 해당 페이지에서만 표현, 다음 페이지로 이동 시 소멸
	pageContext.setAttribute("pageContextId", id);
%>

<h3>request param 아이디 : <%=id%></h3>
<h3>애플리케이션 id : <%=application.getAttribute("id") %></h3>
<h3>pageContext id : <%=pageContext.getAttribute("pageContextId") %></h3>
	<form action="attrTest2.jsp" method="post">
		이메일 : <input type="email" name="email" required />
		<button>확인</button>
	</form>
</body>
</html>