<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link
	href="${pageContext.request.contextPath }/resources/lyj/css/toReserve.css"
	rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://movie.yes24.com/Scripts/date.js'></script>
<script src='../resources/lyj/js/main.min.js'></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/lyj/css/main.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>

  table
    {
      /*   border:1px solid #BDBDBD; */
       /*  text-align:center; */
        width:100%;
    }

</style>
<div id="ad">
	<img id="imgTopBanner"
		src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/betterdays_1200x70_181431.jpg"
		alt="소년">

</div>
<body>


	<div class="lyjwrap">
		<!--헤더  -->
		<div>
			<header class="sticky">
				<div id="stc">
					<div class="header sc">
						<div class="nav_area" style="height: 0px;">
							<div id="sc_nav" style="display: inline-block; background-color: rgba(26, 26, 26, 0.95);">
								<ul class="sc_g_left">

								</ul>
								<ul class="sc_g_right">
									<li><a href="../lyj/login2">로그인</a></li>
									<li><a href="/MyPage">마이페이지</a></li>
									<li><a href="/Customer">고객센터</a></li>
								</ul>
							</div>
							<div id="m_nav">
								<h1 class="logo">
									<a href="${pageContext.request.contextPath }/Main/index">ELDORADO59</a>
								</h1>
								<div class="m_gnb_area">
									<ul class="m_gnb_list">
										<li class="m_gnb"><a href="/Movie/Ticket"><span>예매</span></a>
											<ul class="m_sub_gnb">
												<li><a href="/Movie/Ticket">빠른예매</a></li>
												<li><a href="/HelpDesk/GuideInfo">예매안내</a></li>
												<li><a href="/MyPage/Index?tab=coupon">예매권 등록</a></li>

											</ul></li>
										<li class="m_gnb"><a href="/MovieInfo/TicketRank"><span>영화</span></a>
											<ul class="m_sub_gnb">
												<li><a href="/MovieInfo/TicketRank">예매순위</a></li>
												<li><a href="/MovieInfo/NowPlayRank">현재상영작</a></li>
												<li><a href="/MovieInfo/PromotionMovie">개봉예정작</a></li>
												<li><a href="/MovieInfo/BoxOfficeRank">박스오피스</a></li>
												<li><a href="/MovieInfo/FestivalMovie">영화제영화</a></li>
												<li><a href="/MovieInfo/Trailer">예고편</a></li>

											</ul></li>
										<li class="m_gnb"><a href="/Event/Index"><span>이벤트</span></a>
											<ul class="m_sub_gnb">
												<li><a href="/Event/Index?tab=PREVIEW">시사회</a></li>
												<li><a href="/Event/Index?tab=EVENT">이벤트</a></li>
												<li><a href="/Event/Winner">당첨자 발표</a></li>

											</ul></li>
										<li class="m_gnb"><a href="/Magazine/Index"><span>매거진</span></a>
											<ul class="m_sub_gnb">
												<li><a href="/Magazine/Index?GC=NEWS">뉴스</a></li>
												<li><a href="/Magazine/Index?GC=STAR">스타</a></li>
												<li><a href="/Magazine/Poll">금주의 폴</a></li>

											</ul></li>
										<li class="m_gnb"><a href="/MovieGift/Index"><span>무비기프트</span></a>
											<ul class="m_sub_gnb">

											</ul></li>
										<li class="m_gnb"><a href="http://vod.yes24.com/"
											target="_blank"><span>다운로드</span></a>
											<ul class="m_sub_gnb">

											</ul></li>

									</ul>

								</div>
								<!-- on 추가/삭제로 사이드 영역 활성 -->
								<div class="aside_rnb eve_parent">
									<ul class="as_rng_list">
										<li style="margin-top: 2px;"><a href="#"
											class="as_btn btn_st btn_search_on eve_side_menu"
											data-cls="search_on"><i class="fas fa-search"
												style="font-size: 20px; color: white" aria-hidden="true"></i></a></li>
										<li><a href="/MyPage/Index"
											class="as_btn btn_my eve_quick"><i class="material-icons"
												style="font-size: 30px; color: white">person_outline</i></a></li>
										<li><a href="#" class="as_btn btn_quick_on eve_side_menu"
											data-cls="quick_on"><i class="material-icons"
												style="font-size: 28px; color: white">border_all</i></a></li>
									</ul>
									<div class="aside_menu eve_content">
										<!-- 활성시 브라우저 높이 계산(aside_men 여기에 입력) / 클릭된 메뉴에 따라 quick_on, search_on 클래스 추가-->
										<!-- 검색 -->
										<div class="search_area">
											<div class="search_box ">
												<span class="inp_clar_box on"> <input type="text"
													id="txtSearchVal" class="inp_st02 inp_val"
													placeholder="검색어를 입력하세요">
													<button type="button" onclick="fnClearSch();"
														class="btn_inp_clear btn_x_sm"></button>
												</span>
												<button type="button" onclick="fnSchSubmit();"
													class="btn_search "></button>
												<button type="button" class="btn_x_big eve_aside_close"></button>
											</div>
											<div class="am_list_area ">
												<ul class="am_list_result" id="searchAutoResult"></ul>
											</div>
										</div>
										<!-- 퀵메뉴 -->
										<div class="quick_area">
											<div class="quick_title ">
												<span class="q_tit"><a
													href="https://www.yes24.com/Templates/FTLogin.aspx?ReturnURL=">로그인을
														해주세요.</a></span>

												<button type="button" class="btn_x_big eve_aside_close"></button>
											</div>
											<div class="am_list_area ">
												<ul class="am_list_quick">
													<li>
														<div class="tbl_box">
															<a href="/MyPage/Index?tab=order">예매<br>확인/취소
															</a>
														</div>
													</li>
													<li>
														<div class="tbl_box">
															<a href="/MyPage/Index?tab=coupon">예매권/할인권<br>등록
															</a>
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
			<!--헤더  -->
		</div>

		<div id="">
			<div id="lyjbody">
				<div class="inside">1</div>
				<div class="insideShow">예매하기</div>

				<div class="lyjinside2">
				
				
				
					<button onclick='location.href="movieTicket";'>처음부터다시선택</button>
				
				</div>
				<div class="lyjinside3">
					<div id="choosethemovie">
						<div id="titlelyj">
							<img src="../resources/lyj/img/one.png" width="40" height="40">
							<h4>영화 선택</h4>
						</div>
						<div id="top10" class="top_movieName">
							<div><h5>현재 박스오피스</h5></div>
						</div>



					</div>
					<div id="choosethemovie">
						<div id="titlelyj">
						<img src="../resources/lyj/img/two.png" width="40" height="40">
							<h4>극장 선택(안보이면 먼저 예매할 영화를 클릭해주세요)</h4>
						</div>
						<div id="top10" class="top_theater">
			<!-- 				<a href="#">전체</a>
					 <input type="button" class="btn_theater" onclick="m_theater(this);" value="CGV"> 
					 <input type="button" class="btn_theater" onclick="m_theater(this);" value="롯데시네마">
					 <input type="button" class="btn_theater" onclick="m_theater(this);" value="메가박스"> -->
					
		<div class="wrap_entirecityandDo" style="display: none;">
		<!-- 전체 도시및 도 -->
			<div class="entire_CityAndDo">
					<div class="CityAndDo">
					<div class="lyj_area">서울</div><br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">부산</div><br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">경기/인천</div><br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">충청/대전</div><br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">경북/대구</div><br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">경남/울산</div>
					<br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">전라/광주</div><br>
					</div>
					<div class="CityAndDo">
					<div class="lyj_area">강원/제주</div><br>
					</div>
			</div>	
		<!-- 전체 도시및 도 -->	
			
			
			<div class="branch">
				<div class="theater_cityandDo">
               <table>
	                 <tr>
	                 	<td class="area_name"></td>
	              	</tr>
               </table>
             
				
				</div>
			</div>
		</div>
					
					
					
						</div>

					</div>
					<div id="choosethemovie">
						<div id="titlelyj">
						<img src="../resources/lyj/img/three.png" width="40" height="40">
							<h4>관람일 선택</h4>
						</div>
						<!-- <div id="top10">달력부분</div> -->
    					
		<table align="center" id="calendar">
		        <tr>
		            <td><font size=1%; color="#B3B6B3"><label onclick="beforem()" id="before" ></label></font></td>
		            <td colspan="5" align="center" id="yearmonth"></td>
		            <td><font size=1%; color="#B3B6B3"><label onclick="nextm()" id="next"></label></font></td>
		        </tr>
		        <tr>
		            <td align="center"> <font color="#FF9090">일</font></td>
		            <td align="center"> 월 </td>
		            <td align="center"> 화 </td>
		            <td align="center"> 수 </td>
		            <td align="center"> 목 </td>
		            <td align="center"> 금 </td>
		            <td align="center"><font color=#7ED5E4>토</font></td>
		        </tr>
	    </table>
					</div>
</div>

					<div id="selectHour">
					<img src="../resources/lyj/img/four.png" width="40" height="40">
					<h4>시간 선택</h4>
					<h6> >> 30분전 예매, 30분전 취소 가능</h6>
					
					</div>
					<div class="selectHourContent">
						<div class="view_date" style="display: none;">
							
							<div class="">
						<!-- 	<h4>1관</h4> -->
						<br>
								<div>
								<button class="Timebox" >11:00</button>
								</div>
								<div>
								<button class="Timebox" >13:00</button>
								</div>
								<div>
								<button class="Timebox" >14:20</button>
								</div>
								<div>
								<button class="Timebox" >15:00</button>
								</div>
								<div>
								<button class="Timebox" >14:30</button>
								</div>
								<div>
								<button class="Timebox" >16:10</button>
								</div>
							</div>
							
							<br>
							<div class="">
							<!-- <h4>2관</h4> -->
							<br>
								<div>
								<button class="Timebox" >19:00</button>
								</div>
								<div>
								<button class="Timebox" >21:00</button>
								</div>
								<div>
								<button class="Timebox" >23:20</button>
								</div>
							
							</div>
							
							
							
							
						</div>
					</div>

					<form method="post" action="../khr/selectSeat">

					<div class="NextButtoncss">

					<div class="btn-next">
					<input id="tmp_movieName" name="mvName">
					<input id="tmp_theater" name="th">
					<input id="tmp_day" name="date">
					<input id="tmp_timesch" name="time">

					<img src="../resources/lyj/img/five.png" width="40" height="40">
					<h4>영화 정보</h4>
							<div class="btn-next">
						<form method="post">
						<input id="tmp_movieName" name=""><br>
						<input id="tmp_theater" name=""><br>
						<input id="tmp_day" name=""><br>
						<input id="tmp_timesch" name=""><br>
						<button type="submit" class="btn-b" style="display: none;"><img class="next-img" alt="" src="${pageContext.request.contextPath }/resources/lyj/img/next.png">다음</button>
						</form>
							</div>
					</div>

					
					
					
					
					</div>
					
			</div>
		</div>


<script id="jsbin-javascript">
	window.onscroll = function() {
		myFunction()
	};

	var sc = document.getElementById("stc");
	var tt = sc.offsetTop;

	function myFunction() {
		if (window.pageYOffset >= tt) {
			document.getElementById("sc_nav").style.display = "inline-block";
			document.getElementById("sc_nav").style.backgroundColor = "rgba(26,26,26,.95)";
			document.getElementById("m_nav").style.backgroundColor = "rgba(26,26,26,.95)";
		}
	}


	$(function(){
		window.onload= movie_api();
		window.onload = build();
		function movie_api(){
			var key = "3139a42241e3c9f7140e6aee50118796";
			var dt = "20200701";
			var yn = "N";
			var tmp = "";
			var date = new Date();
			date = getFormatDate(date);
			
			console.log(date-1);
			
		$.ajax({
			 type: 'get',
			 url: 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key='+key+'&targetDt='+(date-10)+'&multiMovieYn='+yn,
			 success: function (data) {
				 
			 	var movieData = data.boxOfficeResult;
			 	for (var i = 0; i < movieData.dailyBoxOfficeList.length; i++) {
					var movieName = movieData.dailyBoxOfficeList[i].movieNm;
					tmp += '<input type="button" class="m_movieName" value="'+movieName+'" onclick="m_fun(this);"><br>';
					var movieCode = movieData.dailyBoxOfficeList[i].movieCd;
					var Opendate = movieData.dailyBoxOfficeList[i].openDt;
					var movieGenre = movieData.dailyBoxOfficeList[i].genreAlt;
					var movieNation = movieData.dailyBoxOfficeList[i].nationAlt;
					var movieDirectors = movieData.dailyBoxOfficeList[i].directors; 
					console.log("movieName : " + movieData.dailyBoxOfficeList[i].movieNm);
				} 
				$('.top_movieName').append(tmp);
			 } 
        });
		}

		
	})
	function m_fun(dex){
		var idx = $('.m_movieName').index(dex);
		var name = $('.m_movieName').eq(idx).val();
		console.log("name : "+name);
		$('#tmp_movieName').val(name);
		// 지역 보이게
	$('.wrap_entirecityandDo').css('display','');
		 
	}

	//영화관 이름 가져오기
	function r_ths(dex){

		var idx = $('.ByRegion').index(dex);
		//이름갖고오기
		var theaterName = $('.ByRegion').eq(idx).val();

		console.log("theaterName : " + theaterName);
		$('#tmp_theater').val(theaterName);
		//영화관클릭했을때 달력보이게
		$('.c_day').css('display','');
	}
	  
	//달력불러오기
	 var today = new Date(); // 오늘 날짜
	    var date = new Date();
	 
	    function beforem() //이전 달을 today에 값을 저장
	    { 
	        today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
	        build(); //만들기
	    }
	    
	    function nextm()  //다음 달을 today에 저장
	    {
	        today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
	        build();
	    }
	    
	    function build()
	    {
	        var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); //현재달의 첫째 날
	        var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); //현재 달의 마지막 날
	        var tbcal = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
	        var yearmonth = document.getElementById("yearmonth"); //  년도와 월 출력할곳
	        yearmonth.innerHTML = today.getFullYear() + "년 "+ (today.getMonth() + 1) + "월"; //년도와 월 출력
	        
	        if(today.getMonth()+1==12) //  눌렀을 때 월이 넘어가는 곳
	        {
	            before.innerHTML=(today.getMonth())+"월";
	            next.innerHTML="1월";
	        }
	        else if(today.getMonth()+1==1) //  1월 일 때
	        {
	        before.innerHTML="12월";
	        next.innerHTML=(today.getMonth()+2)+"월";
	        }
	        else //   12월 일 때
	        {
	            before.innerHTML=(today.getMonth())+"월";
	            next.innerHTML=(today.getMonth()+2)+"월";
	        }
	        
	       
	        // 남은 테이블 줄 삭제
	        while (tbcal.rows.length > 2) 
	        {
	            tbcal.deleteRow(tbcal.rows.length - 1);
	        }
	        var row = null;
	        row = tbcal.insertRow();
	        var cnt = 0;
	 
	        // 1일 시작칸 찾기
	        for (i = 0; i < nMonth.getDay(); i++) 
	        {
	            cell = row.insertCell();
	            cnt = cnt + 1;
	        }
	 
	        // 달력 출력
	        for (i = 1; i <= lastDate.getDate(); i++) // 1일부터 마지막 일까지
	        { 
	            cell = row.insertCell();
	            cell.innerHTML = i;
	            cell.classList.add('c_day');
	            cell.style.display="none";
	            cnt = cnt + 1;
	            if (cnt % 7 == 1) {//일요일 계산
	                cell.innerHTML = "<font color=#FF9090>" + i//일요일에 색
	            }
	            if (cnt % 7 == 0) { // 1주일이 7일 이므로 토요일 계산
	                cell.innerHTML = "<font color=#7ED5E4>" + i//토요일에 색
	                row = calendar.insertRow();// 줄 추가
	            }
	            if(today.getFullYear()==date.getFullYear()&&today.getMonth()==date.getMonth()&&i==date.getDate()) 
	            {
	              //  cell.bgColor = "#BCF1B1"; //오늘날짜배경색
	            }
	        }
	 	
	    }


	    $(function(){
			$('.c_day').click(function(){
				var idx = $('.c_day').index(this);

				var c_day = $('.c_day').eq(idx).text();
				console.log("c_day : " + c_day);
				$('.c_day').css('background-color','white');
				$('.c_day').eq(idx).css('background-color','orange');
				var date = new Date();
					
				$('#tmp_day').val((date.getMonth()+1)+"월"+c_day+"일");

				$('.view_date').css('display','');
			})

	    })
	    
		function getFormatDate(date){
			var year = date.getFullYear();
			var month = (1 + date.getMonth());
			month = month >= 10 ? month : '0' + month;
			var day = date.getDate();
			day = day >= 10 ? day : '0' + day;
			return year + '' + month + '' + day;
		}
	 $(function(){
			$('.Timebox').click(function(){
				var idx = $('.Timebox').index(this);
				var Timebox = $('.Timebox').eq(idx).text();
				$('#tmp_timesch').val(Timebox);
				var tmp_timesch = $('#tmp_timesch').html();
				console.log(tmp_timesch);
				$('.btn-b').css('display','');
				
			});
	    });

	//서울클릭했을떄
		 $(function(){
			$('.lyj_area').click(function(){
				
				var idx = $('.lyj_area').index(this);
				var lyj_area = $('.lyj_area').eq(idx).text();
				console.log(lyj_area);

				$.ajax({
					//area가 name값이라고 보면된다.
				    url: "ajax_area?area="+lyj_area,
				    type: "GET",
				    dataType: "json",
				    success: function(ddd){

						 //EachTheaters가 ddd로 받아도 된다.
					 var tmp = "";
					   
					    for (var i=0; i < ddd.length; i++){
					    	
							console.log(ddd[i].th_name);
							//클릭시 tmp_theaterName 에 영화관 이름 들어감
							tmp += '<input type="button" class="ByRegion" value="'+ddd[i].th_name+'" onclick="r_ths(this);"><br>';
								
					    }
					    //html이 클릭할때마다 tmp내용이 다시 초기화됨
					    $('.area_name').html(tmp);
				    },

				    error: function (request, status, error){        

				    }
				  });

			});
	    });
	    
		
</script>
	
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>
