<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	



<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">
    <title>ELDORADO59</title>  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 

<link href="${pageContext.request.contextPath }/resources/css/magazine.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <div id="wrap">
        <div class="loading" id="loading">
            <div class="loading_img"><img src="//movie-img.yes24.com/NYes24/new/load.gif" alt=""></div>
        </div>
        <div class="payloading" id="payloading">
            <div class="loading_img"><img src="//movie-img.yes24.com/NYes24/new/load.gif" alt=""></div>
        </div>
       

<!-- 헤더 -->            

<jsp:include page="../include/header.jsp"></jsp:include>
<!-- 헤더 -->            
            <div class="content">
    <!-- 뉴스 -->
    <div class="magazine_container_area">
        <div class="magazine_cont lay_inner">
            <div class="head_top_title">
            매거진
            </div>
            <div class="magazine_banner">
                <div class="magazine_slider">
                                <div class="magazine_slide" data-cid="343401">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/06_still04_094238.jpg" alt="＜오! 문희＞ 아무도 못 잡으면, 우리가 직접 잡는다!">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">핫토픽</p>
                                            <p class="sld_title">＜오! 문희＞ 아무도 못 잡으면, 우리가 직접 잡는다!</p>
                                            <p class="sld_type">오! 문희</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="magazine_slide" data-cid="343399">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/bam_094501.jpg" alt="[손희정의 더 페이보릿] 유령이 인간을 구할 때 - 유은정 감독">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">전문가 칼럼</p>
                                            <p class="sld_title">[손희정의 더 페이보릿] 유령이 인간을 구할 때 - 유은정 감독</p>
                                            <p class="sld_type">밤의 문이 열린다</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="magazine_slide" data-cid="343382">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/mp_095500.jpg" alt="＜사랑이 눈뜰 때＞ 눈먼 천재 작가에게 찾아온 눈부신 빛!">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">핫토픽</p>
                                            <p class="sld_title">＜사랑이 눈뜰 때＞ 눈먼 천재 작가에게 찾아온 눈부신 빛!</p>
                                            <p class="sld_type">사랑이 눈뜰 때</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="magazine_slide" data-cid="343381">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/offmenu_092643.jpg" alt="＜오프 더 메뉴＞  포스터 2종 공개">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">최초공개</p>
                                            <p class="sld_title">＜오프 더 메뉴＞  포스터 2종 공개</p>
                                            <p class="sld_type">오프 더 메뉴</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="magazine_slide" data-cid="343353">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/poster_092509.jpg" alt="＜낙원의 밤＞ 2020년 베니스를 빛낼 유일한 한국영화!">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">핫토픽</p>
                                            <p class="sld_title">＜낙원의 밤＞ 2020년 베니스를 빛낼 유일한 한국영화!</p>
                                            <p class="sld_type">낙원의 밤</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="magazine_slide" data-cid="343321">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/111_093436.jpg" alt="＜워터 릴리스＞ 미공개 스틸 공개">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">최초공개</p>
                                            <p class="sld_title">＜워터 릴리스＞ 미공개 스틸 공개</p>
                                            <p class="sld_type">워터 릴리스</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="magazine_slide" data-cid="343320">
                                    <img src="https://movie-simg.yes24.com/NYes24//LOUNGE/20/07/bodo_still_02_093112.jpg" alt="＜블랙아웃: 인베이젼 어스＞ 미공개 스틸 공개">
                                    <div class="sld_banner_info">
                                        <div class="sld_banner_txt">
                                            <p class="sld_rank">최초공개</p>
                                            <p class="sld_title">＜블랙아웃: 인베이젼 어스＞ 미공개 스틸 공개</p>
                                            <p class="sld_type">블랙아웃 : 인베이젼 어스</p>
                                        </div>
                                    </div>
                                </div> -->

                </div>
            </div>

            

    <script>
        function fnImgError(obj) {
            $(obj).attr("src", "https://movie-simg.yes24.com/NYes24//new/ic_noimg_com.png").addClass("mgz_noImg");
            $(obj).parent().css({ "position": "relative", "background": "#e5e5e5" });
        }
    </script>

    <!--탭영역-->
    <div class="magazine_tab_area">
        <ul class="tab_menu02">
            <li class="active" id="tabMenu02_ALL"><a href="/Magazine/Index?GC=ALL">전체</a></li>
            <li class="" id="tabMenu02_NEWS"><a href="/Magazine/Index?GC=NEWS">뉴스</a></li>
            <li class="" id="tabMenu02_STAR"><a href="/Magazine/Index?GC=STAR">스타</a></li>
        </ul>
        <div class="magazine_tab_container">
            <div class="magazine_area" id="magazineList">
                            <div class="mg_box">
                                <a href="/Magazine/Detail?contentsId=343402&amp;sectionCd=CONATT780">
                                    <div class="mg_thumb"><img src="https://image.yes24.com/images/chyes24/froala/10/1/6297.jpg" alt="‘얼굴 다 가리는 모자’ 이유비, 러블리 인형 비주얼 " onerror="fnImgError(this);" /></div>
                                    <div class="mg_info_box">
                                        <p class="mg_first"><span>스타패션</span><span class="date">2020.07.31</span></p>
                                        <p class="mg_de_txt dot_st">‘얼굴 다 가리는 모자’ 이유비, 러블리 인형 비주얼 </p>
                                    </div>
                                </a>
                            </div>
            </div>
                    <div class="btn_bottom_area" id="btnMoreArea">
                        <button type="button" class="btn_defaultB" onclick="javascript:fnMore();">더보기</button>
                    </div>

        </div>
    </div>
    <!-- //탭영역-->

    <!-- 영화 순위 템플릿-->
    <script id="MagazingTemplate" type="text/x-jquery-tmpl">
        <div class="mg_box">
            <a href="/Magazine/Detail?contentsId=${CONTENTS_ID}&sectionCd=${SECTION_CD}">
                <div class="mg_thumb">
                    {{if GROUP_CATEGORY =="NEWS"}}
                        <img src='${"https://movie-simg.yes24.com/NYes24//LOUNGE"}${CIMG}' alt="${CTITLE}" onerror="fnImgError(this);" />
                    {{else}}
                        {{if BIGBANNER.indexOf("http://") != -1 || BIGBANNER.indexOf("https://") != -1}}
                        <img src="${BIGBANNER}" alt="${CTITLE}" onerror="fnImgError(this);" />
                        {{else}}
                        <img src='${"https://movie-simg.yes24.com/NYes24//LOUNGE"}${BIGBANNER}' alt="${CTITLE}" onerror="fnImgError(this);" />
                        {{/if}}
                    {{/if}}
                    
                </div>
                <div class="mg_info_box">
                    <p class="mg_first">
                        <span>${GROUP_NAME}</span>
                        <span class="date">
                            {{if REG_DT.length > 10 }}
                            ${REG_DT.substring(0,4)}.${REG_DT.substring(5,7)}.${REG_DT.substring(8,10)}
                            {{else}}
                            ${REG_DT}
                            {{/if}}
                        </span>
                    </p>
                    <p class="mg_de_txt dot_st">${CTITLE}</p>
                </div>
            </a>
        </div>
    </script>

 
            </div>
        </div>
    </div>
    <!-- //매거진 영역 -->


                
                <!-- SNS -->
                <div class="layer_popup_container" style="z-index:9000;">
                    <div class="layer_area layer_small" id="shareSNS" style="display:none;">
                        <button type="button" class="btn_x_small eve_lyaer_close" onclick="fnShareClose();">레이어 닫기</button>
                        <div class="layer_header">
                            <p class="title">공유하기</p>
                        </div>
                        <div class="layer_cont">
                            <div class="share_sns">
                                <div class="sns_facebook" onclick="fnFacebookSend();">
                                    <span class="tit">페이스북</span>
                                </div>
                                <div class="sns_twitter" onclick="fnTwitterSend();">
                                    <span class="tit">트위터</span>
                                </div>
                            </div>
                            <div class="inp_wall_box"><input type="text" id="txtPageUrl" value="" class="inp_wall"><button type="button" onclick="fnCopyUrl();">URL복사</button></div>
                        </div>
                    </div>
                </div>
            </div>

<jsp:include page="../include/footer.jsp"></jsp:include>

    <script src="/Scripts/vm/mgzViewModel.js"></script>
    <script type="text/javascript">
        var _pageNo = 2;
        var _pageSize = 9;
        var _magazineViewModel = new magazineViewModel();
        var _groupCategory = "ALL";
        var _groupCode = "ALL";
        var _loginYN = "N";
        var _retUrl = "";

        function fnMore() {
            fnGetMagazineList();
        }

        function fnPollResult(ty, eid) {
            if (ty == "") {
                if (_isLogin) {
                    location.href = "/Magazine/Poll?eventId=" + eid;
                }
                else {
                    alert("로그인 후 이용해주세요.");
                    location.href = _retUrl;
                }
            }
            else {
                location.href = "/Magazine/PollResult?eventId=" + eid + "&viewNo=";
            }
        }

        function fnGetMagazineList() {
            _magazineViewModel.getMagazineList(_groupCategory, _groupCode, _pageNo, _pageSize, function (data) {
                if (data.ResCd == '00') {
                    var dtLen = data.ResData.Table.length;
                    if (dtLen < _pageSize) {
                        $("#btnMoreArea").hide();
                    }
                    
                    if (dtLen <= 0) {
                        alert('더 이상 내역이 없습니다.');
                        return;
                    }
                    var element = document.getElementById('magazineList');
                    if ($(element).length == 0 || $('#MagazingTemplate').length == 0) return;

                    if (_pageNo == 1) {
                        $(element).empty();
                    }
                    $("#MagazingTemplate").tmpl(data.ResData.Table).appendTo($(element));
                    _pageNo = _pageNo + 1;
                }
                else {
                    $("#btnMoreArea").hide();
                    alert('더 이상 내역이 없습니다.');
                }
            });
        }

        function fnChangeMagazineList(gCategory) {
            if (_groupCategory == gCategory) {
                return;
            }
            else {
                $(".tab_menu02").children("li").each(function (e) {
                    if ($(this).hasClass("active")) {
                        $(this).removeClass("active");
                    }
                })
                var _this = event.target;
                $(_this).parent().addClass("active");
                _pageNo = 1;
                _groupCategory = gCategory;
                fnGetMagazineList();
            }
        }

        function fnThisWeekPoll() {
            _magazineViewModel.getNewPollList(function (data) {
                if (data.ResCd == '00') {
                    if (data.ResData.Table.length <= 0) {
                        return;
                    }
                    var element = document.getElementById('thisWeekPollList');
                    $("#thisWeekPollTemplate").tmpl(data.ResData.Table).appendTo($(element));
                }
                else {
                    $("#thisWeekPollList").hide();
                    $("#thisWeekPollTitle").hide();
                    $("#thisWeekPollArea").hide();
                }
            });
        }

        $(function () {
            _retUrl = "https://www.yes24.com/Templates/FTLogin.aspx?ReturnURL=https://movie.yes24.com/Magazine/Index";
            // 이벤트 상단 배너슬라이드
            $('.magazine_slider').on('init', function (event, slick) {
                $('.magazine_slider').find('.slick-dots').after('<div class="bx-play-box"><button type="button" class="btn_play active"></button></div>');
            });
            $('.magazine_slider').slick({
                fade: true,
                dots: true,
                infinite: true, // 20191118  옵션추가
                autoplay: true, // 20191118  옵션추가
                autoplaySpeed: 5000, // 20191118  옵션추가
                pauseOnDotsHover: false,// 20191118  옵션추가
            });
            $('.magazine_slider .btn_play').on('click', function () {
                if ($(this).hasClass('active')) {
                    $(this).removeClass('active');
                    $('.magazine_slider').slick('slickPause')
                    .slick('slickSetOption', 'pauseOnDotsHover', false)
                    .slick('slickSetOption', 'autoplay', false);
                } else {
                    $(this).addClass('active');
                    $('.magazine_slider')
                    .slick('slickPlay')
                    .slick('slickSetOption', 'pauseOnDotsHover', true)
                    .slick('slickSetOption', 'autoplay', true);
                }
            });

            $(".magazine_slide").on('click', function (e) {
                location.href = "/Magazine/Detail?contentsId=" + $(this).attr("data-cid");
            });
        });

        _groupCategory = "ALL";
        fnThisWeekPoll();       
    </script>

    </div>
</body>

<!-- 검색 자동완성 템플릿-->
<script id="searchAutoResultTemplate" type="text/x-jquery-tmpl">
    <li><a href="javascript:;" onclick="fnGoSearch('${TITLE}');">${TITLE}</a></li>
</script>


<script type="text/javascript" src="/Scripts/wlo.js" + 20200728001></script>
<script type="text/javascript">

    //전사 로깅수집
    //<!-- WISELOG ONLINE TRACKING SCRIPT CODE START -->
    //<!-- DO NOT MODIFY THIS SCRIPT CODE. -->
    //<!-- COPYRIGHT (C) NETHRU INC. ALL RIGHTS RESERVED. -->
    if('/Magazine/Index' == '/MovieInfo/Index'){
        //모든 ajax 호출 종료되었을때
        $(document).ajaxStop(function () {
            (function() {
                var nl = document.createElement('script'); nl.type = 'text/javascript';
                nl.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'movie.yes24.com/Scripts/wlo.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(nl, s);
                var done = false;
                nl.onload = nl.onreadystatechange = function() {
                    if (!done && (!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) {
                        done = true;
                        _n_sid = "08070200045";
                        _n_uid_cookie = "Mallinmall_CKMI";
                        _n_info1_cookie = "PID";

                        if ('/Magazine/Index' == "/MovieInfo/Index"){
                            _n_p1=$('#movieTitle').text(); //영화제목 전달
                            //console.log("영화제목 전달 : " + _n_p1);
                        }
                        //console.log("페이지 : " + '/Magazine/Index ' + "ajax 로드 후 n logging 호출 ");
                        n_logging();
                        nl.onload = nl.onreadystatechange = null;
                    }
                }
            })();
        }) //ajaxstop

    }else{

        window.addEventListener('DOMContentLoaded',function(){
                (function() {
                    var nl = document.createElement('script'); nl.type = 'text/javascript';
                    nl.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'movie.yes24.com/Scripts/wlo.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(nl, s);
                    var done = false;
                    nl.onload = nl.onreadystatechange = function() {
                        if (!done && (!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) {
                            done = true;
                            _n_sid = "08070200045";
                            _n_uid_cookie = "Mallinmall_CKMI";
                            _n_info1_cookie = "PID";

                            if ('/Magazine/Index' == "/Event/EventDetail"){
                                _n_p1=''; //이벤트명칭 전달
                                //console.log("이벤트 명칭 전달 : " + _n_p1);
                            }
                            //console.log("페이지 : " + '/Magazine/Index ' + "콘텐츠 로드 후 n logging 호출 ");
                            n_logging();
                            nl.onload = nl.onreadystatechange = null;
                        }
                    }
                })();
        })

    }
    //<!-- WISELOG ONLINE TRACKING SCRIPT CODE END -->
</script>
   

<script type="text/javascript">
    var _index = 0;
    var _isLogin = false;
    var _saleProvider = {"BOOK_FEE":500,"P_ID":"Y24","SP_ID":"Y24"};

    function gnbSchViewModel() {
        var self = this;
        var apiUrl = 'api/SearchApi';
        self.GetSearchList = function (sVal, callback) {
            var param = 'sVal=' + sVal+"&sType=GNB";
            //var proxy = JWLibrary.Proxy(apiUrl, 'GetMovieSearchList', param);
            //proxy.WebMethod('GET', null, callback, null, true);

            var proxy = JWLibrary.ProxyXhr(apiUrl, 'GetMovieSearchList', param);
            if (proxy.xhrChk && proxy.xhrChk.readyState != 0) {
                proxy.xhrChk.abort();
                proxy.WebMethod('GET', null, callback, null, true);
            }
            else {
                proxy.WebMethod('GET', null, callback, null, true);
            }
        }
    }
    var _gnbSchVM = new gnbSchViewModel();
    function searchAJX(sVal){
        if(sVal.length > 0){
            _gnbSchVM.GetSearchList(sVal, function(data){
                if (data.ResCd == '00') {
                    var element = document.getElementById('searchAutoResult');
                    $(element).empty();
                    if (typeof data.ResData.movieTable == "undefined" || data.ResData.movieTable.length <= 0) {
                        return;
                    }
                    $("#searchAutoResultTemplate").tmpl(data.ResData.movieTable).appendTo($(element));
                }
            });
        }
        else {
            $("#searchAutoResult").empty();
        }
    }
    function fnClearSch(){
        $("#txtSearchVal").val("");
        $("#searchAutoResult").empty();
    }
    function fnSchSubmit(){
        var schVal = $("#txtSearchVal").val();
        if(schVal == ''){
            alert('검색어를 입력해 주세요.');
            $("#txtSearchVal").focus();
            return;
        }else{
            //frmSearchSubmit();
            location.href="/Search/Index?sVal="+schVal;
        }
    }

    function fnGoSearch(sVal){
        location.href="/Search/Index?sVal="+encodeURI(sVal);
    }

    function fnLoading(t){
        if(t=="On"){
            $("#loading").show();
        }
        else{
            $("#loading").hide();
        }
    }

    function fnShareSNS() {
        $("#shareSNS").show();
        $("#shareSNS").parent().addClass("active");
    }

    function fnShareClose() {
        var obj = event.target;
        $(obj).parent().hide();
        $(obj).parent().parent().removeClass("active");
    }

    function fnFacebookSend() {
        window.open("http://www.facebook.com/sharer.php?u=" + this.location);
    }

    function fnCopyUrl() {
        var copyText = document.getElementById("txtPageUrl");
        copyText.select();
        document.execCommand("Copy");
        alert("url이 복사되었습니다.");
    }

    function fnTwitterSend() {
        var popupWidth = 600;
        var popupHeight = 900;
        // 스크린의 크기
        var screenWidth = screen.availWidth;
        var screenHeight = screen.availHeight;
        // 열 창의 포지션(Center)
        var x = 0; //(screenWidth - popupWidth) / 2;
        var y = 0; //(screenHeight - popupHeight) / 2;
        var title = $('meta[property="og:title"]').attr('content');

        window.open("http://twitter.com/intent/tweet?txt=" + title + "&url=" + this.location, 'twitter', "height=" + popupWidth + ",width=" + popupHeight + ",left=" + x + ",top=" + y + ",location=1,status=1,scrollbars=1,menubar=1,toolbar=1,directories=1,resizable=1");
    }

    var uId = '0';
    if (uId != '' && uId != '0') {
        _isLogin = true;
    }else{
        _isLogin = false;
    }

    $(document).ready(function () {

        var pathname = window.location.pathname;

        fnLoading("Off");
        $("#payloading").hide();

        if (pathname != '/' && pathname != '/Main/Index') {
            $('.container').each(function (index) {
                $(this).attr('class', 'container');
            });
        }

        // 영화상세, 필모그래피 상세 탑 메뉴부분 배경 감추기
        //if((pathname == '/MovieInfo/Index')  || (pathname == '/MovieInfo/DetailStepInfo') )
        if(pathname == '/MovieInfo/Index')
        {
            $('.container').each(function (index) {
                $('.container').addClass("none_pt");
            });
        }

        $("#txtSearchVal").keyup(function(event) {
            TxtSearchKeyUp(event);
        });

        function TxtSearchKeyUp(event) {
            var schVal = $("#txtSearchVal").val();
            if (event.keyCode == 13) {
                if(schVal == ''){
                    alert('검색어를 입력해 주세요.');
                    $("#txtSearchVal").focus();
                    return;
                }else{
                    location.href="/Search/Index?sVal="+schVal;
                }
            }else{
                if(schVal == '' || schVal.length == 0 ){
                    $("#searchAutoResult").empty();
                }
                else{
                searchAJX(schVal);
            }
        }
        }

        var topBannerYN = $.cookie('topBannerYN');
        if (topBannerYN != 'N') {
            $('#topBanner').attr('class', 'top_banner inner on');
        }

        

        

        

        $('.btn_tb_close').on('click', function() {
            $.cookie('topBannerYN', 'N', {
                expires: 1,
                path: '/'
            });
        });

        $.cookie('lastUrl', location.href, {expires: 1,path: '/'});

        //example1
        //if (navigator.geolocation) {
        //    try {
        //        navigator.geolocation.getCurrentPosition(function(position){
        //            var lat  = position.coords.latitude;
        //            var long = position.coords.longitude;
        //            $.cookie('location', lat +','+ long);
        //        }, function(error) {
        //            console.log(error);
        //        }, {
        //            enableHighAccuracy: false,
        //            maximumAge: 0,
        //            timeout: Infinity
        //        });
        //    }
        //    catch(error) {
        //        console.log(error);

        //    }
        //}else {
        //    console.log('GPS를 지원하지 않습니다');
        //}

        
    })
</script>
</html>