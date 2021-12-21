<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>

<table class="info">
	<tr>
		<td>회원번호</td>
		<td>${member.u_num}</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${member.u_id}</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>${member.u_age}</td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
			<c:choose>
				<c:when test="${member.u_gender eq 'male'}">남성</c:when>
				<c:otherwise>여성</c:otherwise>
			</c:choose>
		</td>
	</tr>
	<tr>
		<td>회원등록일</td>
		<td>
			<f:formatDate value="${member.u_regdate}" pattern="yyyy-MM-dd hh:mm:ss"/>
		</td>
	</tr>
	<tr>
		<td colspan=2>
			<input type="button" onclick="location.href='main.jsp';" value="메인" /> | 
			<input type="button" onclick="withdraw('${member.u_id}');" value="회원탈퇴" />
		</td>
	</tr>
</table>

<script>
	function withdraw(u_id) {
		if (u_id == 'admin') {
			alert('넌 못해 임마 ㅎ');
			return;
		}

		if (confirm('진짜 탈퇴할겨? ㅠㅠ')) {
			location.href = 'withdraw.jsp?u_id=' + u_id;
		}
	}
</script>