<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 로그인</title>
</head>
<body>
	<h1>카카오톡 로그인(임시)</h1>
	
	<input type="button" value="카카오톡 로그인">
	
	<form action="loginTest" method="post">
		아이디 : <input type="text" value="" name="id"><br>
		비밀번호 : <input type="password" value="" name="pass"><br>
	<input type="submit" value="로그인">
	
	<div id="kakao_id_login" style="text-align: left;"> 
		카카오톡 로그인 <br>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=37c9bbc47d6241ab8e229dbd6a15e1f3&redirect_uri=http://localhost:8080/team/khr/loginTest&response_type=code"> 
			<img width="223" src="kakao_login_medium_narrow.png" />
		</a> 
	</div>
	
	<!-- 세션에서 token을 가져와서 출력한다. -->
	${sessionScope.token}
	
	
</body>
</html>