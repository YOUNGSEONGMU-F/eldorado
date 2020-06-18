<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>비밀번호 변경</h1>
	
	<form action="updateMember" method="post">
		기존 비밀번호 : <input type="password" id="ori_pass"><br>
		새 비밀번호 : <input type="password" id="pass" name="pass"><br>
		새 비밀번호 확인 : <input type="password" id="pass2" name="pass2"><br>
		
		<input type="submit" value="비밀번호 변경">
	</form>
</body>
</html>