<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 삭제</title>
</head>
<body>

	<h1>회원정보 삭제 페이지</h1>

	<form action="deleteMember" method="post">
		아이디: <input type="text" name="id"> <br>
		비밀번호: <input type="password" name="pass"> <br>
		
		<input type="submit" value="삭제하기">
	</form>
	
	
	

</body>
</html>