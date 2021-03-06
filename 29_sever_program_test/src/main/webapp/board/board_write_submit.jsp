<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%-- <%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("board_name");
	String pass = request.getParameter("board_pass");
	String title = request.getParameter("board_title");
	String content = request.getParameter("board_content");
	
	vo.TestBoardVO vo = new vo.TestBoardVO();
	vo.setBoard_name(name);
	vo.setBoard_pass(pass);
	vo.setBoard_title(title);
	vo.setBoard_content(content);
	
	javax.naming.Context init = new javax.naming.InitialContext();
	javax.sql.DataSource ds = (javax.sql.DataSource)init.lookup("java:comp/env/jdbc/MySqlDB");
	java.sql.Connection conn = ds.getConnection();
	java.sql.PreparedStatement pstmt = conn.prepareStatement("INSERT INTO test_board VALUES(null,?,?,?,?,0,now())");
	pstmt.setString(1, name);
	pstmt.setString(2, pass);
	pstmt.setString(3, title);
	pstmt.setString(4, content);
	int result = pstmt.executeUpdate();
	if(result > 0){
%>
	<h2>게시글 등록 완료</h2>
<%		
	}else{
%>
	<h2>게시글 등록 실패</h2>
<%
	}
%> --%>
<!-- 게시글 작성 요청 처리 -->
<f:requestEncoding value="utf-8"/>
<jsp:useBean id="board" class="vo.TestBoardVO"/>
<jsp:setProperty name="board" property="*"/>

<c:catch var="e">
	<s:update var="result" dataSource="jdbc/MySqlDB">
		INSERT INTO test_board VALUES(null,?,?,?,?,0,now());
		<s:param>${board.board_name}</s:param>
		<s:param>${board.board_pass}</s:param>
		<s:param>${board.board_title}</s:param>
		<s:param>${board.board_content}</s:param>
	</s:update>
</c:catch>
<c:if test="${!empty e || result == 0}">
	<script>
		alert('등록 실패');
		history.go(-1);
	</script>
</c:if>
<script>
	alert('등록 성공');
	location.href="board_list.jsp";
</script>

<!-- 게시글 작성 결과 처리 -->









