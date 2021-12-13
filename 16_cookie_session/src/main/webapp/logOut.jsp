<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logOut.jsp</title>
</head>
<body>
	<%
		//session.removeAttribute("loginMember");
		// 45F0373FFFB7C275C756DDC6AF593707
		// 45F0373FFFB7C275C756DDC6AF593707
		session.invalidate();
		// EC63143B49F7F0E40F25BB82E2430E7B
		// 45F0373FFFB7C275C756DDC6AF593707
		// Cookie 삭제
		Cookie cookie = new Cookie("id","");
		cookie.setMaxAge(0);
		cookie.setPath("/");
		response.addCookie(cookie);
	%>
	<script>
		alert('잘가라');
		location.href="index.jsp";
	</script>
</body>
</html>