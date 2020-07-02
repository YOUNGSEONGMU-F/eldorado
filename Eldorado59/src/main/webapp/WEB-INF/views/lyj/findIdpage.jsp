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
							    <div class="yesIptRow">
								    <span id="spanEmailMemNm" class="yesIpt m_size ipt_wSizeF focus_blue">
									    <input id="txtEmailMemNm" placeholder="이름" name="name" type="text" onkeydown="removeErrorText('EmailMemNm')">
								    </span>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_EmailMemNm">이름을 입력해주세요.</p>
							    <div class="yesIptRow row_btnR_120 mgt10">
								    <span id="spanEMail" class="yesIpt m_size ipt_wSizeF focus_blue">
									    <input id="txtEmail" type="text" name="email" placeholder="이메일주소" onkeydown="removeErrorText('Email')">
								    </span>

								   <!--  <a href="javascript:void(0);" onclick="CertificationConfirm('E', 'I');" class="btnC m_size w_120"><span class="bWrap"><em class="txt">인증번호 요청</em></span></a> -->
							    </div>
								    <button type="button" class="btn btn-info" id="emailBtn"></button>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_Email">이메일 주소를 입력해 주세요.</p>
							    <div class="yesIptRow row_white mgt10">
								    <span id="certifyNumber_Email" class="yesIpt m_size ipt_wSizeF ipt_disabled focus_blue ipt_clearNone">
									 
									    <input id="certifyNumberBox_Email" type="text"  placeholder="인증번호 (6자리)" disabled="disabled" onkeydown="removeErrorText('EmailCertNo')">
									    <span class="ipt_msg">인증 유효시간 : <em class="txC_black" id="EmailCertifyCmt">60분</em></span>
								    </span>
							    </div>
							    <p class="yesFormTxt error" style="display:none;" id="pYesFormErrTxt_EmailCertNo">인증번호를 입력해주세요.</p>
							    <div class="yesIptRow mgt10">

					<!-- 			    <a href="javascript:void(0);" onclick="IdSearch('E');" class="btnC m_size btn_wSizeF btn_blue"><span class="bWrap"><em class="txt">확인</em></span></a> -->
							    </div>
							    <input type="hidden" path="random" id="random" value="${random }" />

							    <button type="button" class="btn btn-info" id="emailAuthBtn">인증 확인</button>
						    </div>
					    </dd>
				    </dl>
				    <!-- ############### 이메일 주소로 찾기 영역 끝 ############### -->
				  
			    </div>
			    <!-- ############################## 개인회원 아이디 찾기 방법 영역 끝 ############################## -->
		
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
                <div class="pos_a" style="left:0;top:0;color:#F8F8F8;">EQUUS13</div>
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
				<input type='hidden' name='enc_data' value='AgEERzMxNOIAN4TgP59LZST8YQJYVk1FIDj2W2mIaew+7yjR2DXjvTBi9hC6oq44uOaqCF9RXkYpK+eZbAqFeW9NT8duT1LFzvZ+BmgwcqKYqhYWplz0YGIyAzG66mKkk9U9o5ag2tWOAsQYamJB7pPmvDVOwC38JRbtGzkvDszDy/Pm8FxTKpSsJuFnIgcBrsjFF42ECjEbLjXmPPBaXPi80cfWp7e/t4w7fnROdwCdGb3e4q6ni6Q3sxQVQuzGLocXJ+t/XIZUTlUSBfCUIIA+ynlhRsNit9bwpLhL9Nxx+RO1T5vKyNtg6OWk66IoE3ewH8I8vw=='/>
                <input type='hidden' name='m' value='pubmain'/>
            </form>

		


            <form name='reqKMCISForm' method='post'>
				<input type='hidden' name='tr_cert' value='KMC000001-44F715F05F81D7E8B3206F559179F7188372CB5F2B0A1B831D546738D5C9E8559FA91B56A1D0AF503EC84B187611034349F0C9B47FA6B3BDB7C9ACCD20D8C2817EC5724D7C679920AA525E27A3E3A8A5F45DC172424AC14036BEA9415B8626DB400BF773CC5052848CE8F6B49BDF1AB525685E6BF5CA9D70B892F6CC0AD228EF4B5A730FC4375A7E547175E695E4592F7E9199B222B9C46A74259EDD5240BFD46B46145C8B895651D7E7D5AA3AC8B15AAF42FAA37D1E3AF627DAC64D5B3BBCD38E85792CE28CE523E31D7D2789CDB94034A04344AB9AEB400279E0F19A47EF18E4EC6CCCCF7883E4174F3CB7418ABE65D0335938CF324D48BABB4C900C630738'/>
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

<!-- WEMS TRACKING SCRIPT CODE END -->
</body>
</html>