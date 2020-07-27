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
<link href="${pageContext.request.contextPath }/resources/khr/css/OrderComplete.css" rel="stylesheet" type="text/css" />
<%-- <link href="${pageContext.request.contextPath }/resources/khr/css/slick.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/khr/css/swiper.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/khr/css/reserve.css" rel="stylesheet" type="text/css" /> --%>
<%-- <link href="${pageContext.request.contextPath }/resources/khr/css/main.css" rel="stylesheet" type="text/css" /> --%>
	
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

<div class="wrap">
	<input type="hidden" value="<%=session.getAttribute("id") %>">
	<div class="order_container">
		<div class="tit">예매완료</div>
		<div class="order_info">
			<div class="movie_info">
				<div class="movie_sel_tit" data-bind="with:theaterMovieTimeViewModel.movie()">
					<span>${title}</span>
				</div>
				<div class="movie_sel_cinema" data-bind="with:theaterViewModel.theater()">
					<span>${th_name} / ${total_amount}장</span>
				</div>
				<div class="movie_sel_seat"> 
					<span><input name="seat" value="좌석을 선택하세요.">C4,C5,C6</span>
				</div>
				<div class="movie_sel_date">
	                <span data-bind="with:theaterDateViewModel.movieDate()">
	                	${date} / ${time}
	                </span> 
	            </div>
	        </div>
	        <div class="last_price_area">
                	결제한 금액 <br>
                	<p>${total_price}원</p>
            </div>
            <div class="eldorado_logo">
            	<span>ELDORADO</span>
            	<img src="${pageContext.request.contextPath }/resources/khr/img/barcode.png">
            </div>
	        <%-- <div class="price_info_area">
	        	<p class="clear">
					<!-- 성인 -->
					<span class="pi_tit"><input id="peo_num" name="" value="${adult}"></span>
					<span class="pi_info"><input id="tk_price" name="" value="${a_price}"></span><br>
					<!-- 청소년 -->
					<span class="pi_tit"><input id="peo_num2" name="" value="${kid}"></span>
					<span class="pi_info"><input id="tk_price2" name="" value="${k_price}"></span>
					수량 : ${total_amount}
				</p>
	        </div> --%>
	        
		</div>
		<div class="order_mypage">
			<button onclick="location.href='/lyj/Mypage';">마이페이지</button>
		</div>
	</div>
</div>



</body>

<jsp:include page="../include/footer.jsp"></jsp:include>


</html>