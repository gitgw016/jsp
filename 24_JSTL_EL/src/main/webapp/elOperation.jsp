<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elOperation.jsp</title>
</head>
<body>
	<h3>\${5+7} : ${5+7}</h3>
	<h3>\${5 == 7} : ${5 == 7}</h3>
	<h4>\${5 &lt; 7} : ${5 < 7}</h4>
	<h3>\${5+7 == 8 ? true : false} : ${5+7 == 8 ? true : false}</h3>
	<%
		String s = new String("hihi");
		String s1 = new String("h1");
		String s2 = new String("sessionAttribute");
		String s3 = new String("sessionAttribute");
		request.setAttribute("s", s);
		request.setAttribute("s1", s1);
		session.setAttribute("s2", s2);
		session.setAttribute("s3", s3);
	%>
	<!-- 기본 비교는 equals method를 이용 -->
	<h3>\${s1 == s} : ${s == s1}</h3>
	<h3>\${s2 == s3} : ${s2 == s3}</h3>
	<h3>\${s1 != s} : ${s1 != s}</h3>
	<h3>\${s1 eq s} : ${s1 eq s}</h3> <!-- equals -->
	<h3>\${s1 ne s} : ${s1 ne s}</h3> <!-- not equals -->
	<h3>${s != s1 && s2 != s3}</h3>
	<h3>${s != s1 and s2 != s3}</h3>
	<hr/>
	<h3>${s ne s1 || s2 ne s3 }</h3>
	<h3>${s ne s1 or s2 ne s3 }</h3>
	<hr/>
	<h3>${s eq "hihi"}</h3>
	<%
		java.util.ArrayList<String> list = null;
		request.setAttribute("list", list);
	%>
	<h3>\${empty list} : ${empty list}</h3>
	<%
		list = new java.util.ArrayList<>();
		request.setAttribute("list", list);
	%>
	<h3>\${empty list} : ${empty list}</h3>
	
	<%
		list.add("배민구 일어나라");
	%>
	<h3>\${empty list} : ${empty list}</h3>
	<h3>\${!empty list} : ${!empty list}</h3>
	<h3>\${not empty list} : ${not empty list}</h3>
	<h3>${list}</h3>
</body>
</html>