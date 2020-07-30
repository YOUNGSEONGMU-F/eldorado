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
<link href="${pageContext.request.contextPath }/resources/khr/css/selectSeat.css" rel="stylesheet" type="text/css" />
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
</head>

<body>
<!-- 헤더 -->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- 헤더 -->

<input type="hidden" value="<%=session.getAttribute("id") %>">
<div class="wrap">
   <div class="reserve_top lay_inner">
      
   </div>
   
   <div class="reserve_area">
      <div class="reserve_container lay_inner">
         <div class="reserve_content">
            <!-- 좌석선택 -->
            <div id="divSeatMap">
               <div class="seat_area">
                  <div class="ms_title">
                     <span class="tit">인원/좌석 선택</span>
                  </div>
                  <div class="white_box seat_cont">
                     <div class="peo_num_cont">
                        <!-- 인원 선택 -->
                        <div class="select_people peo_num_info" id="priceList">
                           <div class="people_type">
                              <span class="pt_tit">성인</span>
                              <span class="pt_num_peo" id="THPRICE100">
                                 <!-- 버튼 0-8까지 -->
                                 <!-- 버튼 클릭하면 class="active" 생성-->
                                 <button type="button" onclick="Count('0')" id="THPRICE100" class="" value="0">0</button>
                                 <button type="button" onclick="Count('1')" id="THPRICE100" class="" value="1">1</button>
                                 <button type="button" onclick="Count('2')" id="THPRICE100" class="" value="2">2</button>
                                 <button type="button" onclick="Count('3')" id="THPRICE100" class="" value="3">3</button>
                                 <button type="button" onclick="Count('4')" id="THPRICE100" class="" value="4">4</button>
                                 <button type="button" onclick="Count('5')" id="THPRICE100" class="" value="5">5</button>
                                 <button type="button" onclick="Count('6')" id="THPRICE100" class="" value="6">6</button>
                                 <button type="button" onclick="Count('7')" id="THPRICE100" class="" value="7">7</button>
                                 <button type="button" onclick="Count('8')" id="THPRICE100" class="" value="8">8</button>
                              </span>
                           </div>
                           <div  class="people_type">
                              <span class="pt_tit">청소년</span>
                              <span class="pt_num_peo" id="THPRICE200">
                                 <!-- 버튼 0-8까지 -->
                                 <!-- 버튼 클릭하면 class="active" 생성-->
                                 <button type="button" onclick="Count('9')" id="THPRICE200" class="">0</button>
                                 <button type="button" onclick="Count('10')" class="">1</button>
                                 <button type="button" onclick="Count('11')" class="">2</button>
                                 <button type="button" onclick="Count('12')" class="">3</button>
                                 <button type="button" onclick="Count('13')" class="">4</button>
                                 <button type="button" onclick="Count('14')" class="">5</button>
                                 <button type="button" onclick="Count('15')" class="">6</button>
                                 <button type="button" onclick="Count('16')" class="">7</button>
                                 <button type="button" onclick="Count('17')" class="">8</button>
                              </span>
                           </div>
                        </div>
                        <!--// 인원 선택 -->
                        <!--선택된 상영관-->
                        <div class="peo_num_info">
                           <p class="sc_tit">선택한 상영관 및 시간</p>
                           <p class="sc_txt" data-bind="with:theaterViewModel.theater()">${th_name}</p>
                           <p class="sc_txt">
                              <span data-bind="with:theaterDateViewModel.movieDate()">${date} /</span>
                              <span data-bind="with:theaterMovieTimeViewModel.movieTime()">${time}</span>
                           </p>
                        </div>
                        <!--// 선택된 상영관-->
                        <!--선택 좌석-->
                        <div class="peo_num_info">
                           <p class="sc_tit">선택한 좌석</p>
                           <p class="sc_txt" id="SeatInfo">좌석 선택</p>
                        </div>
                     </div>
                     <!--좌석 위치-->
                     <div class="seating_cont">
                        <style>
                             .seat {
                                 width: 30px;
                                 height: 30px;
                                 margin: 0 auto;
                             }
                             
                             .clicked {
                                 background-color: red;
                                 color: white;
                             }
                         </style>
                         
                         <div class="seat-wrapper">
                            <div class="screen-view-wrapper">
                              <div class="screen-view">SCREEN</div>
                           </div>
                         </div>
                        
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- 선택한 영화 정보 -->
      <form method="post" action="TicketOrder">
      <input type="hidden" value="<%=session.getAttribute("id") %>">
      <div class="sel_movie_info selected">
         <div class="lay_inner">
            <div class="sel_movie_info_area" data-bind="with:movieViewModel">
               <div class="movie_info">
                  <div class="movie_sel_tit" data-bind="with:theaterMovieTimeViewModel.movie()">
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
                        <div class="movie_sel_seat"> 좌석 : <input id="selected_seats" name="seat" value=""></div>
               </div>
            </div>
            <div class="price_info_area">
               <p class="clear">
                  <!-- 성인 -->
                  <span class="pi_tit"><input id="peo_num" name="adult"></span>
                  <span class="pi_info"><input id="a_price" name="a_price"></span><br>
                  <!-- 청소년 -->
                  <span class="pi_tit"><input id="peo_num2" name="kid"></span>
                  <span class="pi_info"><input id="k_price" name="k_price"></span><br>
                  <input type="hidden" id="a_amount" name="a_amount">
                  <input type="hidden" id="k_amount" name="k_amount"><br>
                  <input type="hidden" id="total_amount" name="total_amount">
               </p>
            </div>
            <div class="last_price_area">
                    <div class="lp_txt">
                       <p>최종결제금액</p>
                       <p class="lp_price"><input id="total_price" name="total_price"></p>
                    </div>
                    <div class="fr">
                        <button id="btnPay" type="submit" class="bnt_payment">다음</button>
                    </div>
                </div>
         </div>
      </div>
      </form>
      <!--//선택 영화 정보-->
      <!--step 버튼 영역 -->
      
   </div>
   
</div>


</body>

<jsp:include page="../include/footer.jsp"></jsp:include>

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

<script type="text/javascript">

   //인원수 & 총 가격
   function Count(seq) {
      
      var adult_price  = "";
      var final_childprice = "";
      
      if(seq < 9){
         //성인(n) input
         $('#peo_num').val('성인('+seq+')');
         //가격 input
         $('#a_price').val(seq * 10000);

         var adult_price = $('#a_price').val();
         console.log("어른 :"+adult_price);
         
         //total_price
         var final_childprice = $('#k_price').val();
         $('#total_price').val(Number(adult_price)+Number(final_childprice));

         //total_amount
         $('#a_amount').val(seq);
         var a_amount = $('#a_amount').val();
         console.log("seq1 : "+seq);
         var k_amount = $('#k_amount').val();
         $('#total_amount').val(Number(a_amount)+Number(k_amount));
         
      }else{
         $('#peo_num2').val('청소년('+(seq-9)+')');
         
         $('#k_price').val((seq-9) * 8000);

         var final_childprice = $('#k_price').val();
         console.log("청소년가 : "+final_childprice);
         
         var adult_price = $('#a_price').val();
         $('#total_price').val(Number(adult_price)+Number(final_childprice));

         //total_amount
         $('#k_amount').val(seq-9);
         var k_amount = $('#k_amount').val();
         console.log("seq2 : "+(seq-9));
         var a_amount = $('#a_amount').val();
         $('#total_amount').val(Number(a_amount)+Number(k_amount));
      }

   }

   //좌석
   let test = [];
    let selectedSeats = new Array();
    let selectedSeatsMap = [];
    const seatWrapper = document.querySelector(".seat-wrapper");
    let clicked = "";
    let div = "";

    for (let i = 0; i < 7; i++) {
        div = document.createElement("div");
        seatWrapper.append(div);
        for (let j = 0; j < 10; j++) {
            const input = document.createElement('input');
            input.type = "button";
            input.name = "seats"
            input.classList = "seat";
            //3중포문을 사용하지 않기위해 
            mapping(input, i, j);
            div.append(input);
            input.addEventListener('click', function(e) {
                console.log(e.target.value);
                //중복방지 함수
                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);

                //click class가 존재할때(제거해주는 toggle)
                if (input.classList.contains("clicked")) {
                    input.classList.remove("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    });
                    //click class가 존재하지 않을때 (추가해주는 toggle)
                } else {
                    input.classList.add("clicked");
                    clicked = document.querySelectorAll(".clicked");

                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    })
                }
                //console.log(selectedSeats);
            })
        }
    }

    function mapping(input, i, j) {
        if (i === 0) {
            input.value = "A" + j;
        } else if (i === 1) {
            input.value = "B" + j;
        } else if (i === 2) {
            input.value = "C" + j;
        } else if (i === 3) {
            input.value = "D" + j;
        } else if (i === 4) {
            input.value = "E" + j;
        } else if (i === 5) {
            input.value = "F" + j;
        } else if (i === 6) {
            input.value = "G" + j;
        }
    }


    var array = new Array();
    var array_str = new Array();
    
   $(function(){
      $('.seat').click(function(){

         var idx = $('.seat').index(this);
         var seatclick = $('.seat').eq(idx).val();
         console.log("seatclick : " + seatclick);
         var selected_seats = $('#selected_seats').val();
         var innerHtml = "";
         var tmp = 0;

         if(selected_seats == ""){
               console.log("첫번째");
               $('#selected_seats').val(seatclick);
            }else{
               var arrays = selected_seats.split(',');
                console.log(arrays);
                var len = arrays.length;
                for(var i=0; i<arrays.length; i++){
                    if(arrays[i] == seatclick){
                       console.log("중복");
                       arrays.splice(arrays[seatclick],1);
                       console.log("arrays_중복제거 : " + arrays);
                       tmp = 1;
                       if(arrays[seatclick] == arrays[0]){
                          innerHtml += ''+arrays[i]+'';
                       }
                       else{
                          
                          innerHtml += ''+arrays[i]+'';
                       }   
                    }else{
                        if(tmp == 1){
                        innerHtml += ','+arrays[i]+'';
                        }else{
                           innerHtml += ''+arrays[i]+',';
                           
                        }
                    }
                        
                }
                $('#selected_seats').val("");
                if(tmp == 1){
                   var arr = innerHtml.split(',');
                   console.log('arr1 : ' + arr);
                   arr = arr.filter(function(item){
                      return item !== null && item !== 'undefined' && item !== '';
                   });
                   console.log("arr : " + arr);
                   innerHtml = arr;
                   console.log("inner중복 : " + innerHtml);
                   
                $('#selected_seats').val(innerHtml);
                }else{
                $('#selected_seats').val(innerHtml+seatclick);
                }
           }

      });

   });   
    

</script>


</html>