<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="form-group">


		<label class="control-label">EMAIL</label> <input type="text"
			id="userEmail" name="email" placeholder="이메일을 입력하세요" class="form-control" />
		<button type="button" class="btn btn-info" id="emailBtn">이메일발송</button>
		<label class="control-label">EMAIL</label> <input type="text"
			id="emailAuth" name="email" placeholder="인증번호를 입력하세요" class="form-control" />
		<button type="button" class="btn btn-info" id="emailAuthBtn">이메일인증</button>
	</div>
	<input type="hidden" path="random" id="random" value="${random }" />



	<script type="text/javascript">

$(function(){
	/*
	이메일 인증 버튼 클릭시 발생하는 이벤트
	*/

	$(document).on("click", "#emailBtn", function(){
		/* 이메일 중복 체크 후 메일 발송 비동기 처리 */
		$.ajax({
			/* beforeSend: function(){
			loadingBarStart();
			}, */
			type:"get",
			url : "createEmailCheck.do",
			data : "userEmail=" + $("#userEmail").val() + "&random=" + $("#random").val(),
			//data: "userEmail="+encodeURIComponent($('#userEmail').val()),
			/* encodeURIComponent
			예를들어, http://a.com?name=egoing&job=programmer 에서 &job=programmer
			중 '&'는 하나의 파라미터가 끝나고 다음 파라미터가 온다는 의미이다.
			그런데 다음과 같이 job의 값에 &가 포함된다면 시스템은 job의 값을 제대로 인식할수 없게 된다. */
			success : function(data){
				alert("사용가능한 이메일입니다. 인증번호를 입력해주세요.");
				
			},
			error: function(data){
			alert("에러가 발생했습니다.");
			return false;
			}
		})
		})
	
		/*
		이메일 인증번호 입력 후 인증 버튼 클릭 이벤트
		*/
		$(document).on("click", "#emailAuthBtn", function(){
		$.ajax({
		/* beforeSend: function(){
		loadingBarStart();
		}, */
		type:"get",
		url:"emailAuth.do",
		data:"authCode=" + $('#emailAuth').val() + "&random=" + $("#random").val(),
		success:function(data){
		if(data=="complete"){
		alert("인증이 완료되었습니다.");
		
		}else if(data == "false"){
		alert("인증번호를 잘못 입력하셨습니다.")
		}
		},
		complete: function(){
		loadingBarEnd();
		},
		error:function(data){
		alert("에러가 발생했습니다.");
		}
		});
		});

	
});
</script>

</body>
</html>


