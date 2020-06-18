<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원 탈퇴</h1>
	
	<form action="deleteMember" method="post">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pass"><br>
		
		<input type="submit" value="탈퇴하기">
	</form>
</body>
</html>