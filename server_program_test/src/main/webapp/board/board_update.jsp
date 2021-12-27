<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
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
	<jsp:setProperty property="board_pass" name="det" value="${m.board_pass}"/>
</c:forEach>
	<h1>게시물 수정</h1>
	<form action="board_update_submit.jsp?board_num=${param.board_num}" method="post">
		<table>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="board_name" value="${det.board_name}"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="board_pass" required /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="board_title" value="${det.board_title}"/></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows=10 cols=40 name="board_content">${det.board_content}</textarea></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" value="수정완료"/></td>
			</tr>
		</table>
	</form>
</body>
</html>