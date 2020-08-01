<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- kmc 모듈 추가 added by ksj 2013.03.19-->

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>ELDORADO59 - 비밀번호 찾기</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
    <link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">
    <link rel="shortcut icon" href="https://secimage.yes24.com/sysimage/renew/gnb/yes24.ico" type="image/x-icon"> 
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery.easing.1.3.min.js"></script>
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
		
			    <!-- ############################## 법인회원 아이디 찾기 방법 영역 끝 ############################## -->
            </div>

            <div>
			    <!-- ############################## 개인회원 결과 영역 시작 ############################## -->
			    <div class="schResultBoxArea" id="divResultID_Person">
				    <div class="schResultBox">
					    <div class="schResultCell">
						    <p class="msg_txt">
						    고객님의 아이디는<br/><em class="txC_blue">${idByEmail }</em> 입니다.
						    </p>
					    </div>
				    </div>
			    </div>
			    <!-- ############################## 개인회원 결과 영역 끝 ############################## -->
			    
			    <!-- ############################## 버튼 영역 시작 ############################## -->
			    <div class="grpBtnCArea wSizeF">
				    <div class="grpBtnC">
					    <span class="grpBtnCell firstCol">
						    <a href="pass" class="btnC m_size"><span class="bWrap"><em class="txt">비밀번호 찾기</em></span></a>
					    </span>
					    <span id="spanResultLoginArea" class="grpBtnCell lastCol">
						    <a href="login2" class="btnC m_size btn_blue"><span class="bWrap"><em class="txt">로그인</em></span></a>
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
	
	</div>
	<!-- #################### 간략 Content 영역 끝 #################### -->

	<hr/>

</div>
  
</body>
</html>