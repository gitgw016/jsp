<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.*,java.util.*"%>
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

	<h1>게시글 목록</h1>
	<a href="board_write.jsp">게시글 작성하러 가기</a>
	<table border=1>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성시간</th>	
			<th>조회수</th>
		</tr>
		<!-- 게시글 목록 -->
	<!-- 페이지 블럭 작성  -->
<jsp:useBean id="pm" class="util.PageMaker"/>
<c:if test="${!empty param.page}">
<c:set target="${pm.cri}" property="page" value="${param.page}"/>
</c:if>
<s:query var="r" dataSource="jdbc/MySqlDB" sql="SELECT count(*) AS count FROM test_board"/>
<c:set target="${pm}" property="totalCount" value="${r.rows[0].count}"/>
<c:set target="${pm}" property="displayPageNum" value="5"/>
<jsp:useBean id="mlist" class="java.util.ArrayList" type="List<TestBoardVO>"/>
<s:query var="rs" dataSource="jdbc/MySqlDB" startRow="${pm.cri.startRow}" maxRows="${pm.cri.perPageNum}">SELECT * FROM test_board ORDER BY board_num DESC</s:query>
<c:forEach var="data" items="${rs.rows}">
	<c:if test= "${mlist.add(data)}"/>
</c:forEach>
<c:choose>
	<c:when test="${!empty mlist}">
		<c:forEach var="vo" items="${mlist}">
			<tr>
				<td>${vo.board_num}</td>
				<td><a href="board_detail.jsp?board_num=${vo.board_num}">${vo.board_title}</a></td>
				<td>${vo.board_name}</td>
				<td>${vo.board_date}</td>
				<td>${vo.board_readcount}</td>
			</tr>
		</c:forEach>
		<tr>
		<td colspan ="5">
		<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
			<a href="board_list.jsp?page=${i}">[${i}]</a>
		</c:forEach>
		</td>
		</tr>
	</c:when>
	<c:otherwise>
		<tr>
			<td colspan="5">등록된 정보가 없습니다.</td>
		</tr>
	</c:otherwise>
</c:choose>
	</table>
</body>
</html>