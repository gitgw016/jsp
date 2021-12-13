<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
}
</style>
<form action="joinCheck.jsp" method="post">
<h2>회원가입</h2><br/>
아이디<input type="text" name="id" required><br/><br/>
비밀번호<input type="password" name="pw" required><br/><br/>
이름<input type="text" name="name" required><br/><br/>
주소<input type="text" name="addr" required><br/><br/>
전화번호<input type="text" name="phone"required><br/><br/>
성별<input type="radio" name="gender" value="남">남 <input type="radio" name="gender" value="여">여<br/><br/>
나이<input type="number" name="age" required><br/><br/>
<button>회원가입</button>
</form>
