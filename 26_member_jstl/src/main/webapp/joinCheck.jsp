<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<f:requestEncoding value="utf-8"/>
<c:catch var="e">
	<jsp:useBean id="joinMember" class="vo.MemberVO"/>
	<jsp:setProperty property="*" name="joinMember"/>
</c:catch>

<s:query var="rs" dataSource="jdbc/MySqlDB">
	SELECT * FROM smart_member WHERE u_id = ?
	<s:param>${joinMember.u_id}</s:param>
</s:query>
<c:choose>
	<c:when test="${!empty e}">
		<script>
			alert('정보 잘못됨. 다시해라 ㅅㄱ');
			history.go(-1);
		</script>
	</c:when>
	<c:when test="${!empty rs.rows}">
		<script>
			alert('누가 쓰는 아이디다. 딴거쓰라');
			history.go(-1);
		</script>
	</c:when>
	<c:otherwise>
		<s:update dataSource="jdbc/MySqlDB">
			INSERT INTO smart_member(u_id,u_pass,u_age,u_gender) VALUES(?,?,?,?)
			<s:param>${joinMember.u_id}</s:param>
			<s:param>${joinMember.u_pass}</s:param>
			<s:param>${joinMember.u_age}</s:param>
			<s:param>${joinMember.u_gender}</s:param>
		</s:update>
		<script>
			alert('가입성공 ㅊㅋ ^^');
			location.href="main.jsp?page=login";
		</script>
	</c:otherwise>
</c:choose>