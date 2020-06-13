<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
<h1>회원정보 수정 페이지</h1>

<form action="updateMember" method="post">
아이디 : <input type="text" name="id" ><br>
비밀번호 수정 : <input type="password" name="pass"><br>
비밀번호 수정 확인 : <input type="password" name="pass2"><br>
이름 : <input type="text" name="name"><br>
주소 : <input type="text" name="addr"><br>
전화번호 : <input type="text" name="tel"><br>

<input type="submit" value="수정하기">
</form>





</body>
</html>