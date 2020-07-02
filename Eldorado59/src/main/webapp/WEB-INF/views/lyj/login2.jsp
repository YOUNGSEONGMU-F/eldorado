<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head>
	<title>YES24 - 대한민국 대표 인터넷서점</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>
	<link rel="shortcut icon" href="https://secimage.yes24.com/sysimage/renew/gnb/yes24.ico" type="image/x-icon"> 
	<link title="YES24 검색" rel="search" type="application/opensearchdescription+xml" href="//www.yes24.com//searchCenter/YES24SearchCenter.xml">
    <script type="text/javascript" src="/JavaScript/util.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery.easing.1.3.min.js"></script>
    <script type="text/javascript" src="/javascript/jqueryExtends.js?ver=170325a"></script>
    <script async type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/lib/facebook.js" ></script>
    <script async type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/lib/facebookInit.js" ></script>
    <script type="text/javascript" src="/Javascript/redirectWebSite.js"></script>
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
				<a class="lnk_logo" href="http://www.yes24.com"><img src="https://secimage.yes24.com/sysimage/renew/sLayout/logo.png" border="0" alt="YES24"></a>
				<span class="servName">로그인</span>
			</h1>
			<div class="headerLnk">
				<a href="/Member/FTMemAcc.aspx" class="btnC m_size w_120"><span class="bWrap"><em class="txt">회원가입</em></span></a>
			</div>
		</div>
	</div>
	<!-- #################### 간략 HEADER 영역 끝 #################### -->

    <!-- #################### 간략 Content 영역 시작 #################### -->
	<div id="ySContent" class="pat60 pab60">
		<div id="loginFormWrap" class="ySContRow clearfix">
			<!-- ############################## 로그인 관련 영역 시작 ############################## -->
			<div class="loginCont">
				<!-- ############### 탭 영역 시작 ############### -->
				<div id="divTabMemberArea" class="yesTab_nor yesTab_blue tab_2col">
					<ul id="ulTabMember">
						<li id="liTabMember" class="on firstCol"><a href="javascript:void(0);" id="aTabMember" onClick="chgTabLogin(this,'mem');"><span class="txt">회원</span></a></li>
						<li id="liTabNoMember" class="lastCol"><a href="javascript:void(0);" id="aTabNoMember" onClick="chgTabLogin(this,'nMem');"><span class="txt">비회원 주문확인</span></a></li>
					</ul>
				</div>
				<!-- ############### 탭 영역 끝 ############### -->
				<!-- ############### 로그인 폼 : 회원 영역 시작 ############### -->
				<div id="memLoginForm" class="loginFormGrp">
                    
<form method="post" name="LoginSub" autocomplete="off" action="login">
 <!--    <input name="FBLoginSub$hdfLoginToken" type="hidden" id="FBLoginSub_hdfLoginToken" value="jj+Q9vDc35+txh6eAqGPaL8pDYzzoyg2Rk9Ffb+ZhcMH4IoLakoDHVNxywh5bCFO" />
    <input name="FBLoginSub$hdfLoginHash" type="hidden" id="FBLoginSub_hdfLoginHash" />
    <input type="hidden" name="LoginType" />
	<input name="FBLoginSub$ReturnURL" type="hidden" id="FBLoginSub_ReturnURL" />
	<input name="FBLoginSub$ReturnParams" type="hidden" id="FBLoginSub_ReturnParams" />
	<input type="hidden" name="RefererUrl" id="RefererUrl" value="https://movie.yes24.com/?pid=123487&EKAMS=realclick.546.1252.38.1393409481352.154481&gclid=EAIaIQobChMIkfWdlZ6X6gIVhlVgCh13wQ4VEAAYASAAEgLSBfD_BwE" />
	<input type="hidden" name="AutoLogin" id="AutoLogin"  value="1" />
	<input type="hidden" name="LoginIDSave" id="LoginIDSave" value="N" />
    <input name="FBLoginSub$NaverCode" type="hidden" id="FBLoginSub_NaverCode" />
    <input name="FBLoginSub$NaverState" type="hidden" id="FBLoginSub_NaverState" />
     -->
	<fieldset class="loginForm">
		<legend class="blind">회원 로그인</legend>
		<span id="spanMemID" class="yesIpt b_size ipt_wSizeF focus_blue">
			
			<input id="SMemberID" name="id" type="text" placeholder="아이디" autocomplete="off" value="" onkeydown="removeErrorText('MemberID')" maxlength="100"/>
		</span>
		<p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_MemID">아이디를 입력해주세요.</p>
		<span id="spanMemPW" class="yesIpt b_size ipt_wSizeF focus_blue mgt10">
			<input id="SMemberPassword" name="pass" placeholder="비밀번호" type="password" autocomplete="off" onkeypress="LoginEnter(event);" onkeydown="removeErrorText('MemberPW')" maxlength="20"/>
		</span>
		<p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_MemPW">비밀번호를 입력해주세요.</p>
		
		<!--그밑에꺼  로그인상태유지-->
		<div class="loginForm_chk">
			<span class="yesChk">
				<label for="chkAutoLogin"><em class="ico_yesChk bgYUI"></em>로그인 상태 유지</label>
				<input id="chkAutoLogin" type="checkbox" autocapitalize="off" class="iptChk" />
			</span>
			<span class="yesChk">
				<label for="chkLoginIDSave"><em class="ico_yesChk bgYUI"></em>아이디 저장</label>
				<input id="chkLoginIDSave" type="checkbox" autocapitalize="off" class="iptChk" />
			</span>
			
			<!-- name="chkAutoLogin"    name="chkLoginIDSave"-->
			
			
		</div>
		<button type="button" id="btnLogin" title="로그인" onclick="CheckLogin();return false;" class="btn_login btnC xb_size btn_blue"><span class="bWrap"><em class="txt">로그인</em></span></button>
	
	
	</fieldset>
</form>
<!-- ##### 아이디 비번 찾기 영역 시작 ##### -->
<div class="loginEtc">
	<a href="findIdpage" class="lnk_etc">아이디 찾기</a>
	<em class="divi">|</em>
	<a href="/Templates/FTForgetPW.aspx" class="lnk_etc">비밀번호 찾기</a>
	
</div>
<!-- ##### 아이디 비번 찾기 영역 끝 ##### -->
<!-- ##### 쇼셜 로그인 영역 시작 ##### -->
<!--
개발 코맨트 :
쇼셜 로그인 개수가 4개 이상 일 경우에는 "loginSocialLi loginSocialLi_2col clearfix"을 써주세요.
-->
<ul class="loginSocialLi">
	<li class="oddCol "><a href="javascript:void(0);" id="FBLoginSub_aBtnNaverLogin" onClick="callNaverAuth('R');" class="btn_social"><span class="bWrap"><em class="ico_social ico_na bgMem"></em><em class="txt">네이버 아이디로 로그인</em></span></a>  </li>
	<li class="evenCol"><a href="javascript:void(0);" id="FBLoginSub_aBtnKakaoLogin" onClick="callKakaoLogin();" class="btn_social"><span class="bWrap"><em class="ico_social ico_ka bgMem"></em><em class="txt">카카오 아이디로 로그인</em></span></a>  </li>
	
</ul>

<!-- ##### 쇼셜 로그인 영역 끝 ##### -->
<!-- ##### 로그인 실패 안내 시작 ##### -->
<div id="loginFailPop" style="display:none;">
	<div class="yesPopUp bgWhite">
		<div class="popYUIArea">
			<div class="popYUI_tit">
				<h1>로그인 실패</h1>
			</div>
			<div class="popYUI_cont">
                <p class="contP">
                    등록되지 않은 아이디거나, 아이디 또는 비밀번호를 잘못 입력 하셨습니다.
                </p>
				<!-- 로그인 10회 실패 시 문구 노출 끝 -->
				<div class="popYUI_btn">
					<a href="javascript:void(0)" class="btnC m_size btn_blue w_100 btn_popClose" onclick="closeloginFailPop()"><span class="bWrap"><em class="txt">확인</em></span></a>
				</div>
			</div>
			<div class="popYUI_close"><a href="javascript:void(0)"><em class="bgYUI btn_popClose">창 닫기</em></a></div>
		</div>
	</div>
</div>
<!-- ##### 로그인 실패 안내 끝 ##### -->
<!-- ##### 레이어 팝업 세트 시작 ##### -->
<div id="dPop_autoSaveIs" style="display:none;">
	<div class="yesPopUp yesPopUpCock">
		<div class="popYUIArea">
			<span class="bgYUI popYUI_cock"></span>
			<div class="popYUI_tit">
				<h1>로그인 상태 유지</h1>
			</div>
			<div class="popYUI_cont">
				<ul class="yesAlertLi">
					<li><em class="bgYUI bl_dot"></em>로그인 상태유지 설정 시, 아이디와 비밀번호를 입력하지 않고도 로그인 상태를 유지할 수 있습니다.                                          </li>
					<li><em class="bgYUI bl_dot"></em>로그인 상태는 설정 해제 전 까지 유지 됩니다.                                                                                            </li>
					<li><em class="bgYUI bl_dot"></em>로그인 상태유지 해제는 '로그아웃' 후 가능합니다.                                                                                        </li>
					<li><em class="bgYUI bl_dot"></em><span class="txC_red">개인정보 보호를 위하여 자동로그인 설정은 개인 PC에서 사용하고, 공용 PC에서의 사용을 자제해 주시기 바랍니다.</span></li>
					<li><em class="bgYUI bl_dot"></em><span class="txC_red">철저한 보안 및 사용환경 관리를 통해 개인정보 남용이 발생하지 않도록 주의해주시기 바랍니다. </span>                </li>
				</ul>
			</div>
			<div class="popYUI_close"><a href="javascript:void(0)"><em class="bgYUI btn_popClose">창 닫기</em></a></div>
		</div>
	</div>
</div>
<!-- ##### 레이어 팝업 세트 끝 ##### -->

<!-- ##### 기존계정안내 관련 영역 시작 ##### -->
<div id="naverAccountGuidePop" style="display:none;">
    <div class="yesPopUp bgWhite">
        <div class="popYUIArea">
            <div class="popYUI_tit">
                <h1>기존 계정 안내</h1>
            </div>
            <div class="popYUI_cont">
                <dl class="yesAlertDl">
                    <dt>고객님은 <span id="naverJoinDate"></span>에 <br/>YES24에 가입한 회원이십니다.</dt>
                    <dd>
                        <p class="yesAlertP">
                            YES24 아이디로 로그인해주세요. <br/>
                            처음 한 번만 로그인하시면 자동으로 네이버 계정과 연동되어<br/>
                            이후부터는 네이버 아이디로 편리하게 로그인하실 수 있습니다.
                        </p>
                    </dd>
                </dl>
                <div class="popYUI_btn">
                    <a href="javascript:void(0);" onclick="closeChkNaverMem();" class="btnC m_size btn_blue w_100"><span class="bWrap"><em class="txt">확인</em></span></a>
                </div>
            </div>
            <div class="popYUI_close"><a href="javascript:void(0);"><em class="bgYUI btn_popClose">창 닫기</em></a></div>
        </div>
    </div>
</div>
<div id="AccountGuidePop" style="display:none;">
    <div class="yesPopUp bgWhite">
        <div class="popYUIArea">
            <div class="popYUI_tit">
                <h1>기존 계정 안내</h1>
            </div>
            <div class="popYUI_cont">
                <dl class="yesAlertDl">
                    <dt>고객님의 이메일(<span id="ExistMemberJoinDate" class="txC_blue"></span>)은<br/> YES24에 이미 가입된 정보입니다.</dt>
                    <dd>
                        <div class="yesTb mgb10 mgt10" id="tdExistMemberIdChecks">
                            <table width="100%" id="trExistMemberRegDts">
                            </table>
                        </div> 
                        <p class="yesAlertP">
                            YES24 아이디로 로그인해주세요.<br/>
                            <span class="sSnsName"></span> 아이디를 <em class="txC_blue">마이페이지 > 회원정보관리</em>에서 연동하시면 <br/> 
                            이후부터는 <span class="sSnsName"></span> 아이디로 편리하게 로그인하실 수 있습니다.
                        </p>
                    </dd>
                </dl>
                <div class="popYUI_btn">
                    <a href="javascript:void(0);" onclick="closeExistMemberMem();" class="btnC m_size btn_blue w_100"><span class="bWrap"><em class="txt">확인</em></span></a>
                </div>
            </div>
            <div class="popYUI_close"><a href="javascript:void(0);"><em class="bgYUI btn_popClose">창 닫기</em></a></div>
        </div>
    </div>
</div>
<!-- ##### 기존계정안내 관련 영역 끝 ##### -->



<script type="text/javascript" src="/Javascript/Member/Fingerprintjs2.js"></script>
<script type="text/javascript" src="/Javascript/Member/Fingerprintjs2_plugin.js"></script>
<script type="text/javascript" src="/Javascript/Member/Kakao.js" ></script>
<script type="text/javascript">
    function CheckLogin() {
        $SMemberID = $("#SMemberID");
        $SMemberPassword = $("#SMemberPassword");
        $AutoLogin = $("#AutoLogin");

        if ($SMemberID.val() == "") {
            //alert("아이디를 입력하십시오");
            $("#spanMemID").addClass("error");
            $("#pYesFormErrTxt_MemID").show();
            $SMemberID.focus();
            return false;
        } else {
            $("#spanMemID").removeClass("error");
            $("#pYesFormErrTxt_MemID").hide();
        }

        if ($SMemberPassword.val() == "") {
            //alert("비밀번호를 입력하십시오");
            $("#spanMemPW").addClass("error");
            $("#pYesFormErrTxt_MemPW").show();
            $SMemberPassword.focus();
            return false;
        } else {
            $("#spanMemPW").removeClass("error");
            $("#pYesFormErrTxt_MemPW").hide();
        }

        if ($("#txtCaptcha").val() == "") {
            $("#spanCaptcha").addClass("error");
            $("#pYesFormErrTxt_Capcha").show();
            $("#txtCaptcha").focus();
            return false;
        } else {
            $("#spanCaptcha").removeClass("error");
            $("#pYesFormErrTxt_Capcha").hide();
        }

        if ($SMemberID.val().length > 0 || $SMemberPassword.val().length > 0) {

            //CS 인입으로 주석처리
            //if ($SMemberID.val().indexOf(" ") >= 0) {
            //    //alert("아이디 입력란에서 공백을 제거해 주십시오");
            //    $("#spanMemID").addClass("error");
            //    $("#pYesFormErrTxt_MemID").text("아이디 입력란에서 공백을 제거해 주십시오").show();
            //    $SMemberID.focus();
            //    return false;
            //} else {
            //    $("#spanMemID").removeClass("error");
            //    $("#pYesFormErrTxt_MemID").hide();
            //}

            if ($SMemberPassword.val().indexOf(" ") >= 0) {
                //alert("비밀번호 입력란에서 공백을 제거해 주십시오");
                $("#spanMemPW").addClass("error");
                $("#pYesFormErrTxt_MemPW").text("비밀번호 입력란에서 공백을 제거해 주십시오").show();
                $SMemberPassword.focus();
                return false;
            } else {
                $("#spanMemPW").removeClass("error");
                $("#pYesFormErrTxt_MemPW").hide();
            }
        }

        var $naverCode = $('#FBLoginSub_NaverCode');
        var $naverState = $('#FBLoginSub_NaverState');

        var vToken = $("#FBLoginSub_hdfLoginToken").val();
        $("#FBLoginSub_hdfLoginHash").val(btoa(jQuery.now() + "|" + vToken));

        if (LoginDoubleClickFlag) { }
        else {
            LoginDoubleClickFlag = true;
            submitLoginSub();
            LoginDoubleClickFlag = false;
        }
    }

    //유효성 검사 텍스트 제거
    function removeErrorText(sender) {

        switch (sender) {
            case "MemberID":
                $("#spanMemID").removeClass("error");
                $("#pYesFormErrTxt_MemID").hide();
                break;
            case "MemberPW":
                $("#spanMemPW").removeClass("error");
                $("#pYesFormErrTxt_MemPW").hide();
                break;
            case "Captcha":
                $("#spanCaptcha").removeClass("error");
                $("#pYesFormErrTxt_Capcha").hide();
                break;
        }
    }

    function submitLoginSub() {
        $("#btnLogin").removeAttr("onclick").addClass("btn_disabled");

        //document.LoginSub.action = "/Templates/FTLogIn.aspx";
        document.LoginSub.submit();
    }

    function LoginEnter(event) {
        var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
        if (keyCode == 13) {
            CheckLogin();
            return false;
        }
    }

    function ShowRealNameError(mennm, idnno1, idnno2) {
        $("#divRealnameErrorLayer").load('/Member/FTRealnameErrorInfoIFrame.aspx?mennm=' + mennm + '&idnno1=' + idnno1 + '&idnno2=' + idnno2);
        $("#divRealnameErrorLayer").show();
    }

    function SubmitDormantPage(memId, autoLoginType, loginIDSave, returnUrl) {
        $("#btnLogin").removeAttr("onclick").addClass("btn_disabled");
        var ReturnUrl = $("input[name$='ReturnURL']").val();
        var ReturnParams = $("input[name$='ReturnParams']").val();
        if (returnUrl != undefined && returnUrl != "") ReturnUrl = returnUrl;

        var $formDormant = $("<form></form>");
        $formDormant.attr("action", "FTDormant.aspx");
        $formDormant.attr("method", "post");
        $formDormant.appendTo("body");

        var inputMemId = $("<input type='hidden' value='" + memId + "' name='memId' />");
        var inputAutoLoginType = $("<input type='hidden' value='" + autoLoginType + "' name='AutoLoginType' />");
        var inputLoginIDSave = $("<input type='hidden' value='" + loginIDSave + "' name='LoginIDSave' />");
        var inputReturnUrl = $("<input type='hidden' value='" + ReturnUrl + "' name='ReturnUrl' />");
        var inputReturnParams = $("<input type='hidden' value='" + ReturnParams + "' name='ReturnParams' />");

        $formDormant.append(inputMemId);
        $formDormant.append(inputAutoLoginType);
        $formDormant.append(inputLoginIDSave);
        if (ReturnUrl != undefined && ReturnUrl != "") $formDormant.append(inputReturnUrl);
        if (ReturnParams != undefined && ReturnParams != "") $formDormant.append(inputReturnParams);
        $formDormant.submit();
    }

    function SubmitMovieDormantPage(memId, autoLoginType, loginIDSave, returnUrl) {
        $("#btnLogin").removeAttr("onclick").addClass("btn_disabled");

        if (parent && parent != this) {
            alert('현재 고객님은 휴면계정 상태입니다.\n휴면계정 해지를 위해 페이지를 이동합니다.');
            parent.window.location.href = "https://www.yes24.com/Templates/FTLogIn.aspx?ReturnURL=http://movie.yes24.com";
        } else {
            //console.log(returnUrl);
            SubmitDormantPage(memId, autoLoginType, loginIDSave, returnUrl);
        }
    }

    function callNaverAuth(type, successCallback, failCallback) {
        var url = "/PartnerSSO/NaverLoginUrl.aspx";

        if (typeof type !== 'undefined') {
            url += '?type=' + type;
        }

        setCookie('ptr_reffer', document.location.href, 1);
        setCookie('pre_RefererUrl', $("#RefererUrl").val(), 1);

        $.ajax({
            type: "POST",
            url: url,
            success: function (res) {
                window.open(res, "naverid", "toolbar=no, scrollbars=yes, width=768, height=800");

                //document.location.href = jsonData.url;

                if (typeof successCallback === 'function') {
                    successCallback(jsonData);
                }
            },
            fail: function (xhr, status, errorMsg) {
                if (typeof failCallback === 'function') {
                    failCallback(xhr, status, errorMsg);
                }
            }

        });
    }



    //카카오 로그인
    function callKakaoLogin() {
        setCookie('ptr_reffer', document.location.href, 1);
        setCookie('pre_RefererUrl', $("#RefererUrl").val(), 1);
        doubleClickFlag = true;
        window.open("https://www.yes24.com/PartnerSSO/Kakao/KakaoLogin.aspx?State=Login"
            , "kakao", "toolbar=no, scrollbars=no, width=400, height=670");
    }

    function SubmitTwoFactorPage(twoFactorLoginType, memId, memPwd, autoLoginType, loginIDSave, returnUrl) {
        $("#btnLogin").removeAttr("onclick").addClass("btn_disabled");
        var ReturnUrl = $("input[name$='ReturnURL']").val();
        var ReturnParams = $("input[name$='ReturnParams']").val();
        if (returnUrl != undefined && returnUrl != "") ReturnUrl = returnUrl;

        var $formTwoFactor = $("<form></form>");
        $formTwoFactor.attr("action", "/Member/TwoFactorLogin.aspx");
        $formTwoFactor.attr("method", "post");
        $formTwoFactor.appendTo("body");

        var inputLoginType = $("<input type='hidden' value='" + twoFactorLoginType + "' name='TwoFactorLoginType' />");
        var inputMemId = $("<input type='hidden' value='" + memId + "' name='MemId' />");
        var inputMemPwd = $("<input type='hidden' value='" + memPwd + "' name='MemPwd' />");
        var inputAutoLoginType = $("<input type='hidden' value='" + autoLoginType + "' name='AutoLoginType' />");
        var inputLoginIDSave = $("<input type='hidden' value='" + loginIDSave + "' name='LoginIDSave' />");
        var inputReturnUrl = $("<input type='hidden' value='" + ReturnUrl + "' name='ReturnUrl' />");
        var inputReturnParams = $("<input type='hidden' value='" + ReturnParams + "' name='ReturnParams' />");

        $formTwoFactor.append(inputLoginType);
        $formTwoFactor.append(inputMemId);
        $formTwoFactor.append(inputMemPwd);
        $formTwoFactor.append(inputAutoLoginType);
        $formTwoFactor.append(inputLoginIDSave);
        if (ReturnUrl != undefined && ReturnUrl != "") $formTwoFactor.append(inputReturnUrl);
        if (ReturnParams != undefined && ReturnParams != "") $formTwoFactor.append(inputReturnParams);
        $formTwoFactor.submit();
    }
</script>
<script type="text/javascript">
    //네이버 연동
    function chkNaverMem(mid, mnm, joinDate, code, state) {
        $('#SMemberID').val(mid);
        $('#naverNm').html(mnm + "님!");
        $('#naverJoinDate').html(joinDate);
        $('#FBLoginSub_NaverCode').val(code);
        $('#FBLoginSub_NaverState').val(state);
        var wW = $(window).width();
        var wH = $(document).height();
        $.yesPop('naverAccountGuidePop', this, { mask: true, pWidth: 460, pGap: 160 });
        // ExistMember(mid, mnm, email, joinDate, '네이버');
    }
    function closeChkNaverMem() {
        $("#naverAccountGuidePop .popYUI_close a").click();
    }

    

    function chkKakaoMem(mid, mnm, email, joinDate) {
        ExistMember(mid, mnm, email, joinDate, '카카오');
        doubleClickFlag = false;
    }

    function chkKakaoMemExist(mid) {
        alert('이미 ' + mid + ' 회원 아이디로 연동되어 있습니다.\n사용하시려면, 마이페이지 > 회원정보 메뉴에서 계정연동 설정을 연동해지 후 이용해주세요.');
    }

    //기존연동
    function ExistMember(mid, mnm, email, joinDate, snsName) {
        $('#SMemberID').val();
        $('#ExistMemberNm').html(mnm);
        $('#ExistMemberJoinDate').html(email);
        $('.sSnsName').html(snsName);
        var wW = $(window).width();
        var wH = $(document).height();
        $.yesPop('AccountGuidePop', this, { mask: true, pWidth: 460, pGap: 160 });

        $('#tdExistMemberIdChecks').show();
        $('#trExistMemberRegDts').html("");
        var arr = joinDate.split('|');
        var s = '<caption>기존 가입일자</caption>';
        s += '<colgroup>';
        s += '<col width="80">';
        s += '<col width="*">';
        s += '</colgroup>';
        s += '<tbody><tr>';
        for (i = 0; i < arr.length - 1 ; i++) {
            if (i > 0 && i < arr.length) s += '</tr><tr>';
            s += '<th class="txt" scope="row">가입일자</th>';
            s += '<td class="txt lastCol">' + arr[i] + '</td>';
        }
        s += '</tbody></tr>';
        $('#trExistMemberRegDts').html(s);
        doubleClickFlag = false;
    }
    function closeExistMemberMem() {
        $("#AccountGuidePop .popYUI_close a").click();
    }

    function MoveReturnPage(s) {
        document.location.href = s;
    };

    (function () {
        doubleClickFlag = false;
    })();

    var LoginDoubleClickFlag = false;
    $(document).ready(function () {
        $("#chkAutoLogin").bind("change", function () {
            if ($("#chkAutoLogin").is(":checked")) {
                $("#AutoLogin").val("2");
                $("#divAutoLoginInfo").show();
                $.yesPop("dPop_autoSaveIs", $("#chkAutoLogin").parent(), { cock: true, mask: false, pWidth: 360, baseWidth: $("#yesWrap").width(), cockH: -150 });
            } else {
                $("#AutoLogin").val("1");
                $("#divAutoLoginInfo").hide();
                $("#dPop_autoSaveIs").hide();
            }
        });
        $("#chkLoginIDSave").bind("change", function () {
            if ($("#chkLoginIDSave").is(":checked")) {
                $("#LoginIDSave").val("Y");
            } else {
                $("#LoginIDSave").val("N");
            }
        });

        
    });

    // 캡챠 이미지 새로고침
    function refreshCatchaImage() {
        $("#yesCaptchaImage").attr("src", "/Common/YesCaptchaImage.aspx?" + new Date().getTime());
        $("#txtCaptcha").val('');
    }

    function closeloginFailPop() {
        $("#loginFailPop .popYUI_close a").click();
    }
</script>
					
				</div>
				<!-- ############### 로그인 폼 : 회원 영역 끝 ############### -->
				<!-- ############### 로그인 폼 : 비회원 영역 시작 ############### -->
				<div id="nMemLoginForm" class="loginFormGrp" style="display:none;">
					<form name="frmNoMemberLogin" method="post" action="./FTLogin.aspx?ReturnURL=" id="frmNoMemberLogin" autocomplete="off">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjEyNzI1MzYwMGRkrKFMZSZ2ynZJ14Z6dPrlo1wqCCQ=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['frmNoMemberLogin'];
if (!theForm) {
    theForm = document.frmNoMemberLogin;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=d1wn2vZJxQ24rX2UAuinQhWyIkpCExWnK9johVGdxdBfq9XVBKNcum7DUXmY1lKCIsvSC9VVVMameKRT6-lhu07u4Fk1&amp;t=636777048783889403" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=7nQwKNaL5y5c885Bcvw3xsngbfGRlIotyjbiJdLOzOPWoDWVXeFj8TzPRszeJu8dzSKThPQ_OO9yJ_HQGDjrbblmZh-RHGnsVEfVpnvsj-8UjT1eel2uUxQtcE6feuZ-BSf7L1z5Xa_3XqZ8DX8KUfZR2ms1&t=ffffffff999c3159" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=jmFtT6QpeAReh4nPZ4U6jERVsZ2-TH6bmsBW9KrN2G97zLZimLPwyztojoPAMt0S-u4weOI8ahl-cMsdvjcDPfEP7lQIwZi8SDbJlHDozJzbHZVcjEhu2BUzjjZxzJqYfYPEvKr0Gm07lBUzy8a-J7B2l-o8dPIqtx_FvO7NEEN3Tvg50&t=ffffffff999c3159" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var PageMethods = function() {
PageMethods.initializeBase(this);
this._timeout = 0;
this._userContext = null;
this._succeeded = null;
this._failed = null;
}
PageMethods.prototype = {
_get_path:function() {
 var p = this.get_path();
 if (p) return p;
 else return PageMethods._staticInstance.get_path();},
CheckNoMemberOrdNo:function(OrdId,OrdConfPwd,succeededCallback, failedCallback, userContext) {
return this._invoke(this._get_path(), 'CheckNoMemberOrdNo',false,{OrdId:OrdId,OrdConfPwd:OrdConfPwd},succeededCallback,failedCallback,userContext); }}
PageMethods.registerClass('PageMethods',Sys.Net.WebServiceProxy);
PageMethods._staticInstance = new PageMethods();
PageMethods.set_path = function(value) { PageMethods._staticInstance.set_path(value); }
PageMethods.get_path = function() { return PageMethods._staticInstance.get_path(); }
PageMethods.set_timeout = function(value) { PageMethods._staticInstance.set_timeout(value); }
PageMethods.get_timeout = function() { return PageMethods._staticInstance.get_timeout(); }
PageMethods.set_defaultUserContext = function(value) { PageMethods._staticInstance.set_defaultUserContext(value); }
PageMethods.get_defaultUserContext = function() { return PageMethods._staticInstance.get_defaultUserContext(); }
PageMethods.set_defaultSucceededCallback = function(value) { PageMethods._staticInstance.set_defaultSucceededCallback(value); }
PageMethods.get_defaultSucceededCallback = function() { return PageMethods._staticInstance.get_defaultSucceededCallback(); }
PageMethods.set_defaultFailedCallback = function(value) { PageMethods._staticInstance.set_defaultFailedCallback(value); }
PageMethods.get_defaultFailedCallback = function() { return PageMethods._staticInstance.get_defaultFailedCallback(); }
PageMethods.set_enableJsonp = function(value) { PageMethods._staticInstance.set_enableJsonp(value); }
PageMethods.get_enableJsonp = function() { return PageMethods._staticInstance.get_enableJsonp(); }
PageMethods.set_jsonpCallbackParameter = function(value) { PageMethods._staticInstance.set_jsonpCallbackParameter(value); }
PageMethods.get_jsonpCallbackParameter = function() { return PageMethods._staticInstance.get_jsonpCallbackParameter(); }
PageMethods.set_path("FTLogin.aspx");
PageMethods.CheckNoMemberOrdNo= function(OrdId,OrdConfPwd,onSuccess,onFailed,userContext) {PageMethods._staticInstance.CheckNoMemberOrdNo(OrdId,OrdConfPwd,onSuccess,onFailed,userContext); }
//]]>
</script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C58AA124" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAjvI/Q+3UPuyznrWZLvDZSpJRPi1R6LZfIEpTwpCEnpHwgA4kZlsMKL6XMkqiBpiAfnhTbxkm5uWvUOmdpcFMUSJOB8+gIjUkt8CcXoBJT7bg/7DYedef5IDLX+01cFNkhA+oILqQnqV8wwZFFfxWKO+vEZVUOpgPUjbafDOKth+dt5UY9E7VfhfrpM92+dodaZDz5u" />
</div>
                        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('oScriptHonor', 'frmNoMemberLogin', [], [], [], 90, '');
//]]>
</script>

				
					</form>
		
				</div>
				<!-- ############### 로그인 폼 : 비회원 영역 끝 ############### -->
			</div>
			<!-- ############################## 로그인 관련 영역 끝 ############################## -->
			<!-- ############################## 광고 관련 영역 시작 ############################## -->
			<div class="login_adArea">
				<div class="adBig">
                    
                    <iframe id="adframeRight" src="https://adgirl.yes24.com/RealMedia/ads/adstream_sx.ads/www.yes24.com/Templates/FTLogin.aspx@Right" width="100%" height="100%" noresize scrolling="no" frameborder="0" marginheight="0" marginwidth="0"></iframe>
				</div>
				<div class="adSmall">
                    
                    <iframe id="adframeBottom" src="https://adgirl.yes24.com/RealMedia/ads/adstream_sx.ads/www.yes24.com/Templates/FTLogin.aspx@Bottom" width="100%" height="100%" noresize scrolling="no" frameborder="0" marginheight="0" marginwidth="0"></iframe>
				</div>
			</div>
			<!-- ############################## 광고 관련 영역 끝 ############################## -->
		</div>
	</div>

	<!-- ##### 화면 관리자 광고 배너 시작 ##### -->
    
        <div id="loginBotBn"><a href="http://www.yes24.com/notice/FirstClass/newmemCoupon.aspx" target="_self"><img src="http://image.yes24.com/images/01_Banner/login/bn_login_960x60.gif" border="0" alt="회원가입"/></a></div>
	<div id="loginBotBn" class="default" style="display:none;">
		<a href="http://www.yes24.com/notice/FirstClass/newmemCoupon.aspx" target="_blank">
            <img src="https://secimage.yes24.com/sysimage/renew/_temp/member/bn03.gif" border="0" alt="하단 배너"></a>
	</div>
	<!-- ##### 화면 관리자 광고 배너 끝 ##### -->

    <!-- ##### 로그아웃 관련 안내 시작 ##### -->
    <div id="pwForcedLogOutMsgPop" style="display:none;">
		<div class="yesPopUp bgWhite">
			<div class="popYUIArea">
				<div class="popYUI_tit">
					<h1>로그인 안내</h1>
				</div>
				<div class="popYUI_cont">
					<p class="contP" id="pLogOutHtmlMsg">
                        로그인 세션이 만료되어 로그인 페이지로 이동되었습니다.<br/>
                        다시 로그인 후 이용해주세요.
					</p>
					<div class="popYUI_btn">
						<a href="javascript:;" onclick="fPopYUI_Close();" class="btnC m_size btn_blue w_100"><span class="bWrap"><em class="txt">확인</em></span></a>
					</div>
				</div>
				<div class="popYUI_close"><a href="javascript:void(0)"><em class="bgYUI btn_popClose">창 닫기</em></a></div>
			</div>
		</div>
	</div>
	<!-- ##### 로그아웃 관련 안내 끝 ##### -->

	

	<!-- #################### 간략 Content 영역 끝 #################### -->
	<hr/>
	<!-- #################### 간략 FOOTER 영역 시작 #################### -->
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
    var HTTP_URL = 'http://www.yes24.com/';     // pc web : www.yes24.com/ramses.yes24.com
    var HTTPS_IMG_HOST_SYS = 'https://secimage.yes24.com'
    var ORDER_URL_HTTPS = 'https://ssl.yes24.com/';

    var vPath = window.location.pathname;
    if (vPath.indexOf("//") >= 0) {
        do {
            vPath = vPath.replace(/\/\//g, '/');
        } while (vPath.indexOf("//") >= 0);
        window.location.href = vPath + window.location.search;
    }

    var getParam = function (key) {
        var _parammap = {};
        document.location.search.replace(/\??(?:([^=]+)=([^&]*)&?)/g, function () {
            function decode(s) {
                return decodeURIComponent(s.split("+").join(" "));
            }
            _parammap[decode(arguments[1])] = decode(arguments[2]);
        });
        return _parammap[key];
    };

    function LoginEnter2(event) {
        var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
        if (keyCode == 13) {
            NoMemOrdConf();
            return false;
        }
    }

    function fPopYUI_Close() {
        $(".popYUI_close a").click();
    }

    $(document).ready(function () {
        window.name = "FTLogin";

        if (document.location.hash == "#PWD_CHAG_Y") {
            $("#pwForcedLogOutMsgPop #pLogOutHtmlMsg").html("비밀번호가 변경되어 로그인 페이지로 이동됩니다.<br/>변경된 비밀번호로 다시 로그인 후 이용해주시기 <br/>바랍니다.");
            $.yesPop('pwForcedLogOutMsgPop', null, { mask: true, pWidth: 320 });
            document.location.hash = "";
        } else if (document.location.hash == "#FORCED_LOGOUT_Y") {
            $("#pwForcedLogOutMsgPop #pLogOutHtmlMsg").html("로그인 세션이 만료되어 로그인 페이지로 이동되었습니다.<br/>다시 로그인 후 이용해주세요.");
            $.yesPop('pwForcedLogOutMsgPop', null, { mask: true, pWidth: 360 });
            document.location.hash = "";
        } else if (document.location.hash == "#TWOFACTOR_LOGOUT_Y") {
            $("#pwForcedLogOutMsgPop #pLogOutHtmlMsg").html("2단계 인증이 설정되어<br/>모든 기기 및 브라우저에서 로그아웃 되었습니다.<br/>다시 로그인 후 이용해 주세요.");
            $.yesPop('pwForcedLogOutMsgPop', null, { mask: true, pWidth: 320 });
            document.location.hash = "";
        }

        if (getParam("MEM_ID") != null)
            $("#SMemberID").val(getParam("MEM_ID"));

        //$(function () {
        //    $("input[type='text']:first").focus();
        //});

	    $('.loginForm .yesIpt').iptNorBox({
	        focusColor: true
	    });
	    $('.loginForm .yesChk').iptChkBox();
	    var vTab = getParam("Tab");
	    if (vTab != undefined) {
	        if (vTab.toUpperCase() == "NoMember".toUpperCase()) {
	            $("#ulTabMember li[id=liTabNoMember] a").click();
	        }
	    }

        //하단 배너 미노출시 기본 배너 노출
	    if ($("#loginBotBn").length <= 1 && $("#loginBotBn").hasClass("") != true) {
	        $("#loginBotBn.default").css("display", "");
	    }
    });

    var _isAjaxDoing = "N";
    /**비회원주문확인**/
    function NoMemOrdConf() {

	    var d = document.frmNoMemberLogin;
	    //if (isNull(d.TxtOrdNo, "주문번호")) return;
	    if ((d.TxtOrdNo.value == "") || (d.TxtOrdNo.value == null)) {
	        //alert('[' + msg + ']를(을) 입력하시기 바랍니다.');
	        $("#spanOrdNo").addClass("error");
	        $("#pYesFormErrTxt_OrdNo").show();
	        d.TxtOrdNo.focus();
	        return false;
	    }
	    if (d.TxtOrdNo.value.replace(/\s/g, "") == "") {
	        //alert("주문번호를 입력해주세요");
	        $("#spanOrdNo").addClass("error");
	        $("#pYesFormErrTxt_OrdNo").show();
	        return false;
	    }

	    //if (isNull(d.TxtOrdConfPwd, "주문비밀번호")) return;
	    if ((d.TxtOrdConfPwd.value == "") || (d.TxtOrdConfPwd.value == null)) {
	        //alert('[' + msg + ']를(을) 입력하시기 바랍니다.');
	        $("#spanOrdConfPwd").addClass("error");
	        $("#pYesFormErrTxt_OrdConfPwd").show();
	        d.TxtOrdConfPwd.focus();
	        return false;
	    }

	    if (_isAjaxDoing == "N") {
	        
	        _isAjaxDoing = "Y";
	        PageMethods.CheckNoMemberOrdNo(d.TxtOrdNo.value, d.TxtOrdConfPwd.value, function (result) {
	            if (result == "Y") {
	                //var form = "frmNoMemberLogin";
	                //var target = "post";
	                //var action = ORDER_URL_HTTPS + "MyPageOrderDetail/MyPageOrderDetail";

	                //submit(form, target, action);

	                $("#btnOrdConf").removeAttr("onclick").addClass("btn_disabled");

	                document.frmNoMemberLogin.method = "POST";
	                document.frmNoMemberLogin.action = ORDER_URL_HTTPS + "MyPageOrderDetail/MyPageOrderDetail";
	                document.frmNoMemberLogin.submit();
	            } else {
	                alert("주문번호 또는 비밀번호를 잘못 입력하셨습니다.\n다시 확인 후 입력해주세요.\n모르시는 경우 고객센터로 문의바랍니다.\n(TEL : 1544-3800)");
	            }
	            _isAjaxDoing = "N";
	            return false;
	        }, function (result) {
	            alert("비회원 주문번호 조회 오류가 발생했습니다.\n다시 시도 해주세요.");
	            _isAjaxDoing = "N";
	            return false;
	        });
	    }
    }

    //유효성 검사 텍스트 제거
    function removeErrorText(sender) {
        switch (sender) {
            case "MemberID":
                $("#spanMemID").removeClass("error");
                $("#pYesFormErrTxt_MemID").hide();
                break;
            case "MemberPW":
                $("#spanMemPW").removeClass("error");
                $("#pYesFormErrTxt_MemPW").hide();
                break;

	        case "OrdNo":
	            $("#spanOrdNo").removeClass("error");
	            $("#pYesFormErrTxt_OrdNo").hide();
	            break;
	        case "OrdConfPwd":
	            $("#spanOrdConfPwd").removeClass("error");
	            $("#pYesFormErrTxt_OrdConfPwd").hide();
	            break;
            case "Captcha":
                $("#spanCaptcha").removeClass("error");
                $("#pYesFormErrTxt_Capcha").hide();
                break;
	    }
    }

    function chgTabLogin(obj, oId) {
	    $(obj).parent().parent().find("li").removeClass("on");
	    $(obj).parent().addClass("on");
	    $("#loginFormWrap .loginFormGrp").hide();
	    $("#" + oId + "LoginForm").show();

	    fnResetControl();
    }

    //컨트롤 초기화
    function fnResetControl() {
        //초기화
        $("#SMemberID").val('').blur();
        $("#SMemberPassword").val('').blur();
        $("#TxtOrdNo").val('').blur();
        $("#TxtOrdConfPwd").val('').blur();

        //에러 메시지 초기화
        removeErrorText('MemberID');
        removeErrorText('MemberPW');
        removeErrorText('OrdNo');
        removeErrorText('OrdConfPwd');
    }
</script>
<script type="text/javascript" src="/JavaScript/recentviewgoods.js?v=20180108"></script>
<script>
    // 최근본 상품 - 로그인 성공시 사용.
    var recentViewGoods = new RecentViewGoods();
</script>

<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/GoogleAnlystics.js"></script>
<!-- WEMS TRACKING SCRIPT CODE START -->
<!-- DO NOT MODIFY THIS SCRIPT CODE. -->
<!-- COPYRIGHT (C) 1999-2008 NETHRU INC. ALL RIGHTS RESERVED. -->
<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/wlo.min.js"></script>
<script type="text/javascript">
    _n_sid = "08070200045";
    _n_uid_cookie = "Mallinmall_CKMI";
    _n_info1_cookie = "PID";
    n_logging();
</script>

</body>
</html>