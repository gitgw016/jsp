<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xmlGenerator.jsp</title>
<style>
	bmg{
		padding:10px;
	}
	#bmgId{
		color:white;
	}
	.bmgClass{
		background-color:black;
	}
</style>
</head>
<body>
	<!-- custom tag 추가 -->
	<jsp:element name="bmg">
		<jsp:attribute name="id">bmgId</jsp:attribute>
		<jsp:attribute name ="class">bmgClass</jsp:attribute>
		<jsp:body>bmg id 속성 값은 bmgId</jsp:body>
	</jsp:element>
	<!-- <bmg id="bmgId" class="bmgClass">bmg id 속성 값은 bmgId</bmg> -->
</body>
</html>