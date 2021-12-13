<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.*"%>
<!-- info.jsp -->
<jsp:useBean id="loginMember" class="vo.MemberVO" scope="session"/>
<%
	if(loginMember.getId() == null){
		out.print("<script>");
		out.print("alert('로그인 먼저 하라');");
		out.print("location.href='index.jsp?page=login';");
		out.print("</script>");
		return;
	}
%>
<table>
	<tr>
		<td colspan="2"><h1>회원정보</h1></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty property="id" name="loginMember"/></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty property="name" name="loginMember"/></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><%=loginMember.getAddr() %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%=loginMember.getPhone() %></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><input type="radio" <%=loginMember.getGender().equals("남성") ? "checked" : "disabled" %>/> 남성 </td>
		<td><input type="radio" <%=loginMember.getGender().equals("여성") ? "checked" : "disabled" %>/> 여성</td>
	</tr>
	<tr>
		<td>나이</td>
		<td><%=loginMember.getAge() %></td>
	</tr>
	<tr>
		<td colspan="2"><button type="button" onclick="location.href='index.jsp';">메인으로 </button><button type="button" onclick="withdraw();"> 회원탈퇴</button></td>
	</tr>
</table>
<script>
	function withdraw(){
		var bool = confirm("진짜 탈퇴할거임?");
		if(bool){
			location.href="withdraw.jsp";
		}else{
			
		}
	}
</script>