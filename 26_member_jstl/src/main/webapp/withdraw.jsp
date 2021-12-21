<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<c:choose>
	<c:when test="${empty member || member.u_id eq 'admin' || member.u_id ne param.u_id}">
		<script>alert("뭐하냐?");
		history.back();
		</script>
	</c:when>
	<c:otherwise>
		<s:update dataSource="jdbc/MySqlDB">
			UPDATE smart_member SET u_join = 'N' WHERE u_id = '${param.u_id}'
		</s:update>
		<script>
			alert('잘가 ㅠㅠ');
			location.href="logOut.jsp";
		</script>
	</c:otherwise>
</c:choose>
