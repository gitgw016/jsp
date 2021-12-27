<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<f:requestEncoding value="utf-8"/>
<jsp:useBean id="mb" class="vo.TestBoardVO" scope="page"/>
<jsp:setProperty name="mb" property="*"/>
<c:set var="msg" value="등록 실패"/>
<!-- 게시글 작성 요청 처리 -->
	<s:update var="result" dataSource="jdbc/MySqlDB">
		INSERT INTO test_board(board_name,board_pass,board_title,board_content) VALUES(?,?,?,?)
		<s:param>${mb.board_name}</s:param>
		<s:param>${mb.board_pass}</s:param>
		<s:param>${mb.board_title}</s:param>
		<s:param>${mb.board_content}</s:param>
	</s:update>
<!-- 게시글 작성 결과 처리 -->
	<c:if test="${result > 0 }">
		<c:set var="msg" value="등록성공"/>
	</c:if>
	<c:if test="${!empty e}">
		<c:set var="msg" value="등록 실패 - ${e.message}"/>
	</c:if>
<h3>${msg}</h3>
<a href="board_list.jsp">[게시글 목록]</a>








