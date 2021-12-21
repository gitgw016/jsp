<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<f:requestEncoding value="utf-8"/>
<jsp:useBean id="updateMember" class="vo.MemberVO"/>
<jsp:setProperty property="*" name="updateMember"/>
<s:update dataSource="jdbc/MySqlDB">
	UPDATE smart_member SET u_pass = ? , u_age = ? , u_gender = ? WHERE u_num = ?
	<s:param>${updateMember.u_pass}</s:param>
	<s:param>${updateMember.u_age}</s:param>
	<s:param>${updateMember.u_gender}</s:param>
	<s:param>${updateMember.u_num}</s:param>
</s:update>
<script>
	alert('${updateMember.u_id} : 수정 했다 ㅇㅇ');
	location.href="main.jsp?page=member";
</script>