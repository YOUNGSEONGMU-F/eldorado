<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link
   href="${pageContext.request.contextPath }/resources/lyj/css/Mypage.css"
   rel="stylesheet" type="text/css" />

    <title>ELDORADO - 마이페이지</title>
    <link href="${pageContext.request.contextPath }/resources/css/header.css" rel="stylesheet" type="text/css" />
    <link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous">
</script>
    <!--이미지 url 은 NYes24 까지 -->
    <link rel="apple-touch-icon" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios110.png" />
    <link rel="apple-touch-icon-precomposed" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios144.png" />
    
    <link rel="icon" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios512.png" />
    <link rel="shortcut icon" href="https://movie-simg.yes24.com/NYes24//MobileWeb/Nicon_web_ios512.png" />

    <meta property="og:title" content="yes24 영화">
    <meta property="og:url" content="https://movie.yes24.com/MyPage/Index?tab=order">
    <meta property="og:image" content="https://movie-simg.yes24.com/NYes24/MobileWeb/Nicon_web_ios144.png">                     
    <meta property="og:site_name" content="yes24 영화">
    <meta property="og:description" content="영화 예매,영화 정보">

<!-- 
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
 >
</script> -->
<div id="ad">
   <img id="imgTopBanner" src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/betterdays_1200x70_181431.jpg" alt="소년">
</div>

<style>
 /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }


</style>
<body>


<!--위에 상단바  -->
<header class="sticky"> 

<div id="stc">
<div class="header sc">
                <div class="nav_area" style="height: 0px;">
                    <div id="sc_nav" style="display: none; ">
                        <ul class="sc_g_left">
                          
                        </ul>
                        <ul class="sc_g_right">
                                    <li><a href="../lyj/login2">로그인</a></li>
                                    <li><a href="../khr/loginTest">로그인(임시)</a></li>


                            <li><a href="/MyPage">마이페이지</a></li>
                            <li><a href="/Customer">고객센터</a></li>
                        </ul>
                    </div>
               <div id="m_nav" style="font-size: 20px; font-style:  Malgun Gothic;">
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

<!--위에 상단바  끝 -->

      
<div class="lyjtotalwrap">

      


    <div id="wrap">
 
            <div class="content">
                
        <!-- 마이 영화 영역 -->
<div class="my_area">
  
        <div class="my_grade_area g_normal">
            <div class="lay_inner">
                <%=session.getAttribute("id") %>님!  반갑습니다 
            </div>
        </div>

    <div class="my_content lay_inner">
        <!-- my계좌, 극장, 영화-->
        <div class="my_info_area">
            <div class="my_account_area">
                <div class="mc_title">MY계좌</div>
                <div class="mi_cont_box">
                    <div class="mi_account_cont">
                        <div class="mi_ac_box">
                            <p class="tit">엘도라도 포인트</p>
                            <p class="price">5319</p>
                        </div>
                        <div class="mi_ac_box">
                            <p class="tit">엘도라도 머니</p>
                            <p class="price">0</p>
                        </div>
                        <div class="mi_ac_box">
                            <p class="tit">엘도라도 상품권</p>
                            
                            <p class="price" >0</p>
                        </div>
                    </div>
                    <div class="mi_account_cont">
                        <div class="mi_ac_box">
                            <p class="tit">예치금</p>
                            <p class="price">0</p>
                        </div>
                        <div class="mi_ac_box">
                            <p class="tit">가족계좌</p>
                            <p class="price">0</p>
                        </div>
                        <div class="mi_ac_box">
                            <p class="tit">
                                <span class="two_tit">예매권</span>
                                <span class="two_tit">할인권</span>
                            </p>
                            <p class="price" id="disnche">
                                <span class="two_preice">0 매</span>
                                <span class="two_preice">0 매</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="my_movie_info_area">
             <!--    <div class="my_cinema_area">
                    <div class="mc_title">MY극장</div>
                    <div class="mi_cont_box">
                                <span class="tag_txt">MY극장을 설정해 주세요.</span>
                        
                        
                    </div>
                </div> -->
                <div class="my_movie_area">
                    <div class="mc_title">MY영화</div>
                    <div class="mi_cont_box">
                        <div><a href="MyRating" class="link_my_movie lmy01">나의 평점 모아보기</a></div>
                        <!--MyPage/MyRating -->
                        <div><a href="MyMovie" class="link_my_movie lmy02">내가 본 영화</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // my계좌, 극장, 영화-->
        <!--예매 확인/취소 등록, 구매내역 부분 -->
        <div class="my_resinfo_area">
            <ul class="tab_menu02">
                <li id="tabMenuOrder" class="active"><a href="/MyPage/Index?tab=order">예매확인/취소</a></li>
             <!--  삭제  <li id="tabMenuPreticket" class="active"><a href="/MyPage/Index?tab=coupon">예매권/할인권 등록</a></li> -->
                <li id="tabMenuMovieGift"><a href="/MyPage/Index?tab=moviegift">무비기프트 구매내역</a></li>
            </ul>

             <div class="lyjReserveTable">
        
              <table>
                 <tr class="lyjTabletr">
                   <th class="lyjTabletd">예매번호</th>
                   <th class="lyjTabletd">영화제목</th>
                   <th class="lyjTabletd">영화관이름</th>
                   <th class="lyjTabletd">좌석</th>
                   <th class="lyjTabletd">날짜</th>
                   <th class="lyjTabletd">상영시간</th>
                   <th class="lyjTabletd">개수</th>
                   <th class="lyjTabletd">취소하기</th>
                   
                </tr>
              
              
             <c:forEach items="${ReservationList }" var="list">
            
             
             
               <tr class="lyjTabletr">
                  <td class="lyjcontentTd Bringreserve">${list.reserv_num }</td>
                  <td class="lyjcontentTd">${list.title }</td>
                  <td class="lyjcontentTd">${list.th_name }</td>
                  <fmt:parseDate var="date" value="${list.date}" pattern="yyyy-MM-dd"/>
                <fmt:formatDate var="dateFormat" value="${date }" pattern="yyyy-MM-dd"/>
                 <fmt:parseDate var="strDate" value="${dateFormat}" pattern="yyyy-MM-dd"/>
                  <fmt:parseNumber value="${strDate.time / (1000*60*60*24)}" integerOnly="true" var="is_date"></fmt:parseNumber>
                  <jsp:useBean id="toDay" class="java.util.Date"/>
                  
                <fmt:formatDate value="${toDay }" pattern="yyyy-MM-dd" var="nowDate"/>
                <fmt:parseDate var="strDate2" value="${nowDate}" pattern="yyyy-MM-dd"/>
               <fmt:parseNumber value="${strDate2.time / (1000*60*60*24)}" integerOnly="true" var="now_date"></fmt:parseNumber>
                
                  
                  <td class="lyjcontentTd">${list.seat }</td>
                  <td class="lyjcontentTd">${dateFormat}</td>
                  <td class="lyjcontentTd">${list.time }</td>
                  <td class="lyjcontentTd">${list.t_amount }</td>
                  <td class="lyjcontentTd">
                  <% 
                     
                  
                  
                  %>
                  <c:if test="${is_date > now_date }">
                  
                     <!-- <a href="Cancel" style="color:green;">취소하기</a> -->
             <!-- <button id="myModal" class="modal">취소하기</button> -->
              <button id="myBtn" class="cancelbutton" type="button">취소하기</button>
 
   

                  </c:if>
                  <c:if test="${is_date < now_date }">
                     <a href="#" style="color:red;" class="cancelbutton">취소불가</a>
                  </c:if>
                  </td>
               </tr>
               
            </c:forEach>
            
            </table>
             
             
             </div>
            
    <!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>      
                                                                 
        <form action="submitCancel" method="post">
      <h4>예매를 취소하시겠습니까?</h4>
      
<!--       <input type="submit" value="예" style="-webkit-appearance: ;"> -->
      <input type="text" id="reserve_numTicket" value="" name="reserv_num" >
      <button type="submit">예</button>
      <button type="button">이전으로</button>
      
      </form>
        
        
        
      </div>
 
    </div>
      
 
    </div>





  <script type="text/javascript">


  // Get the modal
  var modal = document.getElementById('myModal');

  // Get the button that opens the modal
  var btn = document.getElementById("myBtn");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];                                          

  $(function(){
   
   $('.cancelbutton').click(function(){
      var idx = $('.cancelbutton').index(this);
      var is_cancelbutton = $('.cancelbutton').eq(idx).text();
      if(is_cancelbutton == "취소하기"){
      $('#myModal').css('display','block');
      }
   });
  });
  
  // When the user clicks on the button, open the modal 
 /*  btn.onclick = function() {
      modal.style.display = "block";
  }
 */
  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }

   $(function(){
      $('.cancelbutton').click(function(){
            var cancelButtonIndex = $('.cancelbutton').index(this);
            console.log("버튼 idx : "+cancelButtonIndex);
            var  reserve_value  = $('.Bringreserve').eq(cancelButtonIndex).text();
            console.log("예약번호 : "+reserve_value);

            $('#reserve_numTicket').val(reserve_value);
            var ticket = $('#reserve_numTicket').val();
            console.log(ticket);
         });
      
   });
      



  

   </script>







            
            


<!--     예매내역/취소내역

<div class="my_ticket_area" id="orderlist">
        <div class="my_ticket_menu">
            <a href="javascript: fnOrderTabActive('orderTab', 'cancelTab');" id="orderTab" class="active">예매내역</a>
            <a href="javascript: fnOrderTabActive('cancelTab', 'orderTab');" id="cancelTab">취소내역</a>
        </div>
        <div class="my_ticket_list">
            <p class="noti_txt"><span class="col_default"><text id="txtTicketCntDesc">관람 가능 예매내역 </text><text id="txtTicketCnt"></text>건</span> <text id="txtTicketCntComment"> (단, 취소가능 시간이 지나면 예매취소 버튼은 보이지 않습니다.)</text></p>
            <div id="myTicketList"></div>
            

            <div class="btn_bottom_area">
                <button type="button" class="btn_defaultB" onclick="javascript: fnMyTicketMore();">더보기</button>
            </div>
        </div> -->
        <div class="notice_area">
            <p class="noti_titleB">예매하고 티켓 찾기</p>
            <ul class="li_bar">
                <li>예매완료 시 생성되는 <span class="col_default">예매번호로 매표소 및 무인 발권기</span>에서 티켓을 수령할 수 있습니다.</li>
                <li>예고편 상영 등 극장 사정에 의해 영화시작이 10여분 차이 날 수 있습니다.</li>
            </ul>
            <p class="noti_txt">※ 영화 상영시작 이후에는 티켓발권 및 예매취소가 불가능할 수 있습니다. 일부 극장은 상영시작 이후 입장이 제한될 수 있으니, 반드시 상영시작 시간 내에 발권 후 입장해 주세요.</p>
            <p class="noti_txt">※ <span class="col_default">청소년 관람불가 영화</span>는 보호자를 동반해도 만 18세 미만 고객은 관람이 불가합니다. 상영관 입장 시, 신분증을 지참하시기 바랍니다.</p>

            <p class="noti_titleB">예매를 취소하고 싶을 때</p>
            <ul class="li_bar">
                <li>예매취소는 각 극장별 취소가능시간까지만 가능하며, 가능시간 이후에는 취소가 불가능하오니 반드시 취소가능시간을 확인하시기 바랍니다.</li>
                <li><span class="col_default">YES24영화 고객센터 및 각 극장에 전화상으로 취소는 불가능</span>하며 인터넷상에서 취소가 불가능한 경우 관람시간 전에 극장에 방문하시어 현장 취소하셔야 합니다.</li>
                <li>단, 극장에서 발권한 후에는 시간에 관계없이 온라인 취소는 불가하며 현장취소만 가능 합니다.</li>
                <li>예매완료 후에는 부분취소나 시간 변동을 할 수 없습니다. 예매내역 전체를 취소한 후 재예매를 하셔야 합니다.</li>
            </ul>

            <p class="noti_titleB">극장 현장에서 취소 했을 때</p>
            <ul class="li_bar">
                <li>극장 현장에서 취소하신 경우 취소 내역은 관람일 다음날 오전 중에 반영 됩니다.</li>
                <li>이 때 결제도 함께 취소되니 현장 취소시에 유의하시기 바랍니다.</li>
            </ul>

            <p class="noti_titleB">환불규정</p>
            <p class="noti_txt nt_unit">영화 예매 후, 취소 가능시간 내에 인터넷에서 취소를 하면 예매 수수료 포함 전액이 환불됩니다</p>
            <ul class="li_bar">
                <li><span class="col_default">YES머니, YES상품권, 예매권, 할인권, 예치금, 가족계좌, OK캐시백</span> : 결제 취소시 자동 환불. 단 YES상품권, 예매권, 할인권의 경우 사용기간이 지난 시점이라면 환불 불가</li>
                <li><span class="col_default">신용카드</span> : 결제일과 취소일이 다를 경우 영업일 기준 3~5일 정도 소요</li>
                <li><span class="col_default">체크카드</span> : 결제일과 취소일이 다를 경우 영업일 기준 3~5일 정도 소요</li>
                <li><span class="col_default">계좌이체</span> : 취소한 시점의 은행 영업일로 부터 1~2일내 고객님 계좌로 자동 환불</li>
                <li><span class="col_default">휴대폰결제</span> : 결제 당월 취소 시 취소 당일 환불 (익월 취소 시 결제 익월 28일 이후 예치금으로 환불)</li>
            </ul>
        </div>
    </div>




 


            
        </div>
    </div>
</div>

        
            </div>
            <div class="footer">
                <div class="qr_code" style="display:none" id="qrLink">
                    <div class="lay_inner">
                        <span>YES24 영화 앱에서 참여 가능한 이벤트 입니다!</span> <span class="qr_img"><img src="//movie-img.yes24.com/NYes24/new/evt/movieday/qr_code.png" alt=""></span>
                    </div>
                </div>
                        <div class="foot_banner" style="background:#5422b9">
                            <a href="https://movie.yes24.com/Event/EventDetail?eventId=100258" target="_self">
                                <img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/04/bot_1200x180_mania_132712.png" alt="마니아" />
                            </a>
                        </div>

                <div class="lay_inner foot_area clear">
                    <div class="foot_area">
                        <dl class="foot_info_cont">
                            <dt><span>YES24 영화</span></dt>
                            <dd>
                                <div class="policy_cont">
                                    <a href="http://company.yes24.com/"  target="_blank">회사소개</a> 
                                    <a href="http://www.yes24.com/notice/service.aspx"  target="_blank">이용약관</a>
                                    <a href="http://www.yes24.com/notice/privacypolicy.aspx"  target="_blank">개인정보처리방침</a>
                                    <a href="http://www.yes24.com/notice/youthpolicy.aspx"  target="_blank">청소년보호정책</a>
                                    <a href="/HelpDesk/CouponDetail">영화예매권 구매문의</a>
                                </div>
                                <address class="addr_cont">
                                    <span class="fCName">예스이십사(주)</span>
                                    <p>서울시 영등포구 은행로 11, 5층 ~ 6층, 8층 (여의도동, 일신빌딩)</p>
                                    <p>대표 : 김석환 &nbsp;&nbsp;&nbsp;&nbsp;   개인정보보호책임자 : 권민석 yes24help@yes24.com</p>
                                    <p>사업자등록번호 : 229-81-37000  &nbsp;&nbsp;&nbsp;&nbsp;     통신판매업신고 : 제 2005-02682호 <a href="//www.ftc.go.kr/www/bizCommList.do?key=232"><span class="b_line">사업자 정보확인</span></a></p>
                                    <p>Copyright  ⓒ YES24 Corp. All Rights Reserved.</p>
                                </address>
                            </dd>
                        </dl>
                    </div>
                    <div class="foot_call">
                        <div class="f_call_cont">
                            <p class="tit">영화예매/다운로드 문의</p>
                            <p class="tell_num">1544-7758</p>
                            <p>평일 : 9시~12시, 13시~18시 </p>
                            <p>주말/휴일 : 10시~12시, 13시~17시</p>
                            <p>(단, 다운로드는 주말/공휴일 휴무)</p>
                        </div>
                        <div class="top_area">
                            <button type="button" class="btn_top">최상단으로 이동</button>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
</div><!-- lyjtotalwrap 끝 -->





</body>

 <script id="jsbin-javascript">
// 헤더
window.onscroll = function() {myFunction()};

var sc = document.getElementById("stc");
var tt = sc.offsetTop;

function myFunction() {
  if (window.pageYOffset >= tt) {
      document.getElementById("sc_nav").style.display = "inline-block"; 
      document.getElementById("sc_nav").style.backgroundColor = "rgba(26,26,26,.95)"; 
      document.getElementById("m_nav").style.backgroundColor = "rgba(26,26,26,.95)"; 
  }
}


</script>

</html>