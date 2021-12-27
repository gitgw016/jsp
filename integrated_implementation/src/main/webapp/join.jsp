<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script>
	 $(function(){
		 $("#acceptBtn").click(function(){
			if($("#id").val() == ""){
					alert('아이디를 확인해주세요!');
					$("#id").focus();
					return false;
				}else if($("#pass").val() == ""){
					alert('비밀번호를 확인해주세요!');
					$("#pass").focus();
					return false;
				}else if($("#name").val() == ""){
					alert('이름을 확인해주세요!');
					$("#name").focus();
					return false;
				}else if($("#addr").val() == ""){
					alert('주소를 확인해주세요!');
					$("#addr").focus();
					return false;
				}else if($("#phone").val() == ""){
					alert('전화번호를 확인해주세요!');
					$("#phone").focus();
					return false;
				}else{
					return true;
				}
			});  
		 });
</script>
<section>
	<form name="joinForm" action="join" method="post">
		<table class="join">
			<tr>
				<th colspan="2"><h1>회원가입</h1></th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="id" alt="아이디"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="pass" name="pass" alt="비밀번호"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="name" name="name" alt="이름"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" id="addr" name="addr" alt="주소" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" id="phone" name="phone" alt="전화번호" /></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" id="acceptBtn" value="회원가입" /></td>
			</tr>
		</table>
	</form>

</section>