<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>

<%
	String id = (String)session.getAttribute("id");

	if(id == null){
		response.sendRedirect("login");
	}
%>

	<h1>회원정보 수정</h1>

	<form action="updateMember" method="post" id="updateForm">
		아이디 : <input type="text" name="id" value="${member.id }"><br>
		이름 : <input type="text" name="name"><br>
		<!-- 비밀번호 변경 시, 다시 변경 한 비밀번호로 로그인 후 회원정보 수정 페이지로 -->
		비밀번호 : <button onclick="window.open('changePW','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">비밀번호 변경</button><br>
		<!-- 기존 비밀번호 : <input type="password" id="ori_pass"><br>
		새 비밀번호 : <input type="password" id="pass" name="pass"><br>
		새 비밀번호 확인 : <input type="password" id="pass2" name="pass2"><br> -->
		<!-- 주소 다음api 가져오기 -->
		주소 : <input type="text" id="sample6_postcode" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" placeholder="주소"><br>
			<input type="text" id="sample6_detailAddress" placeholder="상세주소">
			<input type="text" id="sample6_extraAddress" placeholder="참고항목"><br>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

		
		
		전화번호 : <input type="text" name="tel" id="tel"><br>
		이메일 : <input type="text" name="email" id="email"><br>
		
		<input type="button" id="submitBtn" value="수정하기">
	</form>

</body>



<script type="text/javascript">

$('#submitBtn').click(function(){
	var id= $('#id').val();
	var ori_pass = $('#ori_pass').val();
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
// 	if($('#id').val() == ""){
// 	   $('#id').focus();
// 	   alert('아이디를 입력해주세요');
// 	   return false;
// 	}
// 	if(!idReg.test($('#id').val())){
// 	   alert("아이디는 영문자로 시작하는 4~16자 영문자 또는 숫자이어야 합니다");
// 	   $('#id').focus();
// 	   return false;
// 	}
/* 	if ($("#name").val() == "") {
		   alert("사용하실 이름을 입력해주세요.");
		   $("#name").focus();
		   return false;
	} */

	// 기존 비밀번호 맞게 입력(로그인된 회원 정보 먼저 가져와야 함.)
	
	// 새 비밀번호는 기존 비밀번호와 달라야 함(마찬가지로 로그인된 회원정보 먼저 가져와야 함.)
	/* if ($("#pass").val() == "") {
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
	if ($("#pass2").val() != ($("#pass").val())) {
	   alert("비밀번호가 서로 맞지않습니다.");
	   $("#pass2").val("");
	   $("#pass2").focus();
	   return false;
	} */
	//이메일 공백 확인
	if(blank_pattern.test($('#email').val()) == true){
	    alert(' 공백은 사용할 수 없습니다.');
	    return false;
	}
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
	document.getElementById('updateForm').submit();
	
});
		

</script>
</html>