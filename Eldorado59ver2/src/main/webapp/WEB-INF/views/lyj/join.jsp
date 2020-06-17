<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./lyj/join.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>

<h1>회원가입페이지</h1>

<form action="join" method="post" id="joinpageForm">
아이디 : <input type="text" id="id" name="id"><br>
비밀번호 : <input type="password" id="pass" name="pass"><br>
비밀번호확인 : <input type="password" id="pass2" name="pass2"><br>
이름 : <input type="text" name="name" id="name"><br>
이메일 : <input type="text" name="email" id="email"><br>
주소 : <input type="text" name="addr"><br>
전화번호 : <input type="text" name="tel" id="tel"><br>

<input type="button" id="submitBtn" value="회원가입" >
</form>

<script>

$('#submitBtn').click(function(){

var id= $('#id').val();
var pass = $('#pass').val();
var pass2 = $('#pass2').val();
var name = $('#name').val();
var tel = $('#tel').val();
var email = $('#email').val();
var getCheck = RegExp(/^[a-zA-Z0-9]{6,12}$/);
var getpw = /^.*(?=^.{6,12}$)(?=.*\d)(?=.*[a-zA-Z]).*$/;
var deny_char = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/
var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
var idReg = /^[a-z]+[a-z0-9]{3,16}$/g;


var getTel =  /^\d{11}$/;

var smsck = $('#smsck').val();
var blank_pattern = /[\s]/g;

if($('#id').val() == ""){
	$('#id').focus();
	alert('아이디를 입력해주세요');

	return false;
}
if(!idReg.test($('#id').val())){
	alert("아이디는 영문자로 시작하는 4~16자 영문자 또는 숫자이어야 합니다");
	$('#id').focus();
	return false;
}


if ($("#pass").val() == "") {
	$("#pass").focus();
	alert("비밀번호를 입력하세요.");
	return false;
}
if (!getpw.test($("#pass").val())) {
	$("#pass").focus();
	alert("비밀번호는 6~12자리 영어대소문자, 숫자 조합으로 사용해주세요.");
	return false;
}
//비밀번호 확인란 공백 확인
if ($("#pass2").val() == "") {
	$("#pass2").focus();
	alert("비밀번호 확인란을 입력하세요.");
	return false;
}
if ($("#pass2").val() != ($("#pass")
		.val())) {
	alert("비밀번호가 서로 맞지않습니다.");
	$("#pass2").val("");
	$("#pass2").focus();
	return false;
}

if ($("#name").val() == "") {
	alert("사용하실 이름을 입력해주세요.");
	$("#name").focus();
	return false;
}
if( blank_pattern.test($('#email').val()) == true){
    alert(' 공백은 사용할 수 없습니다.');
    return false;
}
//이메일 공백 확인
if ($("#email").val() == "") {
	alert("이메일을 입력해주세요");
	$("#email").focus();
	return false;
}
//이메일 유효성 검사
if (!getMail.test($("#email").val())) {
	alert("이메일형식에 맞게 입력해주세요")
	$("#email").val("");
	$("#email").focus();
	return false;
}
//전화번호
if ($('#tel').val() == "") {
	alert("전화번호를 입력해주세요");
	$('#tel').focus();
	return false;	
}

if(!getTel.test($('#tel').val())){
	alert("휴대폰번호는 11자리입니다");
	$("#tel").focus();

	return false;
}

document.getElementById('joinpageForm').submit();



});

</script>
</body>
</html>