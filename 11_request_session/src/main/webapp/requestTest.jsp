<%@ page language="java" contentType
="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest.jsp</title>
</head>
<body>
	<form action="requestResult.jsp" method="post" > <!-- enctype="multipart/form-data" -->
		이름 : <input type="text" name="name"/><br/>
		성별 : <input type="radio" name="gender" value="male">남
			  <input type="radio" name="gender" value="female">여
			  <input type="radio" name="gender" value="mingu">민구<br/>
		취미 : <input type="checkbox" name="hobby" value="꼬긁"/> 꼬긁
			  <input type="checkbox" name="hobby" value="겨울잠"/> 겨울잠
			  <input type="checkbox" name="hobby" value="내리기"/> 내리기
			  <input type="checkbox" name="hobby" value="기타"/> 기타<br/>
			  <button>확인</button>
	</form>
</body>
</html>