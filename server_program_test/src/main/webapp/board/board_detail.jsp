<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:query var="r" dataSource="jdbc/MySqlDB">SELECT * FROM test_board WHERE board_num = ?
	<s:param>${param.board_num}</s:param>
</s:query>
<c:forEach var="m" items="${r.rows}">
	<jsp:useBean id="det" class="vo.TestBoardVO" scope="page"/>
	<jsp:setProperty property="board_name" name="det" value="${m.board_name}"/>
	<jsp:setProperty property="board_title" name="det" value="${m.board_title}"/>
	<jsp:setProperty property="board_content" name="det" value="${m.board_content}"/>
	<jsp:setProperty property="board_readcount" name="det" value="${m.board_readcount}"/>
</c:forEach>
<s:update dataSource="jdbc/MySqlDB">UPDATE test_board SET board_readcount = ? WHERE board_num = ?
	<s:param>${det.board_readcount +1}</s:param>
	<s:param>${param.board_num}</s:param>
</s:update>
	<h1>게시물 상세내용</h1>
	<table>
		<tr>
			<td>작성자</td>
			<td>${det.board_name}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${det.board_title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>
				<textarea readonly cols=40 rows=10>${det.board_content}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<a href="board_update.jsp?board_num=${param.board_num}">[수정]</a>
				<a href="board_delete.jsp?board_num=${param.board_num}">[삭제]</a>
				<a href="board_list.jsp">[목록]</a>
			</td>
		</tr>
	</table>
</body>
</html>