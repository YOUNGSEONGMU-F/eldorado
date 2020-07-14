<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" style="" class=" js flexbox flexboxlegacy canvas canvastext webgl 
no-touch geolocation postmessage websqldatabase indexeddb hashchange history 
draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius 
boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections 
csstransforms csstransforms3d csstransitions fontface generatedcontent video audio 
localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ELDORADO</title>
	<link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--이미지 url 은 NYes24 까지 -->
	<link rel="apple-touch-icon" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios110.png">
	<link rel="apple-touch-icon-precomposed" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios57.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios72.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios114.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios144.png">
	<link rel="icon" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios512.png">
	<link rel="shortcut icon" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios512.png">
	<meta property="og:title" content="yes24 영화">
	<meta property="og:url" content="https://movie.yes24.com/MovieGift/Index">
	<meta property="og:image" content="https://movie-simg.yes24.com/NYes24/MobileWeb/Nicon_web_ios144.png">
	<meta property="og:site_name" content="yes24 영화">
	<meta property="og:description" content="영화 예매,영화 정보">
	<!--수수료0원결제대상-->
	<script type="text/javascript" src="https://movie.yes24.com/Scripts/wlo.js"></script>
	<script>var noFee = ",T0884,";</script>
	<!-- 이니시스 표준결제 js -->
	<link href="/Content/css?version=20200714001" rel="stylesheet">
	<script src="/bundles/modernizr?version=20200714001"></script>
	
</head>

<body>
	<div id="wrap">
		<div class="loading" id="loading" style="display: none;">
            <div class="loading_img">
            	<img src="//movie-img.yes24.com/NYes24/new/load.gif" alt="">
            </div>
        </div>
        
        <div class="payloading" id="payloading" style="display: none;">
            <div class="loading_img">
            	<img src="//movie-img.yes24.com/NYes24/new/load.gif" alt="">
            </div>
        </div>
        <!-- 배너 활성  on 클래스 추가 삽입으로 관리 -->
        <div class="top_banner inner on" id="topBanner">
            <div class="img_area" style="background-color:#EC615A">
                <a href="https://movie.yes24.com/MovieGift/Index?param=theaterHalf" target="_self">
                    <img id="imgTopBanner" src="https://movie-simg.yes24.com/NYes24//MgrMain//20/07/gnbTop_tevt_163533.jpg" alt="대한극장">
                </a>
            </div>
            <button type="button" class="btn_tb_close">배너 닫기</button>
        </div>
        <div class="container">
        	<!-- main 페이지에서만 들어가는 클래스-->
        	<!-- 헤더 메뉴 와 컨텐츠 상단 배너가 겹쳐서 표시되는 디자인들에 none_pt 추가-->
        	<div class="header" style="position: absolute;">
        		<div class="nav_area">
        			<div class="sc_nav ">
        				<ul class="sc_g_left">
        					<li><a href="http://www.yes24.com" target="_blank">YES24</a></li>
        					<li><a href="http://ticket.yes24.com" target="_blank">공연</a></li>
        					<li><a href="http://ticket.yes24.com" target="_blank">공연</a></li>
        					<!--active 추가 삭제로 메뉴 표시-->
        					<!-- <li class="sc_g_menu ">
                                <a href="#">도서 외</a>
                                <ul class="sc_g_sub">
                                    <li><a href="#">eBook</a></li>
                                    <li><a href="#">웹소설/코믹</a></li>
                                    <li><a href="#">CD/LP</a></li>
                                    <li><a href="#">DVD/BD</a></li>
                                    <li><a href="#">문구/GIFT</a></li>
                                    <li><a href="#">중고샵</a></li>
                                    <li><a href="#">패션</a></li>
                                </ul>
                            </li> -->
                        </ul>
                        <ul class="sc_g_right">
                            <li><a href="https://www.yes24.com/Templates/FTLogin.aspx?ReturnURL=">로그인</a></li>
							<li><a href="//www.yes24.com/Member/FTMypageMain.aspx">마이페이지</a></li>
                            <li><a href="http://www.yes24.com/Mall/Help/Main">고객센터</a></li>
                        </ul>
        			</div>
        			<!-- // 스크롤 gnb  메뉴 -->
        			<!--   메인 gnb  메뉴 -->
        			<div class="m_nav">
        				<h1 class="logo"><a href="/Main/Index">YES24 영화</a></h1>
        				<div class="m_gnb_area">
        					<ul class="m_gnb_list">
        						<li class="">
                                    <a href="/Movie/Ticket"><span>예매</span></a>
                                    <ul class="m_sub_gnb">
                                                    <li><a href="/Movie/Ticket">빠른예매</a></li>
                                                    <li><a href="/HelpDesk/GuideInfo">예매안내</a></li>
                                                    <li><a href="/MyPage/Index?tab=coupon">예매권 등록</a></li>

                                    </ul>
                                </li>
                                <li class="">
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
                                <li class="">
                                    <a href="/Event/Index"><span>이벤트</span></a>
                                    <ul class="m_sub_gnb">
                                                    <li><a href="/Event/Index?tab=PREVIEW">시사회</a></li>
                                                    <li><a href="/Event/Index?tab=EVENT">이벤트</a></li>
                                                    <li><a href="/Event/Winner">당첨자 발표</a></li>

                                    </ul>
                                </li>
                                <li class="">
                                   <a href="/Magazine/Index"><span>매거진</span></a>
                                   <ul class="m_sub_gnb">
                                                   <li><a href="/Magazine/Index?GC=NEWS">뉴스</a></li>
                                                   <li><a href="/Magazine/Index?GC=STAR">스타</a></li>
                                                   <li><a href="/Magazine/Poll">금주의 폴</a></li>

                                   </ul>
                               </li>
                               <li class="active">
                                   <a href="/MovieGift/Index"><span>무비기프트</span></a>
                                   <ul class="m_sub_gnb">

                                   </ul>
                               </li>
                               <li class="">
                                  <a href="http://vod.yes24.com/" target="_blank"><span>다운로드</span></a>
                                  <ul class="m_sub_gnb">

                                  </ul>
                              </li>
                              <li class="">
                                  <ul class="m_sub_gnb">

                                  </ul>
                              </li>
                            </ul>
                        </div>
                        <!-- on 추가/삭제로 사이드 영역 활성 -->
                        <div class="aside_rnb eve_parent">
                        	<ul class="as_rng_list">
                        		<li><a href="#" class="as_btn btn_st btn_search_on eve_side_menu" data-cls="search_on">검색</a></li>
                        		<li><a href="#" class="as_btn btn_st btn_search_on eve_side_menu" data-cls="search_on">검색</a></li>
                        		<li>
                                    <a href="/MyPage/Index" class="as_btn btn_my eve_quick">
                                       	 마이페이지
                                    </a>
                                </li>
                            </ul>
                            <div class="aside_menu eve_content" style="height: 337px;">
                            	<!-- 활성시 브라우저 높이 계산(aside_men 여기에 입력) / 클릭된 메뉴에 따라 quick_on, search_on 클래스 추가-->
                            	<div class="search_area am_content">
                            		<div class="search_box">
                            			<span class="inp_clar_box on">
                                            <input type="text" id="txtSearchVal" class="inp_st02 inp_val" placeholder="검색어를 입력하세요">
                                            <button type="button" onclick="fnClearSch();" class="btn_inp_clear btn_x_sm"></button>
                                        </span>
                                        <button type="button" onclick="fnSchSubmit();" class="btn_search "></button>
                                        <button type="button" onclick="fnSchSubmit();" class="btn_search "></button>
                                    </div>
                                    <div class="am_list_area ">
                                        <ul class="am_list_result" id="searchAutoResult"></ul>
                                    </div>
                            	</div>
                            	<div class="quick_area am_content">
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
                            	<div class="ad_banner">
                            		<a href="https://movie.yes24.com/MovieGift/Index?param=theaterHalf" target="_self"><img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/07/ham_tevt_163653.jpg" alt="대한"></a>
                            	</div>
                            </div>
                        </div>
        			</div>
        			<!-- // 메인 gnb  메뉴 -->
        		</div>
        	</div>
        	<div class="content">
        		<link rel="stylesheet" href="/Content/PC/moviegift.css">
        		<!-- 마이 영화 영역 -->
        		<div class="moviegift_area">
        			<div class="moviegift_banner_area">
			            <span>MOVIE GIFT</span>
			        </div>
			        <div class="moviegift_cont lay_inner">
			        	<div class="moviegift_voucher_area">
			        		<p class="title_box">
			        			<a href="/MyPage/Index?tab=moviegift" class="link_left">나의구매내역</a>
			        		</p>
			        		<div class="mg_vou_list_area" id="divMovieGiftTop">
			        			<div class="mg_vou_box">
			        				<a href="Ticket?id=1296">
			        					<div class="mg_vou_img">
			        						<img src="https://movie-simg.yes24.com/NYes24//MovieGift/Image/202001/img_mg01_130913(0).png" alt="">
			        					</div>
			        					<div class="mg_vou_info">
			        						<div class="mg_vou_type">일반예매권</div>
			        						<div class="mg_vou_price">
			        							<span class="fir_price"><text class="currency">12,000</text>원</span>
			        							<span class="las_price"><text class="currency">10,500</text>원</span>
			        							
			        						</div>
			        					</div>
			        				</a>
			        			</div>
			        			<div class="mg_vou_box">
			        				<a href="Ticket?id=1297">
			        					<div class="mg_vou_img">
			        						<img src="https://movie-simg.yes24.com/NYes24//MovieGift/Image/202001/img_mg02_145927(0).png" alt="">
			        					</div>
			        					<div class="mg_vou_info">
			        						<div class="mg_vou_type">3D 예매권</div>
			        						<div class="mg_vou_price">
			        							<span class="fir_price"><text class="currency">14,000</text>원</span>
			        							<span class="fir_price"><text class="currency">14,000</text>원</span>
			        						</div>
			        					</div>
			        				</a>
			        			</div>
			        		</div>
			        	</div>
            			<div class="moviegift_give_area" id="moviegiftbox">
            				<!-- 여기부터 다시~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            				
            				
            				
            			</div>
			        </div>
        		</div>
        	</div>
        </div>
        
        
        
        
        
        
	</div>











</body>
</html>