<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO</title>
<link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="${pageContext.request.contextPath }/resources/khr/css/TicketOrder.css" rel="stylesheet" type="text/css" />

</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<body>

<div class="wrap">

<input type="hidden" value="<%=session.getAttribute("id") %>">
	<!-- 주문 할인 시작 -->
	<div id="divDiscount">
		<div class="reserve_discount_area">
			<div class="ms_title">
	            <span class="tit">할인선택</span>
	        </div>
			<div class="white_box reserve_discount_cont eve_loot_parent">
            	<div class="yes_dis"><a href="#">YES상품권/YES머니</a></div>
            	<div class="rev_dis"><a href="#">예매권/할인권</a></div>
            	<div class="ok_dis"><a href="#">OK캐쉬백</a></div>
            	<div class="gift_dis"><a href="#">기프티쇼 교환</a></div>
            	
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
						<input type="hidden" value="<%=session.getAttribute("id") %>" name="id">
						제목 : <input name="title" value="${title}">
					</div>
					<div class="movie_sel_cinema" data-bind="with:theaterViewModel.theater()">
						극장 : <input name="th_name" value="${th_name}">
					</div>
					<div class="movie_sel_date">
                        <span data-bind="with:theaterDateViewModel.movieDate()">
                        	날짜 : <input name="date" value="${date}"> 
                        </span> <br>
                        <span data-bind="with:theaterMovieTimeViewModel.movieTime()">
                        	시간 : <input name="time" value="${time}">
                        </span>
                    </div>
                   	<div class="movie_sel_seat"> 좌석 : <input name="seat" value="${seat}"></div>
				</div>
			</div>
			<div class="price_info_area">
				<p class="clear">
					<!-- 성인 -->
					<span class="pi_tit"><input id="peo_num" name="" value="${adult}"></span>
					<span class="pi_info"><input id="tk_price" name="" value="${a_price}"></span><br>
					<!-- 청소년 -->
					<span class="pi_tit"><input id="peo_num2" name="" value="${kid}"></span>
					<span class="pi_info"><input id="tk_price2" name="" value="${k_price}"></span>
					<input type="hidden" id="total_amount" name="total_amount" value="${total_amount}">
				</p>
			</div>
			<div class="last_price_area">
                <div class="lp_txt">
                	<p>최종결제금액</p>
                	<p class="lp_price"><input id="total_price" name="total_price" value="${total_price}"></p>
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