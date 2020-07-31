<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/lyj/css/join.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>

<h1>회원가입페이지</h1>


<div id="wrapperContentjoin">

<table width="100%" cellpadding="0" cellspacing="0" align="center">
<!--헤드 구분바 시작//-->
<tbody>
<tr>
<td colspan="3"><img src="https://secimage.yes24.com/sysimage/mypage/headBar.gif" width="960" height="8" alt="" hspace="0" vspace="0" align="absbottom"></td></tr>
<!--헤드 구분바 끝//-->
<tr bgcolor="#F3F3F3">
   <td width="700"><div style="margin-left:100;">
      <img src="https://secimage.yes24.com/sysimage/member/h_member.gif" 
      width="140" height="30" alt="회원가입" hspace="0" vspace="0"></div>
   </td>
   <td align="right" width="210" valign="bottom">
<!--       <img src="https://secimage.yes24.com/sysimage/member/i_Progress02.gif" width="185" height="67" alt="회원가입" hspace="0" vspace="0"> -->
   </td>
   <td align="right" width="100"><img src="https://secimage.yes24.com/sysimage/member/1px_blank.gif" width="50" height="1"></td>
</tr>
</tbody>
</table>
<form action="join" method="post" id="joinpageForm">
<table width="750" align="center" bgcolor="#FFFFFF">
<tbody>
<tr>
<!-- <td><img src="https://secimage.yes24.com/sysimage/member/t_InputInform.gif" width="540" height="25" alt="-" hspace="0" vspace="5"></td> -->
</tr>

<tr><td background="https://secimage.yes24.com/sysimage/member/Line_BlueH5.gif" width="100%" height="5"></td></tr>
<tr><td height="1"></td></tr>
<tr>
<td bgcolor="#F8F8F8" style="padding:15px 0 5px 69px;text-indent:-19px;font-size:11px;color:#969696;">
<img src="https://secimage.yes24.com/sysimage/member/Indent_squareOrange.gif" hspace="7" vspace="3">표시는 필수 입력 사항입니다.<br>
선택사항 미입력시, 서비스제공에 제한은 없으나,유용한 이벤트정보 수신이 제한적일 수 있습니다.</td></tr>

   <!--회원아이디 정보시작-->
<tr>
	  <td bgcolor="#F8F8F8" valign="top">
	        <div align="center">

	            <!--회원아이디정보 입력 테이블 시작//-->
		        <table cellpadding="0" cellspacing="1&quot;" border="0" width="650" bgcolor="#EAEAEA">
		            <tbody><tr>
			            <td bgcolor="#EBE4DF" height="35" colspan="2&quot;">
			            <img src="https://secimage.yes24.com/sysimage/member/st_idInform.gif" hspace="10" width="90" height="20" align="absmiddle">
			            </td>
		            </tr>
		            <!--아이디 입력-->
		            <tr>
			            <td bgcolor="#FFFFFF" height="35" width="120" valign="middle">
			            <img src="https://secimage.yes24.com/sysimage/member/Indent_squareOrange.gif" hspace="7" vspace="3">아이디
			            </td>
			            <td bgcolor="#FFFFFF" height="35">
			                &nbsp;&nbsp;<input type="text" id="id" name="id" size="12" maxlength="15" onblur="ReplaceChar(this.value);">
			                <img src="https://secimage.yes24.com/sysimage/member/i_idCheck.gif" width="60" height="19" hspace="5" align="absmiddle" alt="아이디 중복확인" onclick="IDCheckWindow()" style="cursor:hand">
			                <span class="infoGray">4~15자리의 영문소문자와 숫자만 가능합니다.</span>
			            </td>
		            </tr>
		            <!--비밀번호 입력-->
		            <tr>
			            <td bgcolor="#FFFFFF" height="35" width="120">
			            <img src="https://secimage.yes24.com/sysimage/member/Indent_squareOrange.gif" hspace="7" vspace="3">비밀번호
			            </td>
			            <td bgcolor="#FFFFFF" height="35">
				            &nbsp;&nbsp;<input type="password" id="MemberPassword" name="MemberPassword" size="12" maxlength="20" style="font-family:sans-serif;font-size:12px;" onkeyup="checkPassword()">
			                &nbsp;&nbsp;<span class="msg">8~20자리의 영문 대/소문자,숫자,특수문자 조합.</span>
			            &nbsp;<span><img onmouseover="showDiv('divAttenPw');" onmouseout="hideDiv('divAttenPw');" src="https://secimage.yes24.com/sysimage/common/icon/ico_attention.gif" height="15" border="0" alt="유의사항" title="유의사항"></span>
			            <!-- ########## 비밀번호 안내 및 유의사항 레이어 영역 시작 ########## -->
			            <script type="text/javascript">
				            function showDiv(tar_id) {
					            $("#" + tar_id).css({ "display": "" });
				            }
				            function hideDiv(tar_id) {
					            $("#" + tar_id).css({ "display": "none" });
				            }
			            </script>
			            <div style="position:relative;text-align:left;">
				            <!-- ##### 비밀번호 복잡로 레이어 시작 ##### -->
				            <div class="plyr" id="plyr" style="display:none;position:absolute;left:9px;top:5px;z-index:999;width:220px;bgcolor:red'">
					            <div class="plyr_w">
						            <div class="cock" style="left:32px;"></div>
						            <div class="plyr_cImg">
							            <div class="graph_pw step1 imgAlt" id="step1imgAlt" style="display:none;">경고</div>
							            <div class="graph_pw step2 imgAlt" id="step2imgAlt" style="display:none;">위험</div>
							            <div class="graph_pw step3 imgAlt" id="step3imgAlt" style="display:none;">낮음</div>
							            <div class="graph_pw step4 imgAlt" id="step4imgAlt" style="display:none;">보통</div>
							            <div class="graph_pw step5 imgAlt" id="step5imgAlt" style="display:none;">높음</div>
						            </div>
					            </div>
				            </div>
				            <!-- ##### 비밀번호 복잡로 레이어 끝 ##### -->

				            <!-- ##### 유의 사항 안내 레이어 시작 ##### -->
				            <div id="divAttenPw" class="plyr" style="position: absolute; left: 127px; top: 1px; z-index: 999; width: 520px; display: none;">
					            <div class="plyr_w">
						            <div class="cock"></div>
						            <div class="plyr_c">
							            <ul class="clearfix cmt_liGrayRnd">
								            <li><p>반드시 8~20자의 영문 대/소문자,숫자,특수문자 중 2가지 이상으로 조합.</p></li>
								            <li><p>아이디 및 아이디를 포함한 문자/숫자는 비밀번호로 사용 불가.</p></li>
								            <li><p>특수문자는 !@#$%^&amp;*()-_ 사용가능.</p></li>
								            <li><p>동일한 문자(숫자), 연속적인 숫자 4자 이상 사용 불가. 예)1234,1111,aaaa</p></li>
								            <li><p>생년월일, 전화번호와 동일한 번호는 사용 자제.</p></li>
							            </ul>
						            </div>
					            </div>
				            </div>
				            <!-- ##### 유의 사항 안내 레이어 끝 ##### -->
			            </div>
			            <!-- ########## 비밀번호 안내 및 유의사항 레이어 영역 끝 ########## -->
			            </td>
		            </tr>
		            <!--비밀번호 확인-->
		            <tr>
			            <td bgcolor="#FFFFFF" height="35" width="120">
			                <img src="https://secimage.yes24.com/sysimage/member/Indent_squareOrange.gif" hspace="7" vspace="3">비밀번호 확인
			            </td>
			            <td bgcolor="#FFFFFF" height="35">
						&nbsp;&nbsp;<input type="password" id="MemberPasswordConfirm" name="MemberPasswordConfirm" size="12" maxlength="20" style="font-family:sans-serif;font-size:12px;">
			            &nbsp;<span class="infoGray">확인을 위해서 재입력 해주세요</span>
			            </td>
		            </tr>
		            <tr>
			            <td height="10" colspan="2" bgcolor="#F8F8F8"></td>
		            </tr>
                    
		        </tbody></table>
	            <!--회원아이디정보 입력 테이블 끝//-->
	        </div>
	    </td>
    </tr>
</tbody>



</table>


아이디 : <input type="text" id="id" name="id"><br>
비밀번호 : <input type="password" id="pass" name="pass"><br>
비밀번호확인 : <input type="password" id="pass2" name="pass2"><br>
이름 : <input type="text" name="name" id="name"><br>
이메일 : <input type="text" name="email" id="email"><br>
주소 : <input type="text" name="addr"><br>
전화번호 : <input type="text" name="tel" id="tel"><br>

<input type="button" id="submitBtn" value="회원가입" >



</form>
</div>











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