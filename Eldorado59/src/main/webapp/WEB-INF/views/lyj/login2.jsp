<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

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
<!-- <script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script> -->
<!-- <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
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
            <a href="join" class="btnC m_size w_120"><span class="bWrap"><em class="txt">회원가입</em></span></a>
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
                    
<form method="post" name="LoginSub" autocomplete="off" action="login2">
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
      
   
      <button type="submit" id="btnLogin" title="로그인" class="btn_login btnC xb_size btn_blue"><span class="bWrap"><em class="txt">로그인</em></span></button>
   
   
   </fieldset>
</form>
<!-- ##### 아이디 비번 찾기 영역 시작 ##### -->
<div class="loginEtc">
   <a href="email.do" class="lnk_etc">아이디 찾기</a>
   <em class="divi">|</em>
   <a href="pass" class="lnk_etc">비밀번호 찾기</a>
   
</div>
<!-- ##### 아이디 비번 찾기 영역 끝 ##### -->
<!-- ##### 쇼셜 로그인 영역 시작 ##### -->
<!--
개발 코맨트 :
쇼셜 로그인 개수가 4개 이상 일 경우에는 "loginSocialLi loginSocialLi_2col clearfix"을 써주세요.
-->
<ul class="loginSocialLi">
<li class="oddCol"><div id="naver_id_login" style="text-align:center"><a href="${url}">
<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
</li>
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



               
            </div>
            <!-- ############### 로그인 폼 : 회원 영역 끝 ############### -->
            <!-- ############### 로그인 폼 : 비회원 영역 시작 ############### -->
            <div id="nMemLoginForm" class="loginFormGrp" style="display:none;">
               <form name="frmNoMemberLogin" method="post" action="./FTLogin.aspx?ReturnURL=" id="frmNoMemberLogin" autocomplete="off">
<div>
</div>



<div>

</div>


            
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


<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/GoogleAnlystics.js"></script>
<!-- WEMS TRACKING SCRIPT CODE START -->
<!-- DO NOT MODIFY THIS SCRIPT CODE. -->
<!-- COPYRIGHT (C) 1999-2008 NETHRU INC. ALL RIGHTS RESERVED. -->
<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/wlo.min.js"></script>


</body>
</html>