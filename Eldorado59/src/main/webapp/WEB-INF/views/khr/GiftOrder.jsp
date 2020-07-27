<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO</title>
<link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath }/resources/css/header.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/khr/css/moviegift.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/khr/css/main.css" type="text/css">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous">
</script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<div id="ad">
	<img id="imgTopBanner" src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/betterdays_1200x70_181431.jpg" alt="소년">
</div>
</head>
<body>

<header class="sticky"> 

<div id="stc">
<div class="header sc">
                <div class="nav_area" style="height: 0px;">
                    <div id="sc_nav" style="display: none;">
                        <ul class="sc_g_left">
                          
                        </ul>
                        <ul class="sc_g_right">
                                    <li><a href="../lyj/login2">로그인</a></li>
                                    <li><a href="../khr/loginTest">로그인(임시)</a></li>


                            <li><a href="/MyPage">마이페이지</a></li>
                            <li><a href="/Customer">고객센터</a></li>
                        </ul>
                    </div>
					<div id="m_nav">
                        <h1 class="logo"><a href="${pageContext.request.contextPath }/Main/index">ELDORADO59</a></h1>
                        <div class="m_gnb_area">
                            <ul class="m_gnb_list">
                                    <li class="m_gnb">
                                                <a href="/Movie/Ticket"><span>예매</span></a>
                                        <ul class="m_sub_gnb">
                                                        <li><a href="/Movie/Ticket">빠른예매</a></li>
                                                        <li><a href="/HelpDesk/GuideInfo">예매안내</a></li>
                                                        <li><a href="/MyPage/Index?tab=coupon">예매권 등록</a></li>

                                        </ul>
                                    </li>
                                    <li class="m_gnb">
                                                <a href="/MovieInfo/TicketRank"><span>영화</span></a>
                                        <ul class="m_sub_gnb">
                                                        <li><a href="/MovieInfo/TicketRank">예매순위</a></li>
                                                        <li><a href="/MovieInfo/NowPlayRank">현재상영작</a></li>
                                                        <li><a href="/MovieInfo/PromotionMovie">개봉예정작</a></li>
                                                        <li><a href="/MovieInfo/BoxOfficeRank">박스오피스</a></li>
                                                        <li><a href="/MovieInfo/FestivalMovie">영화제영화</a></li>
                                                        <li><a href="/MovieInfo/Trailer">예고편</a></li>

                                        </ul>
                                    </li>
                                    <li class="m_gnb">
                                                <a href="/Event/Index"><span>이벤트</span></a>
                                        <ul class="m_sub_gnb">
                                                        <li><a href="/Event/Index?tab=PREVIEW">시사회</a></li>
                                                        <li><a href="/Event/Index?tab=EVENT">이벤트</a></li>
                                                        <li><a href="/Event/Winner">당첨자 발표</a></li>

                                        </ul>
                                    </li>
                                    <li class="m_gnb">
                                                <a href="/Magazine/Index"><span>매거진</span></a>
                                        <ul class="m_sub_gnb">
                                                        <li><a href="/Magazine/Index?GC=NEWS">뉴스</a></li>
                                                        <li><a href="/Magazine/Index?GC=STAR">스타</a></li>
                                                        <li><a href="/Magazine/Poll">금주의 폴</a></li>

                                        </ul>
                                    </li>
                                    <li class="m_gnb">
                                                <a href="../khr/MovieGift"><span>무비기프트</span></a>
                                        <ul class="m_sub_gnb">

                                        </ul>
                                    </li>
                                    <li class="m_gnb">
                                                <a href="http://vod.yes24.com/" target="_blank"><span>다운로드</span></a>
                                        <ul class="m_sub_gnb">

                                        </ul>
                                    </li>
                                
                                </ul>
                          
                        </div>
                        <!-- on 추가/삭제로 사이드 영역 활성 -->
                        <div class="aside_rnb eve_parent">
                            <ul class="as_rng_list">
                                <li style="margin-top: 2px;"><a href="#" class="as_btn btn_st btn_search_on eve_side_menu" data-cls="search_on"><i class="fas fa-search" style="font-size:20px;color:white" aria-hidden="true"></i></a></li>
                                <li>
                                    <a href="/MyPage/Index" class="as_btn btn_my eve_quick"><i class="material-icons" style="font-size:30px;color:white">person_outline</i></a>
                                </li>
                                <li><a href="#" class="as_btn btn_quick_on eve_side_menu" data-cls="quick_on"><i class="material-icons" style="font-size:28px;color:white">border_all</i></a></li>
                            </ul>
                            <div class="aside_menu eve_content">
                                <!-- 활성시 브라우저 높이 계산(aside_men 여기에 입력) / 클릭된 메뉴에 따라 quick_on, search_on 클래스 추가-->
                                <!-- 검색 -->
                                <div class="search_area">
                                    <div class="search_box ">
                                        <span class="inp_clar_box on">
                                            <input type="text" id="txtSearchVal" class="inp_st02 inp_val" placeholder="검색어를 입력하세요">
                                            <button type="button" onclick="fnClearSch();" class="btn_inp_clear btn_x_sm"></button>
                                        </span>
                                        <button type="button" onclick="fnSchSubmit();" class="btn_search "></button>
                                        <button type="button" class="btn_x_big eve_aside_close"></button>
                                    </div>
                                    <div class="am_list_area ">
                                        <ul class="am_list_result" id="searchAutoResult"></ul>
                                    </div>
                                </div>
                                <!-- 퀵메뉴 -->
                                <div class="quick_area">
                                    <div class="quick_title ">
                                                <span class="q_tit"><a href="https://www.yes24.com/Templates/FTLogin.aspx?ReturnURL=">로그인을 해주세요.</a></span>

                                        <button type="button" class="btn_x_big eve_aside_close"></button>
                                    </div>
                                    <div class="am_list_area ">
                                        <ul class="am_list_quick">
                                            <li>
                                                <div class="tbl_box">
                                                    <a href="/MyPage/Index?tab=order">예매<br>확인/취소</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tbl_box">
                                                    <a href="/MyPage/Index?tab=coupon">예매권/할인권<br>등록</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tbl_box">
                                                    <a href="/HelpDesk/Call">고객센터</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tbl_box">
                                                    <a href="/HelpDesk/DiscountInfo">할인안내</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    </div>
                          
</div>

</div>
</header>

<div class="content">
	
	<div id="wrap">
		<!-- 마이 영화 영역 -->
		<div class="moviegift_pay_area">
			<div class="moviegift_banner_area">
                <span>MOVIE GIFT</span>
            </div>
			<div class="moviegift_pay_cont lay_inner">
				<!--예매권 결재 정보-->
				<div class="pay_info_area" id="divMovieGiftInfo">
					<div class="pay_thumb">             
						<img src="https://movie-simg.yes24.com/NYes24//MovieGift/Image/202001/img_mg01_130913(0).png" alt=""> 
					</div>
					<div class="pay_info_txt">
						<p class="pi_tit">일반 예매권</p>
						<div class="pi_prcie_box">
							<span class="pri_tit">판매가격</span>
							<div class="pi_price">
								<span class="fir_pri"><text class="currency">12,000</text></span>
								<span class="las_pri"><text class="currency">10,500</text>원</span>
							</div>
						</div>
						<div class="select_line select_big select_area">
							<input type="text" class="sel_inp">
							<div class="sel_val eve_sel">                     
								<p class="sv_txt">매수선택</p>                 
							</div>
							<div class="sel_option eve_list">
								<ul id="ulCnt" data-max_ticket="8">
									<li value="1">1 매</li>
									<li value="2">2 매</li>
									<li value="3">3 매</li>
									<li value="4">4 매</li>
									<li value="5">5 매</li>
									<li value="6">6 매</li>
									<li value="7">7 매</li>
									<li value="8">8 매</li>
								</ul>
							</div>
						</div>
						<div class="pay_price">
							<span class="pri_tit">결제금액</span>
							<span class="pi_price" id="spPrice">
								<text class="currency">0</text>원
							</span>
						</div>
						<ul class="li_bar">
							<li>사용기간 : 등록일로부터 3개월 / 등록마감일 <text id="txtUsableEdate">2020. 09. 27</text></li>
							<li>취소기간 : 구매일로부터 7일 이내</li>
							<li>발송방법 : 알림톡 또는 문자발송</li>
							<li>발송예정 : <text id="txtSendDate">2020. 07. 27</text> 발송 예정 (통신사 사정에 따라 발송이 지연될 수 있습니다.)</li>
						</ul>
					</div>
				</div>
				<!-- // 예매권 결재 정보 끝-->
				<!--선물받는 분-->
				<div class="pay_form_area">
					<p class="mc_title">선물 받는 분</p>
					<div class="form_tbl ">
						<div class="form_tbl_row">
			                <div class="form_tbl_col first">주문고객</div>
			                <div class="form_tbl_col "><strong><text id="txtUserNm">김하림</text></strong></div>
			            </div>
			            <div class="form_tbl_row">
			                <div class="form_tbl_col first">받는고객</div>
			                <div class="form_tbl_col ">
			                    <span>
			                        <input type="text" class="inp_st" value="" id="txtReceiveName">
			                    </span>
			                    <span class="chkbx_area ml20">
			                        <input type="checkbox" class="chk_st chk_left" id="chkReceive"><label for="chkReceive"><span class="ck_txt">주문 고객과 동일</span></label>
			                    </span>
			                </div>
			            </div>
			            <div class="form_tbl_row">
			                <div class="form_tbl_col first">받는번호</div>
			                <div class="form_tbl_col ">
			                    <div class="inp_phone_box">
			                        <div class="select_line select_area">
			                            <input type="text" class="sel_inp">
			                            <div class="sel_val eve_sel">
			                                <p class="sv_txt" id="hp1">010</p>
			                            </div>
			                            <div class="sel_option eve_list">
			                                <ul>
			                                    <li>010</li>
			                                    <li>011</li>
			                                    <li>016</li>
			                                    <li>017</li>
			                                    <li>018</li>
			                                    <li>019</li>
			                                </ul>
			                            </div>
			                        </div>
			                        <input type="text" class="inp_st" value="" id="hp2">
			                        <input type="text" class="inp_st" value="" id="hp3">
			                    </div>
			                    <p class="noti_txt small_txt">※ 연락처를 정확하게 입력해주세요. 입력된 번호로 예매권이 전송됩니다.</p>
			                    <p class="noti_txt small_txt">※ YES24영화 대표번호인 1544-7758로 발송 됩니다. </p>
			                </div>
			            </div>
			            <div class="gift_msg">
			                <div class="gm_tit">기프트 메세지</div>
			                <div class="gm_cont">
			                    <textarea name="" id="txtSendMsg" placeholder="선물받는 분에게 감사의 마음을 전달하세요." class="eve_tx_len"></textarea>
			                    <div class="gm_send">
			                        <span class="ta_len"><text id="txtSendMsgLength">0</text></span><span class="ta_max">/120byte</span>
			                        <button type="button" class="btn_defaultXS btn_whiteXS eve_preveal">미리보기</button>
			                    </div>
			                </div>
			            </div>
					</div>
				</div>
				<!-- // 선물받는 분 끝-->
				
				<!--할인선택   /   최종결제금액-->
				<div class="dis_last_pay_area">
					<div class="dis_last_tbl">
						<!--할인선택-->
						<div class="pay_form_area dis_select_area">
							<p class="mc_title">할인선택</p>
							<div class="form_tbl">
								<div class="form_tbl_row">
			                        <div class="form_tbl_col first">YES머니</div>
			                        <div class="form_tbl_col ">
			                            <input type="text" class="inp_st al_r" id="txtDiscountYesMoney" onkeyup="javascript: MovieGiftDiscount.onKeyupInputBoxYesMoney($(this));" value="0">
			                            <span class="tx_won">원</span>
			                            <span class="chkbx_area">
			                                <input type="checkbox" class="chk_st chk_left" id="autocalYesMoney" onclick="javascript: MovieGiftDiscount.onClickCheckBoxYesMoney($(this));"><label for="autocalYesMoney"><span class="ck_txt">전액사용 (총 <text id="spanDiscountYesMoney" class="currency">0</text>원)</span></label>
			                            </span>
			
			                        </div>
			                    </div>
			                    <div class="form_tbl_row">
			                        <div class="form_tbl_col first">YES포인트</div>
			                        <div class="form_tbl_col ">
			                            <input type="text" class="inp_st al_r" id="txtDiscountYesPoint" readonly="readonly" value="0">
			                            <span class="tx_won">원</span>
			                            <button type="button" class="btn_defaultM btn_whiteM width160" onclick="javascript: MovieGiftDiscount.showPopupLayer('YesPoint');">YES머니로 환전</button>
			                            <span class="dis_noti">※ 5,000원 이상 YES머니로 환전 가능</span>
			                        </div>
			                    </div>
			                    <div class="form_tbl_row">
			                        <div class="form_tbl_col first">YES상품권</div>
			                        <div class="form_tbl_col ">
			                            <input type="text" class="inp_st al_r" id="txtDiscountYesGift" readonly="readonly">
			                            <span class="tx_won">원</span>
			                            <button type="button" class="btn_defaultM btn_whiteM width160" onclick="javascript: MovieGiftDiscount.showPopupLayer('YesGift');">상품권 사용하기</button>
			                            <span class="dis_noti_pri">(총 <strong class="col_default"><text id="txtDiscountYesGiftPrice" class="currency">0</text></strong>원 / 사용가능 <strong class="col_default"><text id="txtDiscountYesGiftCount">0</text></strong>장)</span>
			                        </div>
			                    </div>
			                </div>
			            </div>
			            <!-- 최종결재-->
			            <div class="pay_form_area last_pay_area">
			            	<p class="mc_title">최종결제 금액</p>
			            	<div class="form_tbl ">
			            		<div class="form_tbl_row">
			                        <div class="form_tbl_col first">주문금액</div>
			                        <div class="form_tbl_col al_r"><text id="txtDiscountTotalPrice" class="currency">0</text>원</div>
			                    </div>
			                    <div class="form_tbl_row">
			                        <div class="form_tbl_col first">할인금액</div>
			                        <div class="form_tbl_col al_r">(-)<text id="txtDiscountDisPrice" class="currency">0</text>원</div>
			                    </div>
			                    <div class="form_tbl_row last_row">
			                    	<div class="form_tbl_col first">최종결제 금액</div>
			                    	<div class="form_tbl_col al_r"><strong class="col_point"><text id="txtDiscountPayPrice" class="currency">0</text>원</strong></div>
			                    </div>
			            	</div>
			            </div>
					</div>
				</div>
				<div class="layer_popup_container" id="DiscountPopup">
				
				</div>
				<!--// 할인선택   /   최종결제금액 끝-->
				<div class="dis_last_pay_area">
                    <div class="chk_agree">
                        <span class="chkbx_area chk_al_r">
                            <input type="checkbox" class="chk_st chk_left" id="cbAgree"><label for="cbAgree"><span class="ck_txt">주문하실 상품, 가격, 배송정보, 할인정보 등을 확인 하였으며, 구매에 동의하십니까?</span></label>
                        </span>
                    </div>
                </div>
                <!--결제선택-->
                <form method="post" action=""> 
                	<input type="text" name="id" value="아이디 세션값">
                	
                </form>
                <div class="pay_form_area select_pay_area">
                	<div class="select_pay_cont">
                		<p class="mc_title">결제선택</p>
                		<div class="sp_cont_box">
                			<div class="sp_chk_box">
                				<span class="chkbx_area ">
                					<input type="checkbox" class="chk_st chk_left" id="cbCreditCard">
                					<label for="cbCreditCard"><span class="ck_txt">무통장 결제</span></label>
                				</span>
                				<button type="button" id="btnPay">결제</button>
                			</div>
                			<div class="sp_noti_box" id="divNotiCreditCard" style="">
			                    <!-- 신용카드결제 하단 -->
			                    <p class="noti_txt">YES24 영화의 신용카드 결제서비스는 (주)케이지이니시스에서 제공합니다.</p>
			                </div>
                		</div>
                	</div>
                </div>
                <!--// 결제선택 끝-->
                <div class="notice_area">
                    <p class="noti_titleB">구매 및 사용안내</p>
                    <p class="noti_txt">구매제한 : 한 번에 8매 까지만 구매 가능합니다 (구매한 예매권은 예매권 연간 24매 제한에 포함되지 않습니다)</p>
                    <p class="noti_txt">결제방법 : 신용카드, 핸드폰 결제, YES머니, YES 상품권만 결제 가능</p>
                    <p class="noti_txt">사용방법 : 알림톡 혹은 문자로 발송된 번호를 예매권 등록페이지에서 등록 후 결제 단계에서 사용하시면 됩니다</p>
                    <p class="noti_txt mt30">일반과 지정영화 예매권은 12,000원을 초과하는 일부 특별관과 3D, 4D, 아이맥스 등 특수 버전의 영화는 예매가 되지 않습니다.</p>
                    <p class="noti_txt">3D영화예매권은 14,000원을 초과하는 일부 특별관의 3D, 4D, 아이맥스 등 특수 버전의 영화는 예매가 되지 않습니다.</p>
                    <p class="noti_txt">모바일에서는 CGV 예매가 지원되지 않습니다 </p>

                    <p class="noti_titleB">취소/환불 안내</p>
                    <p class="noti_txt">취소기간 : 구매일로부터 7일 이내 (취소기한이 지난 구매내역은 취소 불가합니다)</p>
                    <p class="noti_txt col_default">취소방법 : 나의 예매내역 &gt; 무비기프트 구매 내역의 구매취소 클릭</p>

                    <p class="noti_txt mt30">환불안내</p>
                    <p class="noti_txt">취소기간 내 취소건에 한 해, 자동환불</p>
                    <p class="noti_txt">신용카드, 핸드폰 - 취소시 자동 결제 취소 단, 핸드폰 결제의 경우 익월 취소시에는 YES24 예치금으로 환불(통신사 정책에 따라 승인취소가 불가능)</p>
                    <p class="noti_txt">예스머니, 예스 상품권 - 취소시 자동 환불</p>

                    <p class="noti_txt col_point mt30">사용한 예매권은 취소 및 환불이 되지 않습니다. (취소마감 기간 내 예매취소 후 구매취소 가능)</p>
                    <p class="noti_txt col_point">2매 이상 구매 시 1매라도 사용했을 경우 취소가 되지 않습니다. (부분 취소 불가)</p>

                    <div class="noti_btn_bottom al_r">
                        <button type="button" class="btn_defaultM btn_whiteM width160" onclick="location.href='/HelpDesk/CouponInfo'">예매권 이용방법</button>
                        <button type="button" class="btn_defaultM btn_whiteM width160" onclick="location.href='/MyPage/Index?tab=moviegift'">구매 내역 보기</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- //마이 영화 영역  끝-->
	</div>
	
	
</div> <!-- content 끝 -->


</body>





<jsp:include page="../include/footer.jsp"></jsp:include>

</html>