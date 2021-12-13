<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String nextPage = request.getParameter("page");
 	if(nextPage == null){
 		nextPage = "default";
 	}
 	nextPage = nextPage+".jsp";
 	System.out.println("nextPage : "+nextPage);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<style>
	table{
		margin:auto;
		width:900px;
		border:1px solid black;
		text-align:center;
	}
	
	#head{
		border-bottom : 1px solid gray;
	}
	
	#bot{
		border-top : 1px solid gray;
	}
</style>
</head>
<body>
	<table>
		<tr >
			<td width="600" id="head">
			</td>
			<!-- Header -->
			<td height="100" id="head">
			<jsp:include page="header.jsp"/>
			</td>
		</tr>
		<tr>
			<!-- 기본 화면 -->
			<td height="500"colspan=2>
			<jsp:include page="<%=nextPage %>"/>
			</td>
		</tr>
		<tr>
			<!-- footer -->
			<td height="100" colspan=2 id="bot">
			<jsp:include page="footer.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>