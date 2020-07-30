<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr">
	<meta charset="UTF-8">
	<title>ELDORADO</title>
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
	<script type="text/javascript" src="https://www.yes24.com/24/Scripts/YES24.Common-1.6.js?v=20200727"></script>
	<script type="text/javascript" src="https://www.yes24.com/JavaScript/util.js?v=202000506"></script>
	<script type="text/javascript" src="https://www.yes24.com/javascript/common.js?v=20190306"></script>
	<script type="text/javascript" src="https://secimage.yes24.com/sysimage/Contents/Scripts/p/logging/clickstream.min.js?v=20200227"></script>
	<script type="text/javascript" src="https://www.yes24.com/JavaScript/Yes_header.js?v=20191002"></script>
	
</head>
<body>

	<div id="wrapperContent">
		<div id="yesWrap">
			<!-- #################### 간략 HEADER 영역 시작 #################### -->
			<div id="ySHeader">
	            <div class="ySHeaderAera">
		            <h1>
			            <a class="lnk_logo" href="http://www.yes24.com"><img src="https://secimage.yes24.com/sysimage/renew/sLayout/logo.png" border="0" alt="YES24"></a>
			            <span class="servName">나의 정보</span>
		            </h1>
                    
		            <div class="headerLnk">
                        
			            <a href="https://www.yes24.com/Templates/FTLogOut.aspx" onclick="setWcode('001_003_002')" class="btnC m_size w_120"><span class="bWrap"><em class="txt">로그아웃</em></span></a>
                        
			            <a href="../lyj/Mypage" onclick="setWcode('001_003_013')" class="btnC m_size w_120"><span class="bWrap"><em class="txt">마이페이지</em></span></a>
		            </div>
                    
	            </div>
            </div>
            <!-- #################### 간략 HEADER 영역 끝 #################### -->
            <hr>
            <form action="deleteMember" method="post">
            	<!-- #################### 간략 NAVI 영역 시작 #################### -->
            	<div id="ySNavi">
				    <ul class="mnu">
					    <li><a href="../khr/updateMember"><em class="txt">회원정보</em></a></li>
					    <li class="mnuOn"><a href="../khr/deleteMember"><em class="txt">회원탈퇴</em></a></li>
				    </ul>
			    </div>
			    <!-- #################### 간략 NAVI 영역 끝 #################### -->
			    
			    <!-- #################### 간략 Content 영역 시작 #################### -->
			    <div id="ySContent">
			    	<div class="ySContRow"> 
			    		<div class="tm_grp">
							<h3 class="tmMB_txt">
								<em class="tit_txt">아래 내용을 꼭 확인해 주세요.</em>
							</h3>
						</div>
						<!-- ++++++++++ 안내 박스 시작 ++++++++++ -->
						<div class="yesFormGrayBox pat0 pab0">
							<div class="yesFormGrayBox_cont">
								<div class="yesContGrp">
									<div class="grp_cell">
										<dl class="yesAlertDl b_size">
											<dt>회원정보 및 계좌내역 삭제</dt>
											<dd>
												<p class="yesAlertP txC_red">회원탈퇴 즉시 회원정보는 모두 삭제되며, 재가입시에도 복원되지 않습니다.</p>
												<ul class="yesAlertLi mgt5">
													<li><em class="bl_dot bgYUI">&nbsp;</em>삭제되는 정보 : 구매하신 eBook, 개인정보, 계좌내역(YES포인트, YES머니, 예치금 등), YES블로그 계정, YES24 중고샵 판매관리 계정</li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>회원탈퇴 시 중고샵 판매계정 및 판매자회원 자격이 자동으로 상실됩니다.(주문/정산 중에는 탈퇴불가)                             </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>회원탈퇴 시 중고매장에서 회원으로 서비스 이용이 불가합니다.                                                                  </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>회원탈퇴 시 구매하신 eBook도 모두 삭제됩니다. 회원탈퇴 후 타 ID로 사용 권한을 양도하실 수 없습니다.                          </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>탈퇴 후 블로그 및 블로그와 연결된 이용기록(ex.상품리뷰)은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.                  </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>게시판형 서비스에 등록한 게시물은 삭제되지 않고 유지됩니다.                                                                  </li>
												</ul>
											</dd>
										</dl>
									</div>
								</div>
								<div class="yesContGrp">
									<div class="grp_cell">
										<dl class="yesAlertDl b_size">
											<dt>1개월간 회원 재가입 제한</dt>
											<dd>
												<p class="yesAlertP">회원탈퇴 후, 1개월간은 회원 재가입이 불가능합니다.</p>
											</dd>
										</dl>
									</div>
								</div>
								<div class="yesContGrp">
									<div class="grp_cell">
										<dl class="yesAlertDl b_size">
											<dt>탈퇴 후 정보보관</dt>
											<dd>
												<p class="yesAlertP">
			                                        전자상거래 등에서의 소비자보호에 관한 법률 제6조에 의거 성명, 주소 등 거래의 주체를 식별할 수 있는 정보에 한하여 서비스<br>
			                                        이용에 관한 동의를 철회한 경우에도 이를 보존할 수 있으며, 동법 시행령 제6조에 의거 다음과 같이 거래 기록을 보관합니다.
												</p>
												<ul class="yesAlertLi mgt5">
													<li><em class="bl_dot bgYUI">&nbsp;</em>표시, 광고에 관한 기록 : 6개월               </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>계약 또는 청약철회 등에 관한 기록 : 5년      </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>대금결제 및 재화등의 공급에 관한 기록 : 5년  </li>
													<li><em class="bl_dot bgYUI">&nbsp;</em>소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
												</ul>
											</dd>
										</dl>
									</div>
								</div>
								
							</div>
						</div>
						<!-- ++++++++++ 안내 박스 끝 ++++++++++ -->
						
						<!-- ++++++++++ 회원 정보 시작 ++++++++++ -->
						<div class="leaveChkArea">
							<p class="leaveChk_tit">정확한 본인확인을 위해 비밀번호를 입력해 주세요.</p>
							<div class="myInfoBoxArea">
								<div id="chkPw" class="yesFormGrayBox chkPwBox">
									<div class="yesFormGrayBox_cont">
										<div class="yesIptRow">
											<span class="yesIpt m_size ipt_wSizeF">
												<label for="CLabMemId"></label>
			                                    <input name="id" type="text" id="CLabMemId" readonly="readonly" value="<%=session.getAttribute("id")%>">
											</span>
										</div>
										<div class="yesIptRow mgt10">
											<span class="yesIpt m_size ipt_wSizeF focus_blue ">
												<label for="password">비밀번호</label>
												<input name="pass" type="password" id="password" maxlength="20">
											</span>
										</div>
									</div>
								</div>
								<script type="text/javascript">
								    $('#chkPw .yesIpt').iptNorBox({
								        focusColor: true
								    });
								</script>
							</div>
						</div>
						<div class="rowBtn">
			                <button type="submit" class="btnC xb_size btn_blue w_220"><span class="bWrap"><em class="txt">회원탈퇴</em></span></button>
						</div>
						<!-- ++++++++++ 회원 정보 끝 ++++++++++ -->
			    	</div>
			    </div>
            </form>
		</div>
	</div>	
	
	
</body>
</html>