<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sqlForm.jsp</title>
</head>
<body>
	<form action="sqlResult.jsp" method="post">
		id : <input type="text" name="id" /><br/>
		pass : <input type="password" name="pass" /><br/>
		name : <input type="text" name="name" /><br/>
		addr : <input type="text" name="addr" /><br/>
		phone : <input type="text" name="phone" /><br/>
		gender : <label><input type="radio" name="gender" value="남성"/>남성 </label><label><input type="radio" name="gender" value="여성" checked/> 여성</label><br/>
		age : <input type="number" name="age"/><br/>
		<button>확인</button>
	</form>
</body>
</html>