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

	<h1>회원정보 수정</h1>

	<form action="updateMember" method="post" id="updateForm">
		아이디 : <input type="text" name="id"><br>
		이름 : <input type="text" name="name"><br>
		<!-- 비밀번호 변경 시, 다시 변경 한 비밀번호로 로그인 후 회원정보 수정 페이지로 -->
		비밀번호 : <button onclick="window.open('changePW','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">비밀번호 변경</button><br>
		<!-- 기존 비밀번호 : <input type="password" id="ori_pass"><br>
		새 비밀번호 : <input type="password" id="pass" name="pass"><br>
		새 비밀번호 확인 : <input type="password" id="pass2" name="pass2"><br> -->
		<!-- 주소 다음api 가져오기 -->
		주소 : <input type="text" name="addr"><br>
		주소 : <input type="text" id="sample4_postcode" placeholder="우편번호">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
			<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" placeholder="상세주소">
			<input type="text" id="sample4_extraAddress" placeholder="참고항목">
		
		전화번호 : <input type="text" name="tel" id="tel"><br>
		이메일 : <input type="text" name="email" id="email"><br>
		
		<input type="button" id="submitBtn" value="수정하기">
	</form>

</body>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

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