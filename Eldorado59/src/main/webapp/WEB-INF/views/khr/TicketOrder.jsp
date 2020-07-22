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
<link href="${pageContext.request.contextPath }/resources/khr/css/TicketOrder.css" rel="stylesheet" type="text/css" />

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

<!-- body 시작 -->
<div class="wrap">
	<!-- 주문 할인 시작 -->
	<div id="divDiscount">
		<div class="reserve_discount_area">
			<div class="ms_title">
                <span class="tit">할인선택</span>
            </div>
            <div class="white_box reserve_discount_cont eve_loot_parent">
            	<!-- 선택된 할인의 타이틀 div active 추가-->
            	
            </div>
		</div>
	</div>
	<!-- 주문 할인 끝 -->
	
	<!--  주문 결제 시작  -->
	<form id="SendPayForm_id" method="post">
        <input type="hidden" name="oid" id="oid" value="">
        <input type="hidden" name="version" id="version" value="1.0">
        <input type="hidden" name="mid" id="mid" value="">
        <input type="hidden" name="goodsname" id="goodsname" value="">
        <input type="hidden" name="price" id="price" value="1000">
        <input type="hidden" name="currency" id="currency" value="WON">
        <input type="hidden" name="buyername" id="buyername" value="">
        <input type="hidden" name="buyertel" id="buyertel" value="">
        <input type="hidden" name="buyeremail" id="buyeremail" value="">
        <input type="hidden" name="timestamp" id="timestamp" value="">
        <input type="hidden" name="returnUrl" id="returnUrl" value="">
        <input type="hidden" name="gopaymethod" id="gopaymethod" value="">
        <input type="hidden" name="offerPeriod" id="offerPeriod" value="">
        <input type="hidden" name="acceptmethod" id="acceptmethod" value="Card">
        <input type="hidden" name="languageView" id="languageView" value="">
        <input type="hidden" name="charset" id="charset" value="">
        <input type="hidden" name="payViewType" id="payViewType" value="">
        <input type="hidden" name="closeUrl" id="closeUrl" value="">
        <input type="hidden" name="popupUrl" id="popupUrl" value="">
        <input type="hidden" name="nointerest" id="nointerest" value="">
        <input type="hidden" name="quotabase" id="quotabase" value="">
        <input type="hidden" name="INIregno" id="INIregno" value="">
        <input type="hidden" name="merchantData" id="merchantData" value="">
        <input type="hidden" name="mKey" id="mKey" value="">
        <input type="hidden" name="signature" id="signature" value="">
        <input type="hidden" name="ini_onlycardcode" id="ini_onlycardcode" value="">
    </form>
    <form id="rtnForm" method="post" action=""></form>
	
	<div id="divPay">
		<div class="reserve_payment_area">
			<div class="ms_title">
                <span class="tit">결제선택</span>
            </div>
            <div class="eve_tab_container reserve_payment_cont">
            	<ul class="tab_menu eve_tab_menu" id="ulPayTab">
            	
                    <li id="PayBANKTOWN"><button type="button">무통장 입금</button></li>
                    <li id="PayCARD"><button type="button">신용카드</button></li>
                    <li id="PayMOBILE"><button type="button">휴대폰</button></li>
                    <li id="PayKAKAO_BANK"><button type="button">카카오 뱅크</button></li>
                </ul>
                <!-- 무통장 입금만 진행 -->
                <div class="tab_container eve_tap_cont">
                	<div class="tab_content account_transfer active">
                        <p class="rp_txt">계좌이체 서비스는 "(주)케이지이니시스"에서 제공합니다.</p>
                        <p class="rp_txt">국민은행을 비롯하여 20여개 은행의 실시간 계좌이체가 가능합니다.</p>
                        <p class="rp_txt">계좌이체 이용은 은행별 이용시간 내에만 가능합니다.</p>
                        <p class="rp_txt">신용카드가 없는 학생이나 미성년자도 이용 가능합니다.</p>
                        <p class="rp_txt">PC뱅킹, 인터넷뱅킹 이용자는 지금 바로 이용하실 수 있습니다. </p>

                        <p class="rp_tit">환불안내</p>
                        <p class="rp_txt">예매일로부터~일요일 내에 취소 : 결제금액을 취소한 시점의 은행의 영업일로 부터 이틀내로 고객님 계좌로 자동 환불해드립니다.</p>
                        <p class="rp_txt">그 이후(예매일로부터 다음주~) 취소 : 고객님의 계좌를 확인한 후 환불해드립니다.</p>
                        <p class="rp_txt">예) 금요일 예매 후 토요일에 취소했을 경우, 다음주 화요일 자동환불. 금요일 예매 후 다음 월요일에 취소했을 경우, 환불할 계좌 확인 후 환불 </p>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<!--  주문 결제 끝  -->
	
	<!--선택영화 정보-->
	<form method="post" action="OrderComplete">
	<div class="sel_movie_info selected">
		<div class="lay_inner">
			<div class="sel_movie_info_area" data-bind="with:movieViewModel">
				<div class="movie_info">
					<div class="movie_sel_tit" data-bind="with:theaterMovieTimeViewModel.movie()">
						<input name="title" value="<%=request.getAttribute("title") %>">
					</div>
					<div class="movie_sel_cinema" data-bind="with:theaterViewModel.theater()">
						<input name="th_name" value="<%=request.getAttribute("th_name") %>">
					</div>
					<div class="movie_sel_date">
                        <span data-bind="with:theaterDateViewModel.movieDate()">
                        	<input name="date" value="<%=request.getAttribute("date") %>"> 
                        </span> <br>
                        <span data-bind="with:theaterMovieTimeViewModel.movieTime()">
                        	<input name="time" value="<%=request.getAttribute("time") %>">
                        </span>
                    </div>
                   	<div class="movie_sel_seat"><input name="seat" value="좌석을 선택하세요."></div>
				</div>
			</div>
			<div class="price_info_area">
				<p class="clear">
					<span class="pi_tit"><input id="peo_num" name="" value="<%=request.getAttribute("adult")%>"></span>
					<span class="pi_info"><input id="tk_price" name="" value="<%=request.getAttribute("a_price")%>"></span><br>
					<span class="pi_tit"><input id="peo_num2" name="" value="<%=request.getAttribute("kid")%>"></span>
					<span class="pi_info"><input id="tk_price2" name="" value="<%=request.getAttribute("k_price")%>"></span>
				</p>
			</div>
			<div class="last_price_area">
                <div class="lp_txt">
                	<p>최종결제금액</p>
                	<p class="lp_price"><input id="total_price" name="" value="해야 됨"></p>
                </div>
                <div class="fr">
                    <button id="btnPay" type="submit" class="bnt_payment">결제</button>
                </div>
            </div>
		</div>
	</div>
	</form>
	<!-- 선택영화 정보 끝 -->


</div>


</body>

<jsp:include page="../include/footer.jsp"></jsp:include>

</html>