<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO59</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<jsp:include page="../include/header.jsp"/>
<style type="text/css">

*{box-sizing: border-box;}
body {color: #777;}
div{margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;}
.t_movie_cont {
    padding-bottom: 120px;
}
.lay_inner {
    margin: auto;
    width: 1200px;
}
.t_head_top_title {
	margin-top: 5%;
    padding: 60px 0 50px;
    font-size: 30px;
    text-align: center;
    color: #2b2b2b;
    font-weight: bold;
    font-family: nanumEB,'맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
}
.t_my_ticket_info {
    margin-bottom: 30px;
    padding: 50px;
    border: 1px solid #e5e5e5;
    background: #fff;
    font-size: 0;
}

.t_filmfestival_cont .t_my_ticket_info .t_mti_thumb {
    width: 300px;
    height: 100%;
    background: #f2f2f2;
    min-height: 220px;
    border: 1px solid #e5e5e5;
}

.t_my_ticket_info .t_mti_thumb {
    margin-right: 50px;
    width: 180px;
    height: 255px;
    overflow: hidden;
    min-height: 80px;
}
.t_my_ticket_info > div {
    display: inline-block;
    vertical-align: top;
}
.t_my_ticket_info .t_mti_thumb img {
    width: 100%;
}
.t_filmfestival_cont .t_my_ticket_info .t_mti_txt {
    width: calc(100% - 350px);
}
.t_my_ticket_info .t_mti_txt {
    position: relative;
    width: calc(100% - 230px);
}
.t_my_ticket_info > div {
    display: inline-block;
    vertical-align: top;
}
.t_filmfestival_cont .t_my_ticket_info .t_ticket_tit {
    position: relative;
    width: calc(100% - 230px);
}
.t_my_ticket_info .t_ticket_tit {
    padding-bottom: 23px;
    font-size: 20px;
    font-weight: normal;
    color: #2b2b2b;
}
.t_eve_more_parent .t_eve_more_child {
    height: 0;
    overflow: hidden;
    transition: height .3s;
}
.t_my_ticket_info .t_ticket_txt {
    padding-bottom: 0px;
    font-size: 15px;
    line-height: 24px;
}
.t_my_ticket_info .t_payment_state {
    margin-top: 30px;
    padding-top: 30px;
    border-top: 1px solid #e5e5e5;
}
.t_my_ticket_info .t_ps_tit {
    position: relative;
    margin-bottom: 20px;
    font-size: 15px;
    font-weight: normal;
    color: #2b2b2b;
}
.t_filmfestival_cont .t_select_box {
    position: absolute;
    top: 0;
    right: 0;
}
.t_select_box.select_big {
    width: 200px;
}
.t_select_box {
    position: relative;
    width: 89px;
    font-size: 13px;
}
.select_area .t_sel_inp {
    position: absolute;
    padding: 0;
    width: 0;
    height: 0;
    font-size: 0;
    border: none;
    opacity: 0;
}
input, select {
    margin: 0;
    padding: 0;
    appearance: none;
    -webkit-appearance: none;
}

.t_select_box.select_big .t_sel_val {
    padding: 15px 15px 16px 20px;
}
.t_select_box .t_sel_val {
    position: relative;
    padding: 9px 26px 10px 20px;
    line-height: 1;
    border: 1px solid #e5e5e5;
    cursor: pointer;
}

.t_my_ticket_info p {
    color: #777;
    font-size: 14px;
    text-align: center;
}
.t_select_box.select_big .sel_option {
    top: 45px;
    max-height: 210px;
    overflow: hidden;
    overflow-y: auto;
}
.t_select_box .t_sel_option {
    position: absolute;
    top: 33px;
    width: 100%;
    border: 1px solid #e5e5e5;
}

.select_area .t_sel_option {
    display: none;
}

.t_select_box.select_big .t_sel_option li {
    padding: 11px 15px 12px 20px;
    line-height: 19px;
}
.t_select_box .t_sel_option li {
    padding: 9px 20px 10px;
    background: #fff;
    cursor: pointer;
}
a {
    color: #2b2b2b;
    outline: none;
}
a {
    margin: 0;
    padding: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
    text-decoration: none;
}
.list_st {
    font-size: 15px;
}
.list_st > li {
    margin-bottom: 7px;
    padding-top: 8px;
    height: 30px;
}
nav ul, li {
    list-style: none;
}

.t_movie_cont .btn_bottom_area {
    padding-top: 10px;
}
.btn_bottom_area {
    padding-top: 40px;
    font-size: 0;
    text-align: center;
}
.btn_bottom_area button:first-child {
    margin-left: 0;
}
.btn_bottom_area button {
    margin-left: 10px;
    font-size: 16px;
}
.btn_defaultB {
    padding: 20px 0 19px;
    min-width: 160px;
    line-height: 1;
    text-align: center;
    color: #2b2b2b;
    background: #fff;
    border: 1px solid #ddd;
}
button {
    cursor: pointer;
    font-family: nanumBa, '맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
}
.ms_search_box.ms_btm_area {
    margin-top: 120px;
    text-align: center;
}
.inp_clar_box {
    position: relative;
    display: inline-block;
    vertical-align: top;
}
.ms_search_box.ms_btm_area .inp_st {
    margin-right: 10px;
    width: 400px;
    border-bottom: 3px solid #2b2b2b;
    font-size: 20px;
}

.inp_clar_box input[type='text'] {
    padding-right: 14px;
}
.inp_st {
    padding: 0 0 10px 1px;
    line-height: 1;
    border: none;
    border-bottom: 1px solid #777;
    font-size: 15px;
    font-weight: normal;
    color: #2b2b2b;
    outline: none;
    background: none;
    font-family: nanumBa, '맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
}
.inp_clar_box .btn_inp_clear {
    position: absolute;
    top: 7px;
    right: 10px;
    display: none;
}
.btn_x_sm {
    position: relative;
    padding-left: 13px;
    min-width: 13px;
    min-height: 13px;
    font-size: 0;
    vertical-align: top;
}
button {
    cursor: pointer;
    font-family: nanumBa, '맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
}
button {
    background: none;
    border: none;
}
.ms_search_box.ms_btm_area .btn_searchBig {
    margin-top: -6px;
}

.btn_searchBig {
    width: 32px;
    height: 32px;
    background: url(//movie-img.yes24.com/NYes24/new/all_sprite.png) no-repeat -177px -520px;
    vertical-align: top;
}


</style>
</head>



<body>




<div class="t_movie_area">
 <div class="t_movie_cont lay_inner">
  <div class="t_head_top_title"> 영화제 영화 </div>
   <div class="t_filmfestival_cont" id="t_dvFestivalContents">
    <div class="t_my_ticket_info">
     <div class="t_mti_thumb">
      <img src="https://movie-simg.yes24.com/NYes24//MOVIE//orange08_112430.jpg" id="t_poster">
     </div>
     <div class="t_mti_txt eve_more_parent">
      <div class="t_ticket_tit" id="t_title">오렌지필름 기획전 - 들리나요</div>
      <div class="t_eve_more_child" id="t_eve_more_child" style="height: 0px;"></div>
      <div class="t_ticket_txt" id="t_period">기간 : 2020.08.01~2020.08.31</div>
      <div class="t_ticket_txt" id="t_country"> 장소 : KU시네마테크 외</div>
      <div class="t_payment_state ">
       <div class="t_ps_tit">  			    상영목록  		    </div>
        <div class="list_area2205">
        <ul class="list_st" id="list_st2205">
         <li style=" display:block;">
           <a href="#" onclick="javascript: fnMovieDetail('mId');">오렌지필름 기획전 - 들리나요</a> 
          <!-- <a href="#" ></a> -->
          </li>
         </ul>
       </div> 
      </div>
      <div class="t_select_box select_big select_area ">
       <input type="text" class="t_sel_inp">
       <div class="t_sel_val eve_sel">
        <p class="t_sv_txt">관련영화제(연도별)&nbsp;&nbsp;<i class='fas fa-angle-down'></i></p>
        
       </div>
       <div class="t_sel_option eve_list">
        <ul id="t_Grp2205">
         <!-- <li> <a href="#"onclick="javascript: fnFestival('2205');">오렌지필름 기획전 - 들리나요</a>
         </li>
         <li> <a href="#"onclick="javascript: fnFestival('2204');">오렌지필름 기획전 - 쓰-다.</a>
         </li>
         <li> <a href="#"onclick="javascript: fnFestival('2184');">오렌지필름 기획전 - 입천장 까지도록 와그작</a>
         </li> -->
        </ul>
       </div>
      </div>
     </div>
    </div>
    
     <div class="t_my_ticket_info">
     <div class="t_mti_thumb">
      <img src="https://movie-simg.yes24.com/NYes24//MOVIE//orange08_112430.jpg" id="t_poster">
     </div>
     <div class="t_mti_txt eve_more_parent">
      <div class="t_ticket_tit" id="t_title">오렌지필름 기획전 - 들리나요</div>
      <div class="t_eve_more_child" id="t_eve_more_child" style="height: 0px;"></div>
      <div class="t_ticket_txt" id="t_period">기간 : 2020.08.01~2020.08.31</div>
      <div class="t_ticket_txt" id="t_country"> 장소 : KU시네마테크 외</div>
      <div class="t_payment_state ">
       <div class="t_ps_tit">  			    상영목록  		    </div>
        <div class="list_area2205">
        <ul class="list_st" id="list_st2205">
         <li style=" display:block;">
           <a href="#" onclick="javascript: fnMovieDetail('mId');">오렌지필름 기획전 - 들리나요</a> 
          <!-- <a href="#" ></a> -->
          </li>
         </ul>
       </div> 
      </div>
      <div class="t_select_box select_big select_area ">
       <input type="text" class="t_sel_inp">
       <div class="t_sel_val eve_sel">
        <p class="t_sv_txt">관련영화제(연도별)&nbsp;&nbsp;<i class='fas fa-angle-down'></i></p>
        
       </div>
       <div class="t_sel_option eve_list">
        <ul id="t_Grp2205">
         <!-- <li> <a href="#"onclick="javascript: fnFestival('2205');">오렌지필름 기획전 - 들리나요</a>
         </li>
         <li> <a href="#"onclick="javascript: fnFestival('2204');">오렌지필름 기획전 - 쓰-다.</a>
         </li>
         <li> <a href="#"onclick="javascript: fnFestival('2184');">오렌지필름 기획전 - 입천장 까지도록 와그작</a>
         </li> -->
        </ul>
       </div>
      </div>
     </div>
    </div>
    
     <div class="t_my_ticket_info">
     <div class="t_mti_thumb">
      <img src="https://movie-simg.yes24.com/NYes24//MOVIE//orange08_112430.jpg" id="t_poster">
     </div>
     <div class="t_mti_txt eve_more_parent">
      <div class="t_ticket_tit" id="t_title">오렌지필름 기획전 - 들리나요</div>
      <div class="t_eve_more_child" id="t_eve_more_child" style="height: 0px;"></div>
      <div class="t_ticket_txt" id="t_period">기간 : 2020.08.01~2020.08.31</div>
      <div class="t_ticket_txt" id="t_country"> 장소 : KU시네마테크 외</div>
      <div class="t_payment_state ">
       <div class="t_ps_tit">  			    상영목록  		    </div>
        <div class="list_area2205">
        <ul class="list_st" id="list_st2205">
         <li style=" display:block;">
           <a href="#" onclick="javascript: fnMovieDetail('mId');">오렌지필름 기획전 - 들리나요</a> 
          <!-- <a href="#" ></a> -->
          </li>
         </ul>
       </div> 
      </div>
      <div class="t_select_box select_big select_area ">
       <input type="text" class="t_sel_inp">
       <div class="t_sel_val eve_sel">
        <p class="t_sv_txt">관련영화제(연도별)&nbsp;&nbsp;<i class='fas fa-angle-down'></i></p>
        
       </div>
       <div class="t_sel_option eve_list">
        <ul id="t_Grp2205">
         <!-- <li> <a href="#"onclick="javascript: fnFestival('2205');">오렌지필름 기획전 - 들리나요</a>
         </li>
         <li> <a href="#"onclick="javascript: fnFestival('2204');">오렌지필름 기획전 - 쓰-다.</a>
         </li>
         <li> <a href="#"onclick="javascript: fnFestival('2184');">오렌지필름 기획전 - 입천장 까지도록 와그작</a>
         </li> -->
        </ul>
       </div>
      </div>
     </div>
    </div>
   </div><!-- t_filmfestival_cont" id="t_dvFestivalContents" -->
   <div class="btn_bottom_area" id="btnFestivalMoreArea">
    <button type="button" class="btn_defaultB" id="btnFestivalMore" onclick="javascript: fnFestivalMore('Y');">더보기</button>
   </div>
   <div class="ms_search_box ms_btm_area ">
    <span class="inp_clar_box ">
     <input type="text" class="inp_st inp_val" placeholder="영화제명을 입력하세요.">
     <button type="button" class="btn_inp_clear btn_x_sm"></button>
    </span>
    <button type="button" class="btn_searchBig eve_real_search" id="btnFestivalSearch"></button>
   </div>
 </div> <!-- t_movie_cont lay_inner -->
</div> <!--class="t_movie_area"  -->













</body>
<jsp:include page="../include/footer.jsp"/>
<script id="FestivalLinkListTemplate" type="text/x-jquery-tmpl">
        
        <li style="{{if ROW_NUM <= 5}} display:block;" {{else}} display:none;" {{/if}}>
            <a href='#' onclick="javascript: fnMovieDetail('${M_ID}');">${M_NM}</a>
            {{if MTIME_CNT > 0}}
            <button type='button' class='btn_defaultS btn_whiteS' onclick="javascript: fnTicket('${GRPM_ID}');">예매</button>
            {{/if}}
        </li>
        
    </script>
     <script id="FestivalGrpListTemplate" type="text/x-jquery-tmpl">
        {{if FESTI_NM != ''}}
        
        <li><a href="#" onclick="javascript: fnFestival('${FESTI_ID}');">${FESTI_NM}</a></li>
        
        {{else FESTI_NM == ''}}
        <li>관련영화제 없음</li>
        {{/if}}
        
    </script>

    <script type="text/javascript">        

        function fnMovieDetail(mId) {
            location.href = '/MovieInfo/Index?mId=' + mId;
        }

        function fnTicket(grpmId) {
            location.href = '/Movie/Ticket?gId=' + grpmId;
        }
        
        function fnFestival(festiId) {
            location.href = '/MovieInfo/FestivalMovie?festiId=' + festiId;
        }

     // 영화제 영화 더보기
        function fnFestivalMore(more)
        {
            var fMovieNm = $('.inp_st').val();
            _fPageNo += 1;
            _fPageSize = 5;
            _fMoreYn = more;

            fnFestivalMovieList(_fMoreYn, fMovieNm, _fPageNo, _fPageSize);
        }
    </script>
</html>