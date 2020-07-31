<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="ko">
<head>
    <title>ELDORADO59 - 비밀번호 찾기</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
<link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">
    <script type="text/javascript" src="https://www.yes24.com/JavaScript/util.js?v=20200218"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery.easing.1.3.min.js"></script>
    <script type="text/javascript" src="https://www.yes24.com/JavaScript/jqueryExtends.js?ver=170325a"></script>
    <script type="text/javascript" src="https://www.yes24.com/JavaScript/redirectWebSite.js"></script>
	<link rel="stylesheet" type="text/css" href="//www.yes24.com/Resource/css/renew/default.css?v=20140120" />
	<link rel="stylesheet" href="//www.yes24.com/Resource/css/renew/sLayout/sLayoutV2.css" type="text/css" media="all" />
    <link rel="stylesheet" href="https://secimage.yes24.com/sysimage/yesUI/member/member.css?ver=180828c" type="text/css" media="all" />
    <link rel="stylesheet" href="https://secimage.yes24.com/sysimage/yesUI/yesUI.css?ver=180817c" type="text/css" media="all" />
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
            <a class="lnk_logo" href="Main/index"><img src="${pageContext.request.contextPath }/resources/img/logo_eldorado.png" width="300" style="margin-top: .7rem;"></a>
				<span class="servName off"><a href="email.do" id="aForgetId">아이디 찾기</a></span>
				<span class="servDivi">|</span>
				<span class="servName"><a href="pass" id="aForgetPw">비밀번호 찾기</a></span>
			</h1>
			<div class="headerLnk">
                <a href="login2" id="aTopLogin" class="btnC m_size w_120"><span class="bWrap"><em class="txt">로그인</em></span></a>
				    <a href="join" class="btnC m_size w_120"><span class="bWrap"><em class="txt">회원가입</em></span></a>
                
			</div>
		</div>
	</div>
	<!-- #################### 간략 HEADER 영역 끝 #################### -->
	<hr/>
	<!-- #################### 간략 Content 영역 시작 #################### -->
	<div id="ySContent" class="pat60 pab60">
       
        
        

		<div id="searchIdPw" class="ySContRow">
            <div id="divSearch">
			<!-- ############################## 탭 영역 시작 영역 시작 ############################## -->
			<div id="divSearchIdPwTab" class="yesTab_nor yesTab_blue tab_2col">
				<ul>
					<li class="on firstCol"><a href="javascript:void(0);" onClick="chgTabSchIDPW(this,'p');"><span class="txt">개인회원</span></a></li>
				</ul>
			</div>
			<!-- ############################## 탭 영역 시작 ############################## -->
            
			<!-- ############################## 개인회원 비밀번호 찾기 방법 영역 시작 ############################## -->
			<div id="searchIDPW_p_wrap" class="searchIDPW_wrap">
                <div id="divFindPWStep1">
				
				<!-- ############### 이메일 주소로 찾기 영역 시작 ############### -->
				
				<form action="newPassword" method="post">
				<dl class="yesToggleDl">
					<dt>
						<a href="javascript:void(0);" onClick="toggleCont(this,'#searchIDPW_p_wrap');">등록된 이메일 주소로 찾기<em class="bgYUI">방법 보기/감추기</em></a>
					</dt>
					<dd>
						<div class="yesToggleDd">
							<div class="yesIptRow">
								<span id="spanEmailMemID" class="yesIpt m_size ipt_wSizeF focus_blue">
									<input id="txtEmailMemID" type="text" placeholder="아이디" name="id" onkeydown="removeErrorText('EmailMemID')">
								</span>
							</div>
							<p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_EmailMemID">아이디를 입력해주세요.</p>
							<div class="yesIptRow mgt10">
								<span id="spanEMail" class="yesIpt m_size ipt_wSizeF focus_blue">
									<input id="txtEmail" type="text" name="email" placeholder="이메일주소" onkeydown="removeErrorText('Email')">
								</span>
							</div>
							<p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_Email">이메일 주소를 입력해 주세요.</p>
							<div class="yesIptRow mgt10">
								<button  type="submit" class="btnC m_size btn_wSizeF btn_blue"><span class="bWrap"><em class="txt">확인</em></span></button>
							</div>
						</div>
					</dd>
				</dl>
				</form>
				<!-- ############### 이메일 주소로 찾기 영역 끝 ############### -->
				
                
                </div>
           
			</div>
			<!-- ############################## 개인회원 비밀번호 찾기 방법 영역 끝 ############################## -->
            
        
	</div>
	</div>
</div>

</div>

<script type="text/javascript">
    // 개인회원, 법인회원 탭
    function chgTabSchIDPW(obj, tId) {
        $(obj).parent().parent().find("li").removeClass("on");
        $(obj).parent().addClass("on");
        $(".searchIDPW_wrap").hide();
        $("#searchIDPW_" + tId + "_wrap").show();

        fnResetControl();
    }

    // 토글 메뉴
    function toggleCont(obj, scope) {
        if ($(obj).parent().parent().hasClass("toggleOn")) {
            $(obj).parent().parent().removeClass("toggleOn");
        } else {
            $(scope).find(".yesToggleDl").removeClass("toggleOn");
            $(obj).parent().parent().addClass("toggleOn");

            fnResetControl();
        }
    }
</script>
    
</body>
</html>

    