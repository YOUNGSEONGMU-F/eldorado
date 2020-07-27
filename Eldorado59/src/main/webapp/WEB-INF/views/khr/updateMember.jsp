<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html;charset=euc-kr">
<title>회원정보 수정</title>
<meta name="title" content="YES24 - 대한민국 대표 인터넷서점">
<meta name="description" content="YES24는 대한민국 1위 인터넷 온라인 서점 입니다. 국내 최대의 도서정보를 보유하고 있으며, 음반, DVD, 공연, 영화까지 다양한 문화 콘텐츠 및 서비스를 제공합니다.">
<meta name="keywords" content="인터넷 서점, 온라인 쇼핑, 상품 추천, 쇼핑몰, 상품 검색, 도서 정보, 국내도서, 외국도서, 전자책, eBook, 이북, 크레마, 공연, 콘서트, 뮤지컬, 영화, 음반, 예매, DVD, 블루레이, 예스24, YES24, 교보문고, 알라딘">
<meta property="og:image" content="https://secimage.yes24.com/sysimage/renew/logo_meta.png">

<link rel="stylesheet" type="text/css" href="https://www.yes24.com/Resource/css/httpspopup.css">
<link rel="stylesheet" type="text/css" href="https://www.yes24.com/Resource/css/httpsbutton.css">
<link rel="stylesheet" type="text/css" href="https://www.yes24.com/Resource/css/renew/default.css?v=20140120" media="all">
<link rel="stylesheet" type="text/css" href="https://www.yes24.com/Resource/css/renew/sLayout/sLayoutV2.css" media="all">
<link rel="stylesheet" type="text/css" href="https://secimage.yes24.com/sysimage/yesUI/member/member.css?ver=20191113" media="all">
<link rel="stylesheet" type="text/css" href="https://secimage.yes24.com/sysimage/yesUI/myInfo/myInfo.css?ver=20191113" media="all">
<link rel="stylesheet" type="text/css" href="https://secimage.yes24.com/sysimage/yesUI/yesUI.css?ver=20191122" media="all">
<link href="https://secimage.yes24.com/sysimage/renew/gnb/yes24.ico" type="image/x-icon" rel="shortcut icon">

<script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://www.yes24.com/javascript/jqueryExtends.js?v=20191125"></script>
<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/jquery/jquery.easing.1.3.min.js?v=20140801"></script>
<script type="text/javascript" src="https://www.yes24.com/24/Scripts/YES24.Common-1.6.js?v=20200611"></script>
<script type="text/javascript" src="https://www.yes24.com/JavaScript/util.js?v=202000506"></script>
<script type="text/javascript" src="https://www.yes24.com/javascript/common.js?v=20190306"></script>
<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/clickstream.min.js?v=20200227"></script>
<script type="text/javascript" src="https://www.yes24.com/JavaScript/Yes_header.js?v=20191002"></script>

<script type="text/javascript">
	var YesData = new function() {
	    var _HTTP_URL = "http://www.yes24.com";
        var _HTTPS_URL = "https://www.yes24.com";
	    var _BLOG_URL = "http://blog.yes24.com/";
	    var _IMG_HOST_IMG = "https://secimage.yes24.com";
	    var _IsWelcomePage = "False";
	    var _MEM_AGE = 25;
        var _PID = "123487";
        var _ParenerInfomagion ={"GNB" : [ ""],"MainEtcGNB" : [ ""],"SubEtcGNB" : [ ""], "PopupTarget" : "False","SearchTextRemoveTarget" : [""],"SearchEtcTextRemoveTarget" : [""],"SkyScraperRemoveTarget" : [""],"ParetnerType" : ""};
		var _NOW_HTTP_URL = "https://www.yes24.com";
	    var _IsdevServer = "False";

	    this.HTTP_URL = function(){return _HTTP_URL;}
	    this.HTTPS_URL = function(){return _HTTPS_URL;}
		this.NOW_HTTP_URL = function(){return _NOW_HTTP_URL;}
	    this.BLOG_URL = function(){return _BLOG_URL;}
	    this.IMG_HOST_IMG = function(){return _IMG_HOST_IMG;}
	    this.IsHttps = function(){return _IsHttps;}
	    this.IsWelcomePage = function(){return _IsWelcomePage;}
	    this.MEM_AGE = function(){return _MEM_AGE;}
        this.PID = function(){return _PID;}
        this.ParenerInfomagion = function(){return _ParenerInfomagion;}
        this.IsdevServer = function(){return _IsdevServer;}
	}

</script>

<!-- 광고 스크립트 - 공통 -->
<!-- Global site tag (gtag.js) - Google Ads: 1056776890 -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-1056776890"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'AW-1056776890');
</script>
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1056776890/?random=1592640583834&amp;cv=9&amp;fst=1592640583834&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=16&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa6a0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.yes24.com%2FMember%2FFTMemberInfoMgmtUpt.aspx&amp;ref=https%3A%2F%2Fwww.yes24.com%2FMember%2FMyPage_reconfirmPW.aspx&amp;tiba=YES24%20%7C%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20%EB%8C%80%ED%91%9C%20%EC%9D%B8%ED%84%B0%EB%84%B7%EC%84%9C%EC%A0%90&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

</head>

<body>

<%
	String id = (String)session.getAttribute("id");
	
	if(id == null){
		response.sendRedirect("../lyj/login2");
	} 
	
	
%>

<div id="wrapperContent">
	<div id="yesWrap">
		<script type="text/javascript" id="popupScripts">

		    var _isLogin = 'True';
		    var _isMania = 'False';
		    var _pid = '123487';
		    var _memGb = '01';
		    var _pathname = location.pathname.toLowerCase();
		    var _isAllianceMain = _pathname == '/mall/main/book/001'
		                        || _pathname == '/main/default.aspx'
		                        || _pathname == '/default.aspx'
		                        || _pathname == '/';
		
		    $(document).ready(function () {
		    
		    });
		</script>
		<!-- #################### 간략 HEADER 영역 시작 #################### -->
		<div id="ySHeader">
			<div class="ySHeaderAera">
				<h1>
		            <a class="lnk_logo" href="#">
		            	<img src="https://secimage.yes24.com/sysimage/renew/sLayout/logo.png" border="0" alt="YES24">
		            </a>
		            <span class="servName">나의 정보</span>
	            </h1>
	            <div class="headerLnk">
                    <a href="${pageContext.request.contextPath}/lyj/Mypage" onclick="setWcode('001_003_013')" class="btnC m_size w_120">
                    	<span class="bWrap"><em class="txt">마이페이지</em></span>
                    </a>
	            </div>
			</div>
		</div>
		<!-- #################### 간략 HEADER 영역 끝 #################### -->
		
		<hr>
		
		<script type="text/javascript" src="https://www.yes24.com/Javascript/Member/member.js?v=20200122"></script>
		<script type="text/javascript" src="https://www.yes24.com/Product/Scripts/Common/address_new.js?v=20200120"></script>
		<script type="text/javascript" src="https://www.yes24.com/Javascript/Member/Naver.js?v=20200120"></script>
		<script type="text/javascript" src="https://www.yes24.com/Javascript/Member/facebook.js?v=20200120"></script>
		<script type="text/javascript" src="https://www.yes24.com/Javascript/Member/Kakao.js?v=20200120"></script>
		<script type="text/javascript">
		    var beforeStep = 0;
		    var score = 0;
		    var memberType = "";
		    var mem_gb = "01";
		    var mem_eng_nm = "";
		    var mem_guard_idn_no = "";
		    var ftMemUpt_form;
		    var CheckCertNo;
		    var showInfo = "False";
		    var IdCheckSum = false;
		    var PwCheckSum = false;
		
		    (function () {
		        FacebookDoubleClickFlag = false;
		    })();
		</script>
		
		<form name="updateForm" action="updateMember" method="post" id="updateForm">
			<input type="text" value="<%=session.getAttribute("id")%>">
			<!-- #################### 간략 NAVI 영역 시작 #################### -->
			<div id="ySNavi">
				<ul class="mnu">
					<li class="mnuOn">
						<a href="/Member/FTMemberInfoMgmtUpt.aspx"><em class="txt">회원정보</em></a>
					</li>
					<li>
						<a href="/Member/FTMemDereg.aspx"><em class="txt">회원탈퇴</em></a>
					</li>
				</ul>
			</div>
			<!-- #################### 간략 NAVI 영역 끝 #################### -->
			
			<!-- #################### 간략 Content 영역 시작 #################### -->
			<div id="ySContent">
				<div class="ySContRow">
				<!--yesFormGrayBox의 안내 형태 박스는 tipBox 클래스 추가.-->
				<!-- <div class="yesFormGrayBox mgb35" id="divMemHInfoShowArea">
					<div class="yesFormGrayBox_cont">
		                
						일반 회원 안내
						<p class="msg_txt">
							* 표시로 가려져 보이는 정보를 확인 및 수정하시려면<br>
							[숨은 정보 해제] 버튼을 누르시고 회원님의 "생년월일" 또는 "이메일"로 인증해 주시기 바랍니다.
						</p>
		                <div class="btn_rm">
							<a href="javascript:void(0);" onclick="$.yesPop('hiddenMInfoPop',this,{mask:true,pWidth:394});return false;" class="btnC m_size w_120"><span class="bWrap"><em class="txt">숨은 정보 해제</em></span></a>
						</div>
		                
					</div>
				</div>
				<input name="AddrSeq" type="hidden" id="AddrSeq" value="1">
				<input type="hidden" id="ZipSeqNo" name="ZipSeqNo" value="001">
				<input type="hidden" id="SCI" name="SCI" value="">
				<input type="hidden" id="SDI" name="SDI" value="">
				<input type="hidden" id="Name" name="Name" value="">
				<input type="hidden" id="enc_data" name="enc_data" value="">
				<input type="hidden" id="hdnPwdChange" value="N"> -->
				
				<!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 필수정보 영역 시작 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
				<div class="tm_grp">
					<h3 class="tm_txt">
						<em class="tit_txt"><strong>필수정보</strong></em>
					</h3>
				</div>
				<div class="yesTb">
					<table class="tb_nor tb_vertical" width="100%">
						<caption>필수정보</caption>
						<colgroup>
							<col width="140">
							<col width="240">
							<col width="140">
							<col width="*">
						</colgroup>
						
						<tbody class="xb_size">
							<tr>
								<th class="txt" scope="row">아이디</th>
								<td colspan="3" class="txt lastCol">
									<span id="CLabMemId"><span class="yesIpt m_size w_200">
										<input name="id" type="text" id="id" autocomplete="off" maxlength="20" value="${getMember.id} " readonly>
									</span></span>
								</td>
							</tr>
							<!-- 이름  -->
							<tr>
								<th class="txt" scope="row">이름</th>
								<td colspan="3" class="inpArea lastCol">
									<div class="inpRow">
										<span class="setAlignL"><span id="CLabMemNm"><span class="yesIpt m_size w_200">
											<input name="name" type="text" id="name" autocomplete="off" maxlength="20" value="${member.name}">
										</span></span></span>
									</div>
								</td>
							</tr>
							<!-- 비밀번호 -->
							<!-- <button onclick="window.open('changePW','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">비밀번호 변경</button> -->
							<tr>
								<th class="txt" scope="row">비밀번호</th>
								<td colspan="3" class="inpArea lastCol">
									<div class="inpRow">
										<!-- <button onclick="window.open('changePW','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');" class="btnC m_size w_120">
			                        		<span class="bWrap"><em class="txt">
			                        				비밀번호 변경
			                        		</em></span>
			                       		</button> -->
			                       		<%-- <span class="setAlignL"><span id="CLabMemNm"><span class="yesIpt m_size w_200">
											<input name="pass" type="text" id="name" autocomplete="off" maxlength="20" value="${mb.pass }"><br>
										</span></span></span> --%>
										<span class="setAlignL"><span id="CLabMemNm"><span class="yesIpt m_size w_200">
											<input name="pass" type="text" id="name" autocomplete="off" maxlength="20" placeholder="새비밀번호">
										</span></span></span>
										<span class="setAlignL"><span id="CLabMemNm"><span class="yesIpt m_size w_200">
											<input name="pass2" type="text" id="name" autocomplete="off" maxlength="20" placeholder="새비밀번호 확인">
										</span></span></span>
			                        </div>
								</td>
							</tr>	
							<!-- 주소 미완성 -->
							<tr>
								<th class="txt" scope="row">주소</th>
								<td colspan="3" class="inpArea lastCol">
									<div class="inpRow">
										<span class="yesIpt m_size w_70">
											<input  type="text" id="sample6_postcode" autocomplete="off" maxlength="5" placeholder="우편번호" readonly>
										</span>
			                            
			                            <input type="button" class="btnC m_size w_80" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>        
									</div>
									
									<div id="div_ST_ADDR_TEXT" class="inpRow">
										<span class="yesIpt m_size ipt_wSizeF">
											<input type="text" name="addr" id="sample6_address" class="fwN" autocomplete="off" placeholder="주소" value="${member.addr}">
										</span>
									</div>
									
									<div id="div_OLD_ADDR_TEXT" class="inpRow">
										<span class="yesIpt m_size ipt_wSizeF">
											<input type="text" id="sample6_detailAddress" class="fwN" autocomplete="off" placeholder="상세주소">
										</span>
									</div>
									
									<div id="div_OLD_ADDR_TEXT" class="inpRow">
										<span class="yesIpt m_size ipt_wSizeF">
											<input type="text" id="sample6_extraAddress" class="fwN" autocomplete="off" placeholder="참고항목">
										</span>
									</div>
									
									
									<div class="inpDes">
										정확하고 빠른 배송을 위해 입력된 주소를 확인하시고 업데이트해 주시기 바랍니다. 
									</div>
			                        <!-- <input name="ADDR1" type="hidden" id="ADDR1" value="전라남도 목포시 옥암동 1097 우미오션빌">
			                        <input name="ADDR2" type="hidden" id="ADDR2" value="604동 1201호">
			                        <input name="ADDR3" type="hidden" id="ADDR3" value="전라남도 목포시 평화로107번길 16">
			                        <input name="ADDR4" type="hidden" id="ADDR4" value="옥암동,우미오션빌">
			                        <input name="BU_MNG_NO" type="hidden" id="BU_MNG_NO" value="4611016400110970000011506">
			                        <script type="text/javascript">
			                            if (showInfo == "False") {
			                                $("#FOREIGN_ADDR_TEXT1").attr("readonly", true);
			                                $("#FOREIGN_ADDR_TEXT2").attr("readonly", true);
			                            }
			                            else {
			                                $("#FOREIGN_ADDR_TEXT1").removeAttr("readonly");
			                                $("#FOREIGN_ADDR_TEXT2").removeAttr("readonly");
			                            }
			                        </script> -->
			                        
								</td>
							</tr>
							
							<!-- 전화번호 -->
							<tr>
								<th class="txt" scope="row">전화번호</th>
								<td colspan="3" class="inpArea lastCol">
									<div id="CTxtTelNoA" class="inpRow">
										<span class="setAlignL" id="sTelNo"><span class="yesIpt m_size w_200">
											<input name="tel" type="text" id="tel" autocomplete="off" maxlength="20" value="${member.tel}">
										</span></span>
									</div>
								</td>
							</tr>
							<!-- 이메일 -->
							<tr>
								<th class="txt" scope="row">이메일 주소</th>
								<td class="inpArea lastCol">
									<input type="hidden" name="email" id="email" value="">
									<div class="inpRow" id="CTxtEmlA">
										<span id="sEmailAddress" class="setAlignL"><span class="yesIpt m_size w_200">
											<input name="email" type="text" id="email" autocomplete="off" maxlength="20" value="${member.email}">
										</span></span>
			                        </div>
								</td>
							</tr>
						</tbody>
						
					</table>
				</div>
				<!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 필수정보 영역 끝 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
				
				<!-- 주소 스크립트 -->
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                <script>
				   function sample6_execDaumPostcode() {
				       new daum.Postcode({
				           oncomplete: function(data) {
				               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				
				               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
				               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				               var addr = ''; // 주소 변수
				               var extraAddr = ''; // 참고항목 변수
				
				               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				                   addr = data.roadAddress;
				               } else { // 사용자가 지번 주소를 선택했을 경우(J)
				                   addr = data.jibunAddress;
				               }
				
				               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				               if(data.userSelectedType === 'R'){
				                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                       extraAddr += data.bname;
				                   }
				                   // 건물명이 있고, 공동주택일 경우 추가한다.
				                   if(data.buildingName !== '' && data.apartment === 'Y'){
				                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                   }
				                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				                   if(extraAddr !== ''){
				                       extraAddr = ' (' + extraAddr + ')';
				                   }
				                   // 조합된 참고항목을 해당 필드에 넣는다.
				                   document.getElementById("sample6_extraAddress").value = extraAddr;
				               
				               } else {
				                   document.getElementById("sample6_extraAddress").value = '';
				               }
				
				               // 우편번호와 주소 정보를 해당 필드에 넣는다.
				               document.getElementById('sample6_postcode').value = data.zonecode;
				               document.getElementById("sample6_address").value = addr;
				               // 커서를 상세주소 필드로 이동한다.
				               document.getElementById("sample6_detailAddress").focus();
				           }
				       }).open();
				   }
				</script>
				<!-- 뭔지 모름 -->
				<script type="text/javascript">
					function chgEMailAddr(val, obj) {
					    var tarObj = $(obj).parent().prev();
					    if (val == 'etc') {
					        tarObj.removeClass("dp_none");
					    } else {
					        tarObj.addClass("dp_none");
					    }
					}
		
					// 토글 메뉴
					function toggleCont(obj, scope) {
					    fnResetControl(obj);
					    if ($(obj).parent().parent().hasClass("toggleOn")) {
					        $(obj).parent().parent().removeClass("toggleOn");
					    } else {
					        $(scope).find(".yesToggleDl").removeClass("toggleOn");
					        $(obj).parent().parent().addClass("toggleOn");
					    }
					}
		
					$(document).ready(function () {
					    $('#ySContent .yesTb .yesSelNor').selectNorBox();
					    $('#ySContent .yesTb .yesIpt').iptNorBox();
					    $('#ySContent .yesTb .yesChk').iptChkBox();
					    $('#ySContent .yesTb .yesRadioTab').radioTabBox(); // jqueryExtends.js에 넣어둠 우선 simon.ramses에만 적용됨, 개발 검토 필요
					});
				</script>
				
				<!-- 수정 버튼 -->
				<div class="rowBtn">
					<input type="button" id="submitBtn" value="수정하기">
		            <a href="javascript:void(0)" id="aBtnMemberUpdate" class="btnC xb_size btn_blue w_220" onclick="MyUpdate(); return false;"><span class="bWrap"><em class="txt">회원정보 수정</em></span></a>
		        </div>
				
				
				</div>
			
			</div>
		
		</form>
		
	</div>





</div>














	<h1>회원정보 수정</h1>

	<form action="updateMember" method="post" id="updateForm">
		아이디 : <input type="text" name="id" value=""><br>
		이름 : <input type="text" name="name"><br>
		<!-- 비밀번호 변경 시, 다시 변경 한 비밀번호로 로그인 후 회원정보 수정 페이지로 -->
		비밀번호 : <button onclick="window.open('changePW','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">비밀번호 변경</button><br>
		<!-- 기존 비밀번호 : <input type="password" id="ori_pass"><br>
		새 비밀번호 : <input type="password" id="pass" name="pass"><br>
		새 비밀번호 확인 : <input type="password" id="pass2" name="pass2"><br> -->
		<!-- 주소 다음api 가져오기 -->
<!-- 		주소 : <input type="text" id="sample6_postcode" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" placeholder="주소"><br>
			<input type="text" id="sample6_detailAddress" placeholder="상세주소">
			<input type="text" id="sample6_extraAddress" placeholder="참고항목"><br>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
 -->
		
		
		전화번호 : <input type="text" name="tel" id="tel"><br>
		이메일 : <input type="text" name="email" id="email"><br>
		
		<input type="button" id="submitBtn" value="수정하기">
	</form>

</body>



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