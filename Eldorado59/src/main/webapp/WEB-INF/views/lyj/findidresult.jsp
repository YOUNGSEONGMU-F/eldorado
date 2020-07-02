<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- kmc 모듈 추가 added by ksj 2013.03.19-->

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>YES24 - 아이디 찾기</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
    <link rel="shortcut icon" href="https://secimage.yes24.com/sysimage/renew/gnb/yes24.ico" type="image/x-icon"> 
    <script type="text/javascript" src="/JavaScript/util.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery.easing.1.3.min.js"></script>
    <script type="text/javascript" src="/javascript/jqueryExtends.js?ver=170325a"></script>
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
				<a href="http://www.yes24.com" id="aLogo" class="lnk_logo"><img src="https://secimage.yes24.com/sysimage/renew/sLayout/logo.png" border="0" alt="YES24"></a>
				<span class="servName"><a href="FTForgetID.aspx" id="aForgetId">아이디 찾기</a></span>
				<span class="servDivi">|</span>
				<span class="servName off"><a href="FTForgetPW.aspx" id="aForgetPw">비밀번호 찾기</a></span>
			</h1>
			<div class="headerLnk">
                <a href="FTLogIn.aspx" id="aTopLogin" class="btnC m_size w_120"><span class="bWrap"><em class="txt">로그인</em></span></a>
				    <a href="/Member/FTMemAcc.aspx" class="btnC m_size w_120"><span class="bWrap"><em class="txt">회원가입</em></span></a>
                
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
					    <li class="lastCol"><a href="javascript:void(0);" onClick="chgTabSchIDPW(this,'c');"><span class="txt">법인회원</span></a></li>
				    </ul>
			    </div>
			    <!-- ############################## 탭 영역 시작 ############################## -->
			    <!-- ############################## 개인회원 아이디 찾기 방법 영역 시작 ############################## -->
			    <div id="searchIDPW_p_wrap" class="searchIDPW_wrap">
				    <div class="yesTab_botCont">
					    아이디 찾기 방법을 선택해 주세요.
				    </div>
				    <!-- ############### 휴대폰 번호로 찾기 영역 시작 ############### -->
				    <!--
				    개발 코맨트 :
				    인증번호 요청을 누르면 인증번호의 "ipt_disabled" 및  disabled="disabled" 를 제거하여 입력 가능하게 해주세요.
				    -->
				    <dl class="yesToggleDl">
					    <dt>
						    <a href="javascript:void(0);" onClick="toggleCont(this,'#searchIDPW_p_wrap');">등록된 휴대폰 번호로 찾기<em class="bgYUI">방법 보기/감추기</em></a>
					    </dt>
					    <dd>
						    <div class="yesToggleDd">
							    <div class="yesIptRow">
								    <span id="spanTelMemNm" class="yesIpt m_size ipt_wSizeF focus_blue">
									    <label for="txtTelMemNm">이름</label>
									    <input id="txtTelMemNm" type="text" onkeydown="removeErrorText('TelMemNm')">
								    </span>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_TelMemNm">이름을 입력해주세요.</p>
							    <div class="yesIptRow row_btnR_120 mgt10">
								    <span id="spanMobile" class="yesIpt m_size ipt_wSizeF focus_blue">
									    <label for="txtMobile">휴대폰 번호 ('-'없이 입력)</label>
									    <input id="txtMobile" type="text" onkeydown="removeErrorText('Mobile')">
								    </span>
								    <a href="javascript:void(0);" onclick="CertificationConfirm('M', 'I');" class="btnC m_size w_120"><span class="bWrap"><em class="txt">인증번호 요청</em></span></a>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_Mobile">휴대폰 번호를 입력해주세요.</p>
							    <div class="yesIptRow row_white mgt10">
								    <span id="certifyNumber_Tel" class="yesIpt m_size ipt_wSizeF ipt_disabled focus_blue ipt_clearNone">
									    <label for="certifyNumberBox_Tel">인증번호 (6자리)</label>
									    <input id="certifyNumberBox_Tel" type="text" disabled="disabled" onkeydown="removeErrorText('TelCertNo')">
									    <span class="ipt_msg">인증 유효시간 : <em class="txC_black" id="SmsCertifyCmt">3분</em></span>
								    </span>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_TelCertNo">인증번호를 입력해주세요.</p>
							    <div class="yesIptRow mgt10">
								    <a href="javascript:void(0);" onclick="IdSearch('M');" class="btnC m_size btn_wSizeF btn_blue"><span class="bWrap"><em class="txt">확인</em></span></a>
							    </div>
						    </div>
					    </dd>
				    </dl>
				    <!-- ############### 휴대폰 번호로 찾기 영역 끝 ############### -->
				    <!-- ############### 이메일 주소로 찾기 영역 시작 ############### -->
				    <dl class="yesToggleDl">
					    <dt>
						    <a href="javascript:void(0);" onClick="toggleCont(this,'#searchIDPW_p_wrap');">등록된 이메일 주소로 찾기<em class="bgYUI">방법 보기/감추기</em></a>
					    </dt>
					    <dd>
						    <div class="yesToggleDd">
							    <div class="yesIptRow">
								    <span id="spanEmailMemNm" class="yesIpt m_size ipt_wSizeF focus_blue">
									    <label for="txtEmailMemNm">이름</label>
									    <input id="txtEmailMemNm" type="text" onkeydown="removeErrorText('EmailMemNm')">
								    </span>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_EmailMemNm">이름을 입력해주세요.</p>
							    <div class="yesIptRow row_btnR_120 mgt10">
								    <span id="spanEMail" class="yesIpt m_size ipt_wSizeF focus_blue">
									    <label for="txtEmail">이메일 주소</label>
									    <input id="txtEmail" type="text" onkeydown="removeErrorText('Email')">
								    </span>
								    <a href="javascript:void(0);" onclick="CertificationConfirm('E', 'I');" class="btnC m_size w_120"><span class="bWrap"><em class="txt">인증번호 요청</em></span></a>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_Email">이메일 주소를 입력해 주세요.</p>
							    <div class="yesIptRow row_white mgt10">
								    <span id="certifyNumber_Email" class="yesIpt m_size ipt_wSizeF ipt_disabled focus_blue ipt_clearNone">
									    <label for="certifyNumberBox_Email">인증번호 (6자리)</label>
									    <input id="certifyNumberBox_Email" type="text" disabled="disabled" onkeydown="removeErrorText('EmailCertNo')">
									    <span class="ipt_msg">인증 유효시간 : <em class="txC_black" id="EmailCertifyCmt">60분</em></span>
								    </span>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_EmailCertNo">인증번호를 입력해주세요.</p>
							    <div class="yesIptRow mgt10">
								    <a href="javascript:void(0);" onclick="IdSearch('E');" class="btnC m_size btn_wSizeF btn_blue"><span class="bWrap"><em class="txt">확인</em></span></a>
							    </div>
						    </div>
					    </dd>
				    </dl>
				    <!-- ############### 이메일 주소로 찾기 영역 끝 ############### -->
				    <!-- ############### 본인인증으로 찾기 영역 시작 ############### -->
				    <dl class="yesToggleDl">
					    <dt>
						    <a href="javascript:void(0);" onClick="toggleCont(this,'#searchIDPW_p_wrap');">본인인증으로 찾기<em class="bgYUI">방법 보기/감추기</em></a>
					    </dt>
					    <dd>
						    <div class="yesToggleDd">
							    <div class="yesIptRow row_btn btn_2col">
								    <span class="btn_cell firstCol">
									    <a id="personLink" href="javascript:;" class="btnC m_size"><span class="bWrap"><em class="txt">휴대폰 인증</em></span></a>
								    </span>
								    <span class="btn_cell lastCol">
									    <a id="ipinLink" href="javascript:;" class="btnC m_size"><span class="bWrap"><em class="txt">I-Pin 인증</em></span></a>
								    </span>
							    </div>
						    </div>
					    </dd>
				    </dl>
				    <!-- ############### 본인인증으로 찾기 영역 끝 ############### -->
			    </div>
			    <!-- ############################## 개인회원 아이디 찾기 방법 영역 끝 ############################## -->
			    <!-- ############################## 법인회원 아이디 찾기 방법 영역 시작 ############################## -->
			    <div id="searchIDPW_c_wrap" class="searchIDPW_wrap" style="display:none;">
				    <div class="yesTab_botCont">
					    회원가입 시 등록한 정보를 입력해주세요.
				    </div>
				    <!-- ############### 법인회원 정보 영역 시작 ############### -->
				    <div class="yesFormGrayBox">
					    <div class="yesFormGrayBox_cont">
						    <div class="yesIptRow">
							    <span id="spanCmemNm" class="yesIpt m_size ipt_wSizeF focus_blue">
								    <label for="CmemNm">법인명</label>
								    <input id="CmemNm" type="text" onkeydown="removeErrorText('CmemNm')">
							    </span>
						    </div>
						    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_CmemNm">법인명을 입력해주세요.</p>
						    <div class="yesIptRow mgt10">
							    <span id="spanCidnNo" class="yesIpt m_size ipt_wSizeF focus_blue">
								    <label for="CidnNo">사업자등록번호 (‘-’ 없이 입력)</label>
								    <input id="CidnNo" type="text" onkeydown="removeErrorText('CidnNo')">
							    </span>
						    </div>
						    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_CidnNo">사업자등록번호를 입력해주세요.</p>
						    <div class="yesIptRow mgt10">
							    <span id="spanCmstrNm" class="yesIpt m_size ipt_wSizeF focus_blue">
								    <label for="CmstrNm">담당자 이름</label>
								    <input id="CmstrNm" type="text" onkeydown="removeErrorText('CmstrNm')">
							    </span>
						    </div>
						    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_CmstrNm">담당자 이름을 입력해주세요.</p>
						    <div class="yesIptRow mgt10">
							    <a href="javascript:void(0);" onclick="CorpCheck();" class="btnC m_size btn_wSizeF btn_blue"><span class="bWrap"><em class="txt">확인</em></span></a>
						    </div>
					    </div>
				    </div>
				    <!-- ############### 법인회원 정보 영역 끝 ############### -->
				    <ul class="yesAlertLi mgt13">
					    <li><em class="bl_dot bgYUI">&nbsp;</em>가입 당시 입력하신 담당자 확인이 불가한 경우 <a href="mailto:big@yes24.com" class="txC_blue">big@yes24.com</a>으로 문의 부탁드립니다. </li>
					    <li><em class="bl_dot bgYUI">&nbsp;</em>긴급한 주문이 있으신 경우, 해당 법인의 사업자등록번호(고유번호)로 새 아이디를 생성해 주문하실 수 있습니다. 
					    <a href="/Member/FTMemAcc.aspx?Gubun=co" class="btnC s_size"><span class="bWrap"><em class="txt">법인회원 회원가입</em></span></a>
					    </li>
				    </ul>
			    </div>
			    <!-- ############################## 법인회원 아이디 찾기 방법 영역 끝 ############################## -->
            </div>

            <div id="divResult" style="display:none;">
			    <!-- ############################## 개인회원 결과 영역 시작 ############################## -->
			    <div class="schResultBoxArea" id="divResultID_Person" style="display:none;">
				    <div class="schResultBox">
					    <div class="schResultCell">
						    <p class="msg_txt">
						    고객님의 YES24 아이디는<br/><em class="txC_blue">yes24</em> 입니다.
						    </p>
					    </div>
				    </div>
			    </div>
			    <!-- ############################## 개인회원 결과 영역 끝 ############################## -->
			    <!-- ############################## 법인회원 결과 영역 시작 ############################## -->
			    <div class="schResultBoxArea" id="divResultID_Corp" style="display:none;">
				    <div class="schResultBox">
					    <div class="schResultCell">
						    <p class="msg_txt">
						    예스이십사㈜님의 YES24 아이디는<br/><em class="txC_blue">yes24</em> 입니다.
						    </p>
					    </div>
				    </div>
			    </div>
			    <!-- ############################## 법인회원 결과 영역 끝 ############################## -->
			    <!-- ############################## 버튼 영역 시작 ############################## -->
			    <div class="grpBtnCArea wSizeF">
				    <div class="grpBtnC">
					    <span class="grpBtnCell firstCol">
						    <a href="FTForgetPW.aspx" class="btnC m_size"><span class="bWrap"><em class="txt">비밀번호 찾기</em></span></a>
					    </span>
					    <span id="spanResultLoginArea" class="grpBtnCell lastCol">
						    <a href="FTLogIn.aspx" class="btnC m_size btn_blue"><span class="bWrap"><em class="txt">로그인</em></span></a>
					    </span>
				    </div>
			    </div>
			    <!-- ############################## 버튼 영역 끝 ############################## -->
                <!-- ############################## 배너 영역 시작 ############################## -->
			    <div class="bnIdPwSch">
                    
			    </div>
			    <!-- ############################## 배너 영역 끝 ############################## -->
		    </div>
		</div>
		<script language="javascript">
		    $(document).ready(function () {
		        $('#searchIdPw .yesIpt').iptNorBox({
		            focusColor: true
		        });
		    });
		</script>
	</div>
	<!-- #################### 간략 Content 영역 끝 #################### -->

    <!-- IPIN DATA -->
    <form name="objForm" method="post" action="">
        <input type="hidden" name="m" value="pubmain" />
        <input type="hidden" id="varMode" name="varMode" value="search" />
        <input type="hidden" id="checkType" name="checkType" value="personal" />
        <input type="hidden" name="enc_data" value="" />
        <input type="hidden" id="selectType" name="selectType" value="E" />
    
	    <input name="rec_cert" type="hidden" id="rec_cert" />        
        <input name="CertNum" type="hidden" id="CertNum" />
        <input type="hidden" name="param_r1" value="Templates/FTForgetID.aspx" />
    </form>

	<hr/>
	<!-- #################### 간략 FOOTER 영역 시작 #################### -->
	<div id="ySFooter">
		<div class="ySFooterAera pos_r">
			<address>	
				Copyright &#0169; <strong>YES24 Corp.</strong> All Rights Reserved. 
                <div class="pos_a" style="left:0;top:0;color:#F8F8F8;">NLEON</div>
			</address>
		</div>
	</div>
	<!-- #################### 간략 FOOTER 영역 시작 #################### -->
</div>
<script type="text/javascript">
    // 개인회원, 법인회원 탭
    function chgTabSchIDPW(obj, tId) {
        $(obj).parent().parent().find("li").removeClass("on");
        $(obj).parent().addClass("on");
        $(".searchIDPW_wrap").hide();
        $("#searchIDPW_" + tId + "_wrap").show();

        //토글 메뉴 초기화
        //$("#searchIDPW_p_wrap dl.toggleOn").removeClass("toggleOn");
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

    //휴대폰 번호 도용방지 서비스 안내 팝업 - ctg_code=6
    var popIpns;
    function popIpnsServiceInfo() {
        popIpns = window.open("https://ipns.kr/pns/service_info?site_code=S114&ctg_code=6&sub_code=1", "도용방지", "height=700,width=450,scrollbars=yes,resizable=yes");
    }

    //컨트롤 초기화
    function fnResetControl() {
        SmsCertNum = 1; //탭 이동시 초기화
        EmailCertNum = 1;

        //초기화
        $("#txtEmailMemNm").val('').blur();
        $("#txtEmail").val('').blur();
        $("#txtTelMemNm").val('').blur();
        $("#txtMobile").val('').blur();
        $("#certifyNumberBox_Email").val('').blur();
        $("#certifyNumberBox_Tel").val('').blur();
        $("#certifyNumber_Email").addClass('ipt_disabled');
        $("#certifyNumber_Tel").addClass('ipt_disabled');
        $("#certifyNumberBox_Email").attr({ "disabled": true });
        $("#certifyNumberBox_Tel").attr({ "disabled": true });
        stopTime('E');
        stopTime('M');
        $("#CmemNm").val('').blur();
        $("#CidnNo").val('').blur();
        $("#CmstrNm").val('').blur();
        //에러 메시지 초기화
        removeErrorText('TelMemNm');
        removeErrorText('Mobile');
        removeErrorText('EmailMemNm');
        removeErrorText('Email');
        removeErrorText('TelCertNo');
        removeErrorText('EmailCertNo');
        removeErrorText('CmemNm');
        removeErrorText('CidnNo');
        removeErrorText('CmstrNm');
    }

    //window.name = "Parent_window";
    //function ipin_open() {
    //    window.open("", "popup", "width=448px,height=500px");
    //    document.form_ipin.target = "popup";
    //    document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
    //    document.form_ipin.submit();
    //}

    $(document).ready(function () {
        //숫자만 입력 가능하도록
        $("#txtMobile, #certifyNumberBox_Tel, #certifyNumberBox_Email, #CidnNo")
            .css("ime-mode", "disabled")
            .bind('keyup', function (event) {
                onlyReplaceNumber(this);
            })
            .bind('focusout', function (event) {
                onlyReplaceNumber(this);
            });

        //$("#txtMobile").css("ime-mode", "disabled").bind('keyup', function () { onlyReplaceNumber(this); });
        //$("#certifyNumberBox_Tel").css("ime-mode", "disabled").bind('keyup', function () { onlyReplaceNumber(this); });
        //$("#certifyNumberBox_Email").css("ime-mode", "disabled").bind('keyup', function () { onlyReplaceNumber(this); });

        //$("#CidnNo").css("ime-mode", "disabled").bind('keyup', function () { onlyReplaceNumber(this); });//사업자번호
    });

    var interval;
    var timeLeft;
    function startTimer(duration, v) {
        var start = Date.now() + 1, diff, minutes, seconds;
        var timer;
        var target = 'Tel';
        var targetId = $('#SmsCertifyCmt');
        if (v == 'E') {
            target = 'Email';
            targetId = $('#EmailCertifyCmt');
        }
        function timer() {
            var showMsg = false;
            var timer = duration / 60;
            diff = parseInt(duration - ((Date.now() - start) / 1000), 10);
            minutes = parseInt(diff / 60, 10);
            seconds = parseInt(diff % 60, 10);
            timeLeft = diff;

            if (timeLeft <= 0) {
                $("#certifyNumberBox_" + target).val("");
                $("#certifyNumber_" + target).addClass('class', "ipt_disabled");
                $("#certifyNumberBox_" + target).attr("disabled", true);
                stopTime(v);
                $("#pYesFormErrTxt_" + target + "CertNo").html('인증번호 입력 제한 시간을 초과하였습니다.<br>인증번호를 다시 요청해주시기 바랍니다.').show();
                SmsCertAuthCheck = false;
                EmailCertAuthCheck = false;
                SmsCertNum = 1;
                EmailCertNum = 1;
            } else {
                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;
                $(targetId).html(minutes + ':' + seconds);
            }
        };
        timer();
        interval = setInterval(timer, 1000);
    }

    function stopTime(v) {
        clearInterval(interval);
        if (v == 'E') {
            $('#EmailCertifyCmt').text('60분');
        } else {
            $('#SmsCertifyCmt').text('3분');
        }
    }

    //유효성 검사
    function ValidationCheck(type) {
        var bCheck = false;
        if (type == "M") {
            if ($('#txtTelMemNm').val() == "") {
                //alert("이름을 입력해 주세요");
                $("#spanTelMemNm").addClass("error");
                $("#pYesFormErrTxt_TelMemNm").show();
                $('#txtTelMemNm').focus();
                return vCheck;
            } else if ($("#txtMobile").val() == "") {
                //alert("휴대폰 번호를 입력하세요");
                $("#spanMobile").addClass("error");
                $("#pYesFormErrTxt_Mobile").show();
                $("#txtMobile").focus();
                return bCheck;
            } else {
                bCheck = true;
            }
        } else if (type == "E") {
            if ($('#txtEmailMemNm').val() == "") {
                //alert("이름을 입력해 주세요");
                $("#spanEmailMemNm").addClass("error");
                $("#pYesFormErrTxt_EmailMemNm").show();
                $('#txtEmailMemNm').focus();
                return bCheck;
            } else if ($('#txtEmail').val() == "") {
                //alert("메일주소를 입력해 주세요");
                $("#spanEMail").addClass("error");
                $("#pYesFormErrTxt_Email").show();
                $('#txtEmail').focus();
                return bCheck;
            } else if (checkValidEmail($('#txtEmail').val()).Success != true) { //이메일 주소 유효성 검사
                //alert("[이메일]을 정확히 입력해주세요.");
                $("#spanEMail").addClass("error");
                $("#pYesFormErrTxt_Email").html('이메일 형식이 올바르지 않습니다.').show();
                $('#txtEmail').focus();
                return;
            } else {
                bCheck = true;
            }
        }
        return bCheck;
    }

    //유효성 검사 텍스트 제거
    function removeErrorText(sender) {
        switch (sender) {
            case "TelMemNm":
                $("#spanTelMemNm").removeClass("error");
                $("#pYesFormErrTxt_TelMemNm").hide();
                break;
            case "Mobile":
                $("#spanMobile").removeClass("error");
                $("#pYesFormErrTxt_Mobile").hide();
                break;
            case "EmailMemNm":
                $("#spanEmailMemNm").removeClass("error");
                $("#pYesFormErrTxt_EmailMemNm").hide();
                break;
            case "Email":
                $("#spanEMail").removeClass("error");
                $("#pYesFormErrTxt_Email").hide();
                break;
            case "TelCertNo":
                $("#certifyNumber_Tel").removeClass("error");
                $("#pYesFormErrTxt_TelCertNo").hide();
                break;
            case "EmailCertNo":
                $("#certifyNumber_Email").removeClass("error");
                $("#pYesFormErrTxt_EmailCertNo").hide();
                break;
            case "CmemNm":
                $("#spanCmemNm").removeClass("error");
                $("#pYesFormErrTxt_CmemNm").hide();
                break;
            case "CidnNo":
                $("#spanCidnNo").removeClass("error");
                $("#pYesFormErrTxt_CidnNo").hide();
                break;
            case "CmstrNm":
                $("#spanCmstrNm").removeClass("error");
                $("#pYesFormErrTxt_CmstrNm").hide();
                break;
        }
    }

    function CertificationConfirm(type, certType) {
        if (type == "M") {
            if (ValidationCheck(type) == true) {
                if (SmsCertNum < 4) {
                    SmsCertificationConfirm(type, certType);
                } else {
                    //alert('인증번호 요청은 3회까지만 가능하며, 인증유효시간 이후 다시 요청하실 수 있습니다.');
                    $("#pYesFormErrTxt_TelCertNo").html('인증번호 요청은 3회까지만 가능하며,<br>인증유효시간 이후 다시 요청하실 수 있습니다.').show();
                }
            }
        } else if (type == "E") {
            if (ValidationCheck(type) == true) {
                if (EmailCertNum < 4) {
                    EmailCertificationConfirm(type, certType);
                } else {
                    //alert('인증번호 요청은 3회까지만 가능하며, 인증유효시간 이후 다시 요청하실 수 있습니다.');
                    $("#pYesFormErrTxt_EmailCertNo").html('인증번호 요청은 3회까지만 가능하며,<br>인증유효시간 이후 다시 요청하실 수 있습니다.').show();
                }
            }
        }
    }

    var CheckCertNo;
    var CheckEmailCertNo;
    var SmsCertNum = 1;
    var EmailCertNum = 1;
    var SmsCertAuthCheck = false;
    var EmailCertAuthCheck = false;
    //인증번호 받기
    function SmsCertificationConfirm(SearchType, certType) {
        var Search = $("#txtMobile").val();
        var MemNm = $("#txtTelMemNm").val();

        $.ajax({
            type: "POST",
            url: "/Member/certification/IdFindSmsCertification.aspx",
            data: { SEARCH_TYPE: SearchType, AUCTION_TYPE: certType, SEARCH: Search, MemNm: escape(MemNm) },
            dataType: "json",
            success: function (data, status, xhr) {
                //loadingEnd("divmethodConBoxSMS");
                if (data.IsSuccess == "1") {
                    if (data.Msg == "error") {
                        alert('확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.1');
                    } else if (data.Msg == "불일치") {
                        alert('가입시 입력한 이름과 휴대폰 번호가 \n일치하지 않습니다.\n정보를 다시 확인하시고 시도해주세요.');
                        stopTime('M');
                        $("#certifyNumberBox_Tel").attr("disabled");
                        $("#certifyNumber_Tel").addClass('ipt_disabled');
                    } else if (data.Msg == "성공") {
                        SmsCertNum++;
                        SmsCertAuthCheck = true;
                        if (certType == 'I') {
                            stopTime('M');
                            startTimer(180, 'M');
                            alert('입력하신 휴대폰 번호로 \n인증번호가 발송되었습니다.');
                            $("#certifyNumberBox_Tel").removeAttr("disabled");
                            $("#certifyNumber_Tel").removeClass('ipt_disabled');
                            removeErrorText("TelCertNo");
                            CheckCertNo = data.CertNo;
                        } else {
                            //인증번호 확인
                            ValidateSms();
                        }
                    } else if (data.Msg == "실패") {
                        alert('인증번호 발송이 \n실패하였습니다.');
                    }
                }
            },
            error: function (xhr, textStatus, thrownError) {
                alert('오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.2');
            }
        });
    }

    //인증번호 체크
    function ValidateSms() {
        var CertNo = $("#certifyNumberBox_Tel").val();
        var Search = $("#txtMobile").val();
        var SmsCertName = $("#txtTelMemNm").val();
        var regNumbers = /^[0-9]+$/;

        ValidationCheck('M');
        if (CertNo == "") {
            //alert('인증번호를\n입력해주세요.');
            $("#certifyNumber_Tel").addClass("error");
            $("#pYesFormErrTxt_TelCertNo").show();
            $("#certifyNumberBox_Tel").focus();
            return;
        } else if (CertNo.length < 6 || CertNo.length > 6) {
            //alert('인증번호를\n정확히 입력해주세요.');
            $("#certifyNumber_Tel").addClass("error");
            $("#pYesFormErrTxt_TelCertNo").html('인증번호를 정확히 입력해주세요.').show();
            $("#certifyNumberBox_Tel").focus();
            return;
        } else if (!regNumbers.test(CertNo)) {
            //alert('인증번호는 숫자만 가능합니다.');
            $("#certifyNumber_Tel").addClass("error");
            $("#pYesFormErrTxt_TelCertNo").html('인증번호는 숫자만 가능합니다.').show();
            $("#certifyNumberBox_Tel").focus();
            return;
        } else if (Search == "") {
            //alert("휴대폰 번호를 정확하게 입력해주세요.");
            $("#spanMobile").addClass("error");
            $("#pYesFormErrTxt_Mobile").html('휴대폰 번호를 정확하게 입력해주세요.').show();
            return;
        } else {
            $.ajax({
                type: "POST",
                url: "/Member/certification/IdFindSmsCertification.aspx",
                data: { SEARCH_TYPE: 'M', AUCTION_TYPE: "U", CertNo: CertNo, SEARCH: Search, CheckCertNo: CheckCertNo, MemNm: escape(SmsCertName) },
                dataType: "json",
                success: function (data, status, xhr) {
                    if (data.IsSuccess == "1") {
                        if (data.Msg == "error") {
                            alert('확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.1');
                        } else if (data.Msg == "초과") {
                            $("#certifyNumberBox_Tel").attr("disabled");
                            $("#certifyNumber_Tel").addClass('ipt_disabled');
                            $("#pYesFormErrTxt_TelCertNo").html('인증번호 입력 제한 시간을 초과하였습니다.<br>인증번호를 다시 요청해주시기 바랍니다.').show();
                        } else {
                            IdCheckV2('M', data.Msg);
                        }
                    } else {
                        //alert(data.Msg);
                        $("#pYesFormErrTxt_TelCertNo").html(data.Msg).show();
                    }
                },
                error: function (xhr, textStatus, thrownError) {
                    alert('ID 확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.2');
                }
            });
        }//else
    }

    //email 인증 받기
    function EmailCertificationConfirm(SearchType, certType) {
        var Search = $("#txtEmail").val();
        var MemNm = $("#txtEmailMemNm").val();

        $.ajax({
            type: "POST",
            url: "/Member/certification/IdFindEmailCertification.aspx",
            data: { SEARCH_TYPE: SearchType, AUCTION_TYPE: certType, SEARCH: Search, MemNm: escape(MemNm) },
            dataType: "json",
            success: function (data, status, xhr) {
                // loadingEnd("divmethodConBoxEmail");
                if (data.IsSuccess == "1") {
                    if (data.Msg == "error") {
                        alert('확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.1');
                    } else if (data.Msg == "불일치") {
                        alert('가입시 입력한 이름과 이메일이 일치하지 않습니다.\n정보를 다시 확인하시고 시도해주세요.');
                        stopTime('E');
                        $("#certifyNumberBox_Email").val('');
                        $("#certifyNumberBox_Email").attr("disabled");
                        $("#certifyNumber_Email").addClass('ipt_disabled');
                        
                    } else if (data.Msg == "성공") {
                        EmailCertNum++;
                        EmailCertAuthCheck = true;
                        if (certType == 'I') {
                            stopTime('E');
                            startTimer(3600, 'E');
                            alert('인증번호가 발송되었습니다.');
                            $("#certifyNumberBox_Email").removeAttr("disabled");
                            $("#certifyNumber_Email").removeClass('ipt_disabled');
                            removeErrorText("EmailCertNo");
                            CheckEmailCertNo = data.CertNo;
                        } else {
                            //인증번호 확인
                            ValidateEmail();
                        }
                    } else if (data.Msg == "실패") {
                        $("#EmailForenCertSussceMSG").hide();
                        alert('인증메일 발송이 \n실패하였습니다.');
                    } else if (data.Msg == "실패2") {
                        $("#EmailForenCertSussceMSG").hide();
                        alert('사용할 수 없는 이메일입니다.');
                    }
                }
                else
                    alert(data.Msg);
            },
            error: function (xhr, textStatus, throwError) {
                alert('오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.2');
            }
        });
    }

    //인증번호 체크
    function ValidateEmail() {
        var CertNo = $("#certifyNumberBox_Email").val();
        var Search = $("#txtEmail").val();
        var EmailCertName = $("#txtEmailMemNm").val();
        var regNumbers = /^[0-9]+$/;

        ValidationCheck('E');
        if (CertNo == "") {
            //alert('인증번호를\n입력해주세요.');
            $("#certifyNumber_Email").addClass("error");
            $("#pYesFormErrTxt_EmailCertNo").show();
            $("#certifyNumberBox_Email").focus();
            return;
        } else if (CertNo.length < 6 || CertNo.length > 6) {
            //alert('인증번호를\n정확히 입력해주세요.');
            $("#certifyNumber_Email").addClass("error");
            $("#pYesFormErrTxt_EmailCertNo").html('인증번호를 정확히 입력해주세요.').show();
            $("#certifyNumberBox_Email").focus();
            return;
        } else if (!regNumbers.test(CertNo)) {
            //alert('인증번호는 숫자만 가능합니다.');
            $("#certifyNumber_Email").addClass("error");
            $("#pYesFormErrTxt_EmailCertNo").html('인증번호는 숫자만 가능합니다.').show();
            $("#certifyNumberBox_Email").focus();
            return;
        } else if (Search == "") {
            //alert("이메일을 정확하게 입력해주세요.");
            $("#spanEmail").addClass("error");
            $("#pYesFormErrTxt_Email").html('이메일을 정확하게 입력해주세요.').show();
            return;
        } else {
            $.ajax({
                type: "POST",
                url: "/Member/certification/IdFindEmailCertification.aspx",
                data: { SEARCH_TYPE: 'E', AUCTION_TYPE: 'U', CertNo: CertNo, SEARCH: Search, CheckCertNo: CheckEmailCertNo, MemNm: escape(EmailCertName) },
                dataType: "json",
                success: function (data, status, xhr) {
                    if (data.IsSuccess == "1") {
                        if (data.Msg == "error") {
                            alert('확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.1');
                        } else if (data.Msg == "초과") {
                            $("#certifyNumberBox_Email").attr("disabled");
                            $("#certifyNumber_Email").addClass('ipt_disabled');
                            $("#pYesFormErrTxt_EmailCertNo").html('인증번호 입력 제한 시간을 초과하였습니다.<br>인증번호를 다시 요청해주시기 바랍니다.').show();
                        } else {
                            IdCheckV2('E', data.Msg);
                        }
                    } else {
                        //alert(data.Msg);
                        $("#pYesFormErrTxt_EmailCertNo").html(data.Msg).show();
                    }
                },
                error: function (xhr, textStatus, thrownError) {
                    alert('ID 확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.2');
                }
            });
        }//else
    }

    //확인 
    function IdSearch(vMethodTp) {
        if (vMethodTp != undefined && vMethodTp.length > 0) {
            if (vMethodTp == "M") {
                // 핸드폰
                if (ValidationCheck("M") == true) {
                    if (!SmsCertAuthCheck) {
                        alert("인증번호를 요청해주세요.");
                        return false;
                    } else if ($('#certifyNumberBox_Tel').val() != '' && $('#certifyNumberBox_Tel').is(":disabled") == false) {
                        //인증번호
                        SmsCertificationConfirm("M", '');
                    } else {
                        //alert("인증번호를 입력 후 확인 버튼을 누르세요");
                        $("#certifyNumber_Tel").addClass("error");
                        $("#pYesFormErrTxt_TelCertNo").html('인증번호를 입력 후 확인 버튼을 누르세요').show();
                        $("#certifyNumberBox_Tel").focus();
                        return false;
                    }
                }
            } else if (vMethodTp == "E") {
                // 이메일 체크 해봐야 함.
                if (ValidationCheck("E") == true) {
                    if (!EmailCertAuthCheck) {
                        alert("인증번호를 요청해주세요.");
                        return false;
                    } else if ($('#certifyNumberBox_Email').val() != '' && $('#certifyNumberBox_Email').is(":disabled") == false) {
                        EmailCertificationConfirm("E", '');
                    } else {
                        //alert("인증번호를 입력 후 확인 버튼을 누르세요");
                        $("#certifyNumber_Email").addClass("error");
                        $("#pYesFormErrTxt_EmailCertNo").html('인증번호를 입력 후 확인 버튼을 누르세요').show();
                        $("#certifyNumberBox_Email").focus();
                        return false;
                    }
                }
            }//else
        }//val체크
    }

    //간단찾기
    function IdCheckV2(vMethodTp, msg) {
        if (msg == "error") {
            alert('확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다..');
        } else if (msg == "") {
            //아이디 없음.
            GetID(vMethodTp, msg);
        } else {
            stopTime(vMethodTp);
            GetID(vMethodTp, msg);
        }
    }

    function GetID(type, msg) {
        var strSearch = "";
        //이메일,휴대폰 인증
        if (type == "E" || type == "M") {
            if (msg != "" && msg.trim() != "") {
                var Array = msg.split(',');
                strSearch += "고객님의 YES24 아이디는<br/>";
                strSearch += "<em class='txC_blue'>";
                for (var i = 0; i < Array.length; i++) {
                    strSearch += Array[i];
                    if (i + 1 < Array.length) {
                        strSearch += ", ";
                        if (i > 0 && (i + 1) % 3 == 0) strSearch += "<br/>";    //3개씩 줄바꿈
                    }
                }
                strSearch += "</em> 입니다.";
            } else {
                strSearch = "검색된 아이디가 없습니다.";
            }
        } else if (type == "personal" || type == "company") {
            if (msg != "" && msg.trim() != "") {
                var arr = msg.split(',');
                for (var i = 0; i < arr.length; i++) {
                    var data = arr[i].split(':');
                    if (data.length > 0) {
                        if (i == 0) {
                            strSearch += data[1] + "님의 YES24 아이디는<br/>";
                        } else if (data.length > 1 && data[1] != undefined) {
                            var arrMemId = data[1].split('|');
                            strSearch += "<em class='txC_blue'>";
                            for (var j = 0; j < arrMemId.length; j++) {
                                if (arrMemId[j] != undefined && arrMemId[j].trim().length > 0) {
                                    strSearch += arrMemId[j];
                                    if (j + 1 < arrMemId.length) {
                                        strSearch += ", ";
                                        if (j > 0 && (j + 1) % 3 == 0) strSearch += "<br/>";    //3개씩 줄바꿈
                                    }
                                }
                            }
                            strSearch += "</em> 입니다.";
                        }
                    }
                }
            } else {
                if (type == "company") {
                    alert('입력하신 정보가 정확하지 않습니다.\n정보를 다시 확인하시고 시도해주세요.');
                    return false;
                } else {
                    strSearch = "검색된 아이디가 없습니다.";
                }
            }
        }

        if (type == "E" || type == "M" || type == "personal") {
            $("#divFind").hide();
            $("#divResult").show();
            $("#divResultID_Person").show();
            $("#divResultID_Person p.msg_txt").html(strSearch);
        } else {
            $("#divFind").hide();
            $("#divResult").show();
            $("#divResultID_Corp").show();
            $("#divResultID_Corp p.msg_txt").html(strSearch);
        }
    }


    /* ipin 결과값 리턴 메서드 */
    function ipinCallee(returnValue) {
        if (returnValue != undefined && returnValue != null) {
            $("#selectType").val("I");
            $("#enc_data").val(returnValue.EncryptData);
            PersonalCheck(returnValue.EncryptData);
        }
    }
    /* ipin 실패 리턴 메서드 */
    function ipinErrorCallee(returnValue)
    { }

    /* 본인인증 결과값 리턴 메서드 */
    function kmcCallee(returnValue) {
        if (returnValue != undefined && returnValue != null) {
            $("#selectType").val(returnValue.AuthType);
            $("#CertNum").val(returnValue.CertNum);
            $("#rec_cert").val(returnValue.EncryptData);
            PersonalCheck(returnValue.EncryptData, returnValue.CertNum);
        }
    }
    /* 본인인증 실패 리턴 메서드 */
    function kmcErrorCallee(returnValue)
    { }

    function PersonalCheck(enc_data, num) {
        var selectType = $("#selectType").val();
        var userType = "personal";

        GetForgetID(userType, selectType, enc_data, "", "", num);
    }

    //법인회원 - 비밀번호 찾기 - 확인
    function CorpCheck() {
        var userType = "company";
        var selectType = $("#selectType").val();
        var memNm = $("#CmemNm").val();
        var idnNo = $("#CidnNo").val();
        var mstrNm = $("#CmstrNm").val();

        if (memNm == "") {
            //alert("'법인명'을 입력해주세요.");
            $("#spanCmemNm").addClass("error");
            $("#pYesFormErrTxt_CmemNm").show();
            event.ReturnValue = false;
            return false;
        }
        if (idnNo == "") {
            //alert("'사업자등록번호'를 정확히 입력해주세요.");
            $("#spanCidnNo").addClass("error");
            $("#pYesFormErrTxt_CidnNo").show();
            event.ReturnValue = false;
            return false;
        }
        if (mstrNm == "") {
            //alert("'담당자 이름'을 입력해주세요.");
            $("#spanCmstrNm").addClass("error");
            $("#pYesFormErrTxt_CmstrNm").show();
            event.ReturnValue = false;
            return false;
        }

        GetForgetID(userType, "", idnNo, memNm, mstrNm);
    }

    // 아이디찾기
    function GetForgetID(userType, selectType, search, name, mstrNm, num) {
        $.ajax({
            type: "POST",
            url: "/Templates/FTForgetID_Ajax.aspx",
            data: { UserType: userType, SearchType: selectType, rec_cert: search, enc_data: search, Name: escape(name), MstrNm: escape(mstrNm), CertNum: num },
            success: function (msg) {
                var info = msg.split(/\n/g);
                var msg = info[0];
                if (msg == "error") {
                    alert('ID 확인 중 오류가 발생하였습니다.\n잠시 후 다시 확인 바랍니다.1');
                } else {
                    if (msg.trim() == "") {
                        GetID(userType, msg);
                    } else if (msg != "") {
                        GetID(userType, msg);
                    }//if
                } //else
            } //msg
        });
    }
</script>
<!-- IPIN / 본인인증 -->

            <script type='text/javascript'>
            <!--
                 function fnIPINPopup() {
                    window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
                    
                    var form = document.vndForm;

                    if(form != undefined && form != null)
                    {
                        form.target = 'popupIPIN2';
                        form.action = 'https://cert.vno.co.kr/ipin.cb';
                        form.submit();
                    }
                }

                function ipinReturnValue(isSucess, returnValue)
                {
					try
					{
						if(!isSucess)
						{
							if(returnValue != null && returnValue.ErrorMsg != null)
							{
								ipinErrorCallee(returnValue);
							}
						}
						else
							ipinCallee(returnValue);
						}
					catch(err)
					{}
                }

                $(document).ready(
                    function() {
                        var obj = $("#ipinLink");

                        if(obj != undefined && obj != null)
                        {
                            if(obj[0].tagName == 'A' || obj[0].tagName == 'AREA')
                                obj.attr('href', 'javascript:fnIPINPopup()');
                            else
                                obj.bind('click', function() { fnIPINPopup(); });
                        }
                    }
                );
            -->
            </script>


            <form name='vndForm' method='post'>
				<input type='hidden' name='enc_data' value='AgEERzMxNDrZ4Yg0Jpe5iBjBZTs/MZq84IKDnOqqxI5DMzbtFv01vTBi9hC6oq44uOaqCF9RXkYpK+eZbAqFeW9NT8duT1JPy/WamUZIXaELnlBDax6T6nbvYwyCAe+BcH0yp9soID/5GwzR9ofaF+zaUycV96XfXQIk03iyaUeXG5Le2hqXSlo5IAmjddgwdzPt3ysz7XVbCcvRBDKUKB7/etel5JibFQfa2qsruQhpDiLmdpJSzoKSIkaelwmwQ8j/4kwLfe1qjkm97QWvU0oBLIKj9OE5a1Usd0fcaFHpu3n+A7aGRa+vmFf+XrJ6faomcdaynw=='/>
                <input type='hidden' name='m' value='pubmain'/>
            </form>

			<script type='text/javascript'>
            <!--  

				function fnKMCPopup() {

                    window.open('', 'popupKMCChk', 'width=425, height=550, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250');

                    var form = document.reqKMCISForm;

                    if(form != undefined && form != null)
                    {
						
                        form.target = 'popupKMCChk';

						form.action = 'https://www.kmcert.com/kmcis/web/kmcisReq.jsp';

                        form.submit();
                    }
                }
                
                function kmcReturnValue(isSucess, returnValue)
                {
					try
					{
						if(!isSucess)
						{
							if(returnValue != null && returnValue.ErrorMsg != null)
							{							
								kmcErrorCallee(returnValue);
							}
						}
						else
							kmcCallee(returnValue);
					}
					catch(err)
					{}
                }

				function IsMobile()
				{
					var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Nokia');
										
					for (var word in mobileKeyWords) {
						if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
							return true;
						}
					}

					return false;
				}

				$(document).ready(
                    function() {
                        var obj = $("#personLink");

                        if(obj != undefined && obj != null)
                        {
                            if(obj[0].tagName == 'A' || obj[0].tagName == 'AREA')
                                obj.attr('href', 'javascript:fnKMCPopup()');
                            else
                                obj.bind('click', function() { fnKMCPopup(); });
                        }
                    }
                );
			 -->
            </script>


            <form name='reqKMCISForm' method='post'>
				<input type='hidden' name='tr_cert' value='KMC000001-44F715F05F81D7E8B3206F559179F7188372CB5F2B0A1B831D546738D5C9E8558C83066AE9034C9250BEE7DC5585286CB19140E11C25C47221BA17CEC1BE7356328DF9E9F1F8D742176F716AF0C7A0E283E0EDDE1D7A28438505940E7E87D6B61605282FB6F2721EF27244840168E18D905E2B5A8DACA9DA0201041E345A28D496278F8E467D0D78E41C45D35E90C189D5FEAD9C1878545718E0F038B77323CA67AF7B3B936E5A2705BAA1DE60956FBBF854C8A6DA83841EB1814ED2757DB626CCDDA8E6C159EB6930D6CFB173AEEE7B0916AE330049B67CAD590A859F142E5CC7C845756A9CD8E180A4001ADF45425ACDEC42123FF70911DCFFCA85EBDC41ED'/>
                <input type='hidden' name='tr_url'      value = 'https://www.yes24.com//Modules/RealNameCheck/KMCMoblieProcess.aspx'>                
            </form>

<!-- 로거 스크립트 시작 -->
<script>
    _TRK_CP = '/Login/아이디찾기';
    _TRK_PI = ''; //Page Identity
    _TRK_PN = ''; //Product Name
    _TRK_MF = ''; //Manufacture Name
    _TRK_OA = ''; //Order Amount(s) with ';' Separated
    _TRK_OP = ''; //Order Product(s) with ';' Separated
    _TRK_OE = ''; //Order EA with ';' Separated
    _TRK_CC = ''; //Campaign Code
</script>
<!-- 로거 스크립트 끝 -->

<!-- WEMS TRACKING SCRIPT CODE START -->
<!-- DO NOT MODIFY THIS SCRIPT CODE. -->
<!-- COPYRIGHT (C) 1999-2008 NETHRU INC. ALL RIGHTS RESERVED. -->
<script src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/wlo.min.js"></script>

<script>
    _n_sid = "08070200045";
    _n_uid_cookie = "Mallinmall_CKMI";
    _n_info1_cookie = "PID";
    n_logging();
</script>
<!-- WEMS TRACKING SCRIPT CODE END -->
</body>
</html>