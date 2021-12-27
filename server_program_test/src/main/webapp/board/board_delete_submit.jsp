<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<f:requestEncoding value="utf-8"/>
<s:query var="r" dataSource="jdbc/MySqlDB">
	SELECT * FROM test_board WHERE board_num = ? AND board_pass = ?
	<s:param>${param.board_num}</s:param>
	<s:param>${param.board_pass}</s:param>
</s:query>
<c:choose>
<c:when test="${r.rowCount > 0}">
	<s:update dataSource="jdbc/MySqlDB">
	DELETE FROM test_board WHERE board_num = ? AND board_pass = ?
	<s:param>${param.board_num}</s:param>
	<s:param>${param.board_pass}</s:param>
	</s:update>
	<script>
		alert('삭제완료');
		location.href="board_list.jsp";
	</script>
</c:when>
<c:otherwise>
	<script>
		alert('삭제실패! 정보 불일치');
		history.go(-1);
	</script>
</c:otherwise>
</c:choose>
<!-- 게시글 삭제 요청 결과 처리 -->
    