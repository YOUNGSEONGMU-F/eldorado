<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>회원정보 수정 페이지</h1>

<form action="updateMember" method="post">
아이디 : <input type="text" name="id"><br>
이름 : <input type="text" name="name"><br>
기존 비밀번호 : <input type="password" name="ori_pass"> <br>
새 비밀번호 : <input type="password" name="pass"><br>
새 비밀번호 재입력 : <input type="password" name="pass2"><br>
주소 : <input type="text" name="addr"><br>
전화번호 : <input type="text" name="tel"><br>
이메일 : <input type="text" name="email"><br>

<input type="submit" value="수정하기" onclick="">
</form>


</body>

<script type="text/javascript">
	
</script>

</html>