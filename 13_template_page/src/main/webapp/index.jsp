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
	
	table tr td:first-child{
		border-right:1px solid gray;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th colspan=2 height="150">
			<!-- Header -->
			<jsp:include page="header.jsp"/>
			</th>
		</tr>
		<tr>
			<td>
			<!-- side navigation -->
			<jsp:include page="aside.jsp"/>
			</td>
			<td width="790">
			<!-- content -->
			<jsp:include page="<%=nextPage %>"/>
			</td>
		</tr>
		<tr>
			<th colspan="2" height="150">
			<!-- footer -->
			<jsp:include page="footer.jsp"/>
			</th>
		</tr>
	</table>
</body>
</html>