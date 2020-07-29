<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO59</title>
<jsp:include page="../include/header.jsp"/>
<style type="text/css">
* {box-sizing: border-box;}
.movie_cont {
    padding-bottom: 120px;
}
body {
    color: #777;
    font-size: 15px;
    font-family: nanumBa, '맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
}
.lay_inner {
    margin: auto;
    width: 1200px;
}
.head_top_title {
	margin-top: 5%;
    padding: 60px 0 50px;
    font-size: 30px;
    text-align: center;
    color: #2b2b2b;
    font-weight: bold;
    font-family: nanumEB,'맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
}
.movie_rank_cont {
    font-size: 0;
}
.ad_card {
    position: relative;
    float: right;
    width: calc((100% - 90px) / 4);
    vertical-align: top;
    border: 1px solid #e5e5e5;
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



.ad_card + .movie_info_card {
    margin-left: 0;
}

.movie_info_card {
    margin: 0 0 50px 30px;
    display: inline-block;
    width: calc((100% - 90px) / 4);
    vertical-align: top;
    border: 1px solid #e5e5e5;
    cursor: pointer;
}
.movie_info_card .img_thumb {
    position: relative;
    height: 392px;
    overflow: hidden;
    background: #e5e5e5;
}
.movie_info_card .img_thumb img {
    width: 100%;
}
.movie_info_card .img_thumb .over_dmm {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    opacity: 0;
    background: rgba(0,0,0,.7);
    z-index: 1;
    transition: opacity .3s;
}
.movie_info_card .img_thumb:hover .over_dmm {
    opacity: 1;
    transition: opacity .3s;
}
.movie_info_card .img_thumb .over_btn {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
.movie_info_card .img_thumb .over_btn button:first-child {
    margin-top: 0;
}
.movie_info_card .img_thumb .over_btn button:hover {
    color: #ec6159;
    border: 1px solid #ec6159;
}
.movie_info_card .img_thumb .over_btn button {
    margin: 10px auto 0;
    display: block;
    width: 150px;
    height: 58px;
    font-size: 16px;
    color: #fff;
    border: 1px solid rgba(255,255,255,.5);
}
button {
    cursor: pointer;
    font-family: nanumBa, '맑은 고딕','Malgun Gothic','Helvetica','Apple SD Gothic Neo',AppleGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
	background: none;
    border: none;
}
.movie_info_card .img_thumb .over_btn button {
    margin: 10px auto 0;
    display: block;
    width: 150px;
    height: 58px;
    font-size: 16px;
    color: #fff;
    border: 1px solid rgba(255,255,255,.5);
}
.movie_info_card .mv_info {
    padding: 25px 0;
    text-align: center;
    background: #fff;
}
.movie_info_card .mv_tit {
    margin: 0 auto;
    max-width: 240px;
    font-size: 19px;
    line-height: 20px;
    font-weight: normal;
    color: #2b2b2b;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.movie_info_card .mv_tit .ic_rating {
    margin-right: 5px;
}
.ic_rating {
    padding-top: 5px;
    display: inline-block;
    width: 25px;
    height: 22px;
    line-height: 1;
    text-align: center;
    font-size: 13px;
}
.ic_rating.rating_all {
    color: #60c9e3;
    border: 1px solid #60c9e3;
    font-size: 12px;
    line-height: 13px;
}
.ic_rating.rating_12 {
    color: #6dd551;
    border: 1px solid #6dd551;
}
.ic_rating.rating_15 {
    color: #fbac30;
    border: 1px solid #fbac30;
}
.ic_rating.rating_19 {
    color: #d30101;
    border: 1px solid #d30101;
    font-size: 12px;
}
.movie_info_card .mv_txt {
    margin-top: 10px;
}
.movie_info_card .mv_txt span:first-child {
    margin-left: 0;
    padding-left: 0;
    border: none;
}

.movie_info_card .mv_txt span {
    margin-left: 9px;
    padding-left: 10px;
    display: inline-block;
    vertical-align: top;
    font-size: 13px;
    border-left: 1px solid #ccc;
}
.movie_cont .btn_bottom_area {
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

.movie_info_card:nth-child(4n + 1) {
    margin-left: 0;
}

.movie_info_card {
    margin: 0 0 50px 30px;
    display: inline-block;
    width: calc((100% - 90px) / 4);
    vertical-align: top;
    border: 1px solid #e5e5e5;
    cursor: pointer;
}

.movie_info_card:nth-child(4n + 1) {
    margin-left: 0;
}

.movie_info_card {
    margin: 0 0 50px 30px;
    display: inline-block;
    width: calc((100% - 90px) / 4);
    vertical-align: top;
    border: 1px solid #e5e5e5;
    cursor: pointer;
}



/* 광고영역 */
.ad_card {
    position: relative;
    float: right;
    width: calc((100% - 90px) / 4);
    vertical-align: top;
    border: 1px solid #e5e5e5;
    cursor: pointer;
}
.ad_card .img_thumb {
    width: 275px;
    height: 486px;
    overflow: hidden;
    background: #000;
}

.ad_card .img_thumb img {
    width: 100%;
}
.ad_card .rank_ad {
    position: absolute;
    bottom: 0;
    left: 0;
    padding-top: 11px;
    display: block;
    width: 35px;
    height: 35px;
    background: rgba(26,26,26,.5);
    font-size: 13px;
    color: #fff;
    text-align: center;
}







</style>




</head>
<body>

  <div class="movie_area">
        <div class="movie_cont lay_inner">
            <div class="head_top_title">
                현재상영작
            </div>
            <div class="movie_rank_cont" id="movieRank">
                <div class="ad_card" id="adArea">
                <a href="#" target="_self"></a>
                    <div class="img_thumb">
                    	<img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/275x494_175253.jpg" alt="엔딩스">
                    	<span class="rank_ad">AD</span>
                    </div>
                </div>

                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M14/M14/M000071414_132337.jpg/dims/optimize" onerror="fnNoImg(this);" alt="결백" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000071414');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000071414');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_15">15</span>
                                결백
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 32.21%</span>
                                <span>평점 : 8.2</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M61/M88/M000076188_133743.jpg/dims/optimize" onerror="fnNoImg(this);" alt="온워드: 단 하루의 기적" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000076188');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000076188');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_all">전체</span>
                                온워드: 단 하루의 기적
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 25.27%</span>
                                <span>평점 : 9</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M11/M89/M00007118950_134307.jpg/dims/optimize" onerror="fnNoImg(this);" alt="사라진 시간" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000071189');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000071189');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_15">15</span>
                                사라진 시간
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 20.08%</span>
                                <span>평점 : 8</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M25/M93/M00007259350_162353.jpg/dims/optimize" onerror="fnNoImg(this);" alt="침입자" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000072593');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000072593');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_15">15</span>
                                침입자
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 5.08%</span>
                                <span>평점 : 5.8</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M58/M84/M000065884_135714.jpg/dims/optimize" onerror="fnNoImg(this);" alt="위대한 쇼맨" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000065884');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000065884');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_12">12</span>
                                위대한 쇼맨
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 2.56%</span>
                                <span>평점 : 8.2</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M69/M29/M000076929_150901.jpg/dims/optimize" onerror="fnNoImg(this);" alt="에어로너츠" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000076929');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000076929');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_12">12</span>
                                에어로너츠
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 1.99%</span>
                                <span>평점 : 8.7</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M76/M40/M000077640_142244.jpg/dims/optimize" onerror="fnNoImg(this);" alt="나의 첫 번째 슈퍼스타" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000077640');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000077640');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_12">12</span>
                                나의 첫 번째 슈퍼스타
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 1.98%</span>
                                <span>평점 : 9</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M75/M57/M000077557_091604.jpg/dims/optimize" onerror="fnNoImg(this);" alt="야구소녀" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000077557');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000077557');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_12">12</span>
                                야구소녀
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 1.71%</span>
                                <span>평점 : 8</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M65/M75/M000076575_144052.jpg/dims/optimize" onerror="fnNoImg(this);" alt="슈퍼스타 뚜루" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000076575');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000076575');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_all">전체</span>
                                슈퍼스타 뚜루
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 1.31%</span>
                                <span>평점 : 10</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M79/M44/M00006794458_144840.jpg/dims/optimize" onerror="fnNoImg(this);" alt="콜 미 바이 유어 네임" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000067944');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000067944');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_19">청불</span>
                                콜 미 바이 유어 네임
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 1.06%</span>
                                <span>평점 : 7.6</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M27/M70/M00002277053_110308.jpg/dims/optimize" onerror="fnNoImg(this);" alt="레옹 " />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000022770');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000022770');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_19">청불</span>
                                레옹 
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 0.41%</span>
                                <span>평점 : 8.3</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M76/M28/M000077628_114641.jpg/dims/optimize" onerror="fnNoImg(this);" alt="와일드 시티" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000077628');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000077628');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_19">청불</span>
                                와일드 시티
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 0.4%</span>
                                <span>평점 : 0</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M85/M61/M00006856152_145858.jpg/dims/optimize" onerror="fnNoImg(this);" alt="아이 캔 온리 이매진" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000068561');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000068561');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_12">12</span>
                                아이 캔 온리 이매진
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 0.37%</span>
                                <span>평점 : 6.2</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M10/M31/M000071031_093726.jpg/dims/optimize" onerror="fnNoImg(this);" alt="국도극장" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000071031');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000071031');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_12">12</span>
                                국도극장
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 0.37%</span>
                                <span>평점 : 7.5</span>
                            </p>
                        </div>
                    </div>
                    <div class="movie_info_card">
                        <div class="img_thumb">
                            <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M71/M46/M000027146_140147.jpg/dims/optimize" onerror="fnNoImg(this);" alt="전망 좋은 방" />
                            
                            <div class="over_dmm">
                                <div class="over_btn">
                                        <button type="button" onclick="javascript: fnTicketReserve('M000027146');">예매</button>
                                    <button type="button" onclick="javascript:fnMovieInfo('M000027146');">정보</button>
                                </div>
                            </div>
                        </div>
                        <div class="mv_info">
                            <p class="mv_tit">
                                    <span class="ic_rating rating_15">15</span>
                                전망 좋은 방
                            </p>
                            <p class="mv_txt">
                                <span>예매율 : 0.34%</span>
                                <span>평점 : 8</span>
                            </p>
                        </div>
                    </div>

            </div>
            <div class="btn_bottom_area" id="dvNowPlayMore">
                <button type="button" class="btn_defaultB" onclick="javascript: fnMore();">더보기</button>
            </div>
        </div>
    </div>


</body>
<script type="text/javascript">
		var _pageNo = 2;
		var _pageSize = 12;
		var _pageSize1st = 15;
        var _movieRankViewModel = new movieRankViewModel();
        var _adUrl = 'https://movie-simg.yes24.com/NYes24//MgrMain/';

        $(document).ready(function () {

           // fnMore();   // 현재상영작
            fnAd();     // 배너광고
        });

        function fnMore() {
        	
        	_movieRankViewModel.getMovieRankByPlaying('Y24', '1', _pageNo, _pageSize, _pageSize1st, function (data) {

        	    if ((data == null) || (data.ResCd != '00'))
        	    {
        	        return;
        	    }
        	    else
        	    {
        	        if (data.ResCd == '00')
        	        {
        	            var element = document.getElementById('movieRank');
        	            var outTotalCnt = data.ResOutParameters.TOTALCNT;
        	            var rsLength = data.ResData.Table.length;

        	            if ($(element).length == 0 || $('#MovieRankListByPlayingTemplate').length == 0) return;
        	            $("#MovieRankListByPlayingTemplate").tmpl(data.ResData.Table).appendTo(element);
        	            _pageNo = _pageNo + 1;

        	            for (var i = 0; i < rsLength; i++) {
        	                var rsSeq = data.ResData.Table[i].SEQ;

        	                if (parseInt(outTotalCnt) == parseInt(rsSeq)) {
        	                    $('#dvNowPlayMore').css('display', 'none');
        	                    return;
        	                }

        	            }
        	        }
        	        else
        	        {
        	            alert('더 이상 내역이 없습니다.');
        	        }
        	    }
            });
        }

        function fnAd() {
            var now = new Date();
            var year = now.getFullYear();
            var mon = (now.getMonth() + 1) > 9 ? '' + (now.getMonth() + 1) : '0' + (now.getMonth() + 1);
            var day = now.getDate() > 9 ? '' + now.getDate() : '0' + now.getDate();
            var nowday = year + '-' + mon + '-' + day;


            _movieRankViewModel.getMovieRankMiddleBanner(nowday, function (data) {
                if ((data == null) || (data.ResCd != '00')) {
                    return;
                }
                else {
                    if (data.ResCd == '00')
                    {
                        var elementAd = document.getElementById('adArea');
                        var rsLength = data.ResData.Table.length;

                        for (var i = 0; i < rsLength ; i++)
                        {

                            var rndImg = Math.floor(Math.random() * rsLength);
                            var adImg = data.ResData.Table[rndImg].IMG;
                            var adTxt = data.ResData.Table[rndImg].TEXT1;
                            var url = data.ResData.Table[rndImg].URL;
                            var target = data.ResData.Table[rndImg].TARGET;
                            var adBanner = _adUrl + adImg;

                            var adParam = "<a href='" + url + "' target='" + target + "' >" +
	                                    "    <div class='img_thumb'>" +
		                                "        <img src='" + adBanner + "' alt='"+ adTxt +"'>" +
		                                "        <span class='rank_ad'>AD</span>" +
	                                    "    </div>" +
                                        "</a>" ;

                        }
                        $('#adArea').append(adParam);
                    }
                }
            });
        }
        function fnTicketReserve(grpmId) {
            location.href = '${pageContext.request.contextPath}/Movie/Ticket?gId=' + grpmId;
        }

        function fnMovieInfo(mId) {
            location.href = '${pageContext.request.contextPath}/MovieInfo/Index?mId=' + mId;
        }

    </script>
   <script id="MovieRankListByPlayingTemplate" type="text/x-jquery-tmpl">
        <div class="movie_info_card">
            <div class="img_thumb">
                {{if THUMB_FILE != 'default.jpg'}}
                <img src="https://movie-simg.yes24.com/NYes24//MOVIE/${THUMB_FILE}/dims/optimize" onerror="fnNoImg(this);" alt="${M_NM}">
                {{else THUMB_FILE == 'default.jpg'}}
                <img src="#" onerror="fnNoImg(this);" alt="${M_NM}">
                {{/if}}
                

                <div class="over_dmm">
                    <div class="over_btn">
                        {{if IS_SCHEDULE == '1'}}
                        <button type="button" onclick="javascript:fnTicketReserve('${GRPM_ID}');">예매</button>                        
                        {{/if}}
                        <button type="button" onclick="javascript:fnMovieInfo('${M_ID}');">정보</button>
                    </div>
                </div>
            </div>
            <div class="mv_info">
                <p class="mv_tit">
                    {{if GRADE == '00'}}
                    <span class="ic_rating rating_all">전체</span>
                    {{else GRADE == '18'}}
                    <span class="ic_rating rating_19">청불</span>
                    {{else GRADE == '15'}}
                    <span class="ic_rating rating_15">15</span>
                    {{else GRADE == '12'}}
                    <span class="ic_rating rating_12">12</span>
                    {{else GRADE == 'NAN'}}
                    <span class="ic_rating rating_pendency">미정</span>
                    {{/if}}
                ${M_NM}</p>
                <p class="mv_txt">
                    <span>예매율 : ${RANK_CNT}%</span>
                    <span>평점 : ${POINT_AVG}</span>
                </p>
            </div>
        </div>
    </script>
<jsp:include page="../include/footer.jsp"/>
</html>