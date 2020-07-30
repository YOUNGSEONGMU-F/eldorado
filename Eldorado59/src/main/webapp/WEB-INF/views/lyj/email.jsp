<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>YES24 - 아이디 찾기</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
    <link rel="shortcut icon" href="https://secimage.yes24.com/sysimage/renew/gnb/yes24.ico" type="image/x-icon"> 
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery.easing.1.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//www.yes24.com/Resource/css/renew/default.css?v=20140120" />
	<link rel="stylesheet" href="//www.yes24.com/Resource/css/renew/sLayout/sLayoutV2.css" type="text/css" media="all" />
    <link rel="stylesheet" href="https://secimage.yes24.com/sysimage/yesUI/member/member.css?ver=180828c" type="text/css" media="all" />
    <link rel="stylesheet" href="https://secimage.yes24.com/sysimage/yesUI/yesUI.css?ver=180817c" type="text/css" media="all" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
</head>
<body>
<dl id="yesSkip">
	<dt>콘텐츠 바로가기</dt>
	<dd><a href="#yWelTop">본문 바로가기</a></dd>
</dl>

<hr/>

<div id="yesWrap">
    <!-- #################### 간략 HEADER 영역 시작 #################### -->
	<div id="ySHeader">
		<div class="ySHeaderAera">
			<h1>
				<a href="http://www.yes24.com" id="aLogo" class="lnk_logo"><img src="https://secimage.yes24.com/sysimage/renew/sLayout/logo.png" border="0" alt="YES24"></a>
				<span class="servName"><a href="email.do" id="aForgetId">아이디 찾기</a></span>
				<span class="servDivi">|</span>
				<span class="servName off"><a href="pass" id="aForgetPw">비밀번호 찾기</a></span>
			</h1>
			<div class="headerLnk">
                <a href="login2" id="aTopLogin" class="btnC m_size w_120"><span class="bWrap"><em class="txt">로그인</em></span></a>
				    <a href="join" class="btnC m_size w_120"><span class="bWrap"><em class="txt">회원가입</em></span></a>
                
			</div>
		</div>
	</div>
	<!-- #################### 간략 HEADER 영역 끝 #################### -->

    <!-- #################### 간략 Content 영역 시작 #################### -->
	<div id="ySContent" class="pat60 pab60">
		<div id="searchIdPw" class="ySContRow">
            <div id="divFind">
			    <!-- ############################## 탭 영역 시작 영역 시작 ############################## -->
			    <div class="yesTab_nor yesTab_blue tab_2col">
				    <ul>
					    <li class="on firstCol"><a href="javascript:void(0);" onClick="chgTabSchIDPW(this,'p');"><span class="txt">개인회원</span></a></li>
					    
				    </ul>
			    </div>
			    <!-- ############################## 탭 영역 시작 ############################## -->
			    <!-- ############################## 개인회원 아이디 찾기 방법 영역 시작 ############################## -->
			    <div id="searchIDPW_p_wrap" class="searchIDPW_wrap">
				    <div class="yesTab_botCont">
					    아이디 찾기 
				    </div>
			
				    <!-- ############### 이메일 주소로 찾기 영역 시작 ############### -->
				    <dl class="yesToggleDl">
					    <dt>
						    <a href="javascript:void(0);" onClick="toggleCont(this,'#searchIDPW_p_wrap');">등록된 이메일 주소로 찾기<em class="bgYUI">방법 보기/감추기</em></a>
					    </dt>
					    <dd>
						    <div class="yesToggleDd">
							
							    <div class="yesIptRow row_btnR_120 mgt10">
								    <!-- 이름 -->
								      <span  class="yesIpt m_size ipt_wSizeF focus_blue">
								     <input type="text" name="name" placeholder="이름을 입력하세요">
								    </span>
								    <!-- 이메일 -->
								    <span  class="yesIpt m_size ipt_wSizeF focus_blue">
									    <input type="text" id="userEmail" name="email" placeholder="이메일을 입력하세요" class="form-control">
								    </span>
								    
									   
								        <button type="button" class="btn btn-info" id="emailBtn">이메일발송</button>

							    </div>
							    	<!-- 버튼 -->
							    <div class="yesIptRow row_btnR_120 mgt10">
								    <span class="yesIpt m_size ipt_wSizeF focus_blue">
							                 <input type="text" id="emailAuth" placeholder="인증번호를 입력하세요"  class="form-control" />
								    </span>
							    </div>
							    <div class="yesIptRow mgt10">
							    <button type="button" class="btn btn-info" id="emailAuthBtn">인증 확인</button>

							    </div>

						    </div>
					    </dd>
				    </dl>
							    <input type="hidden" path="random" id="random" value="${random }" />
				    <!-- ############### 이메일 주소로 찾기 영역 끝 ############### -->
				  
			    </div>
			    <!-- ############################## 개인회원 아이디 찾기 방법 영역 끝 ############################## -->
		
            </div>

        
		</div>
		
		
		

	</div>

	<div id="ySFooter">
		<div class="ySFooterAera pos_r">
			<address>	
				Copyright &#0169; <strong>YES24 Corp.</strong> All Rights Reserved. 
                <div class="pos_a" style="left:0;top:0;color:#F8F8F8;">EQUUS13</div>
			</address>
		</div>
	</div>
	<!-- #################### 간략 FOOTER 영역 시작 #################### -->
</div>
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
				alert("이메일 전송완료 ! 인증번호를 입력해주세요.");
				
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
			var userEmail = $('#userEmail').val();
			
			
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
		location.href="../lyj/findidresult?userEmail="+userEmail;
		
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





    // 개인회원, 법인회원 탭
    function chgTabSchIDPW(obj, tId) {
        $(obj).parent().parent().find("li").removeClass("on");
        $(obj).parent().addClass("on");
        $(".searchIDPW_wrap").hide();
        $("#searchIDPW_" + tId + "_wrap").show();

     
    };

    // 토글 메뉴
    function toggleCont(obj, scope) {
        if ($(obj).parent().parent().hasClass("toggleOn")) {
            $(obj).parent().parent().removeClass("toggleOn");
        } else {
            $(scope).find(".yesToggleDl").removeClass("toggleOn");
            $(obj).parent().parent().addClass("toggleOn");

            //fnResetControl();
        }
    };


    

   
</script>


<script src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/wlo.min.js"></script>

</body>
</html>