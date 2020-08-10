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
       
            <!-- 배너 활성  on 클래스 추가 삽입으로 관리 -->
                    <div class="top_banner inner off" id="topBanner">
                        <div class="img_area" style="background-color:#EC615A">
                            <a href="https://movie.yes24.com/Event/EventDetail?eventId=100362" target="_self">
                                <img id="imgTopBanner" src="https://movie-simg.yes24.com/NYes24//MgrMain//20/07/gnbTop_tevt_163533.jpg" alt="대한극장" />
                            </a>
                        </div>
                        <button type="button" class="btn_tb_close">배너 닫기</button>
                    </div>
<!-- 헤더 -->            

<jsp:include page="../include/header.jsp"></jsp:include>
<!-- 헤더 -->  
       
            <div class="content">
                
<%--             <c:forEach items="${magazine }" var="magazine"> --%>



    <!-- 이벤트 -->
    <div class="magazine_container_area">
        <div class="magazine_cont lay_inner">
            <div class="head_top_title">
                매거진
            </div>
            <c:set var="magazine" value="${magazine }"/>
            <div class="magazine_news_detail">
                <div class="detail_view">
                    <div class="dv_title_area">
                        <p class="dv_tit">${magazine.title }</p>
                        <p class="dv_stit">
                            <span class="date">${magazine.reg_date }</span>
                            <span class="txt_count"><span>추천</span><span class="col_point">${magazine.recomand }</span></span>
                            <span class="txt_count"><span>조회수</span><span class="col_point">${magazine.read_count }</span></span>
                        </p>
                    </div>
                    <div class="dv_txt_cont">
					${magazine.content }
                        </div>
                    <div class="rela_cont">
                        <div class="rela_info_cont">
                           <!--  <div class="tag_cont">
                                <p class="dv_tit">관련영화</p>
                                    <div class="tag_list">
                                        <a href="/MovieInfo/Index?mId=M000121079">#오프 더 메뉴</a>
                                    </div>
                            </div> -->
                            <!-- <div class="renews_cont">
                                <p class="dv_tit">관련기사</p>
                                <ul class="renews_list">
                                            <li><a href="/Magazine/Detail?contentsId=343469&sectionCd=CONATT160">&lt;오프 더 메뉴&gt;  푸드 트립 스틸 공개</a></li>
                                            <li><a href="/Magazine/Detail?contentsId=343381&sectionCd=CONATT160">&lt;오프 더 메뉴&gt;  포스터 2종 공개</a></li>
                                </ul>
                            </div> -->
                        </div>
                        <div class="share_cont">
                            <a href="javascript:;" onclick="fnContentAct(this);" class="st_cycle_bd heart "><span class="txt_count">1</span></a> <!-- active  클래스가 붙으면 heart 아이콘 컬러 적용-->
                            <a href="javascript:;" onclick="fnShareSNS();" class="st_cycle_bd share"></a>
                        </div>
                    </div>
                </div>
            </div>
<%-- </c:forEach> --%>
            <div class="comment_area">
                <p class="mc_title">댓글<span class="s_txt" id="spanReplyCnt">(0)</span></p>
                <div class="my_grade_cont white_box eidit_box">
                    <div class="ag_cont_box ">
                        <div class="ag_cont">
                            <textarea id="txtReply" name="" onkeyup="FNChkByte(this, '600');" placeholder="욕설, 비속어, 타인을 비방하는 문구는 운영자가 임의로 삭제할 수 있습니다."></textarea>
                            <button type="button" class="btn_grade_add" onclick="fnReplyIns('343469','CONATT160','')">등록</button>
                        </div>
                    </div>
                </div>
                



<div class="tab_menu_txt" id="tabMenuDescArea">
    <a href="javascript:;" class="active" onclick="fnChangeReplyList('B');">공감순</a>
    <a href="javascript:;" onclick="fnChangeReplyList('A');">최신순</a>
</div>

<div class="all_grade_cont white_box" id="replyList">
</div>
                <div class="btn_bottom_area" id="btnMordArea">
                    <button type="button" class="btn_defaultB " onclick="fnMore();">더보기</button>
                </div>
            </div>
            <div class="mc_title">오늘의 인기기사</div>
            <div class="magazine_area  col04" id="todayBastNews">
            </div>
        </div>
    </div>
    <!-- //이벤트 영역 -->

    <!-- 댓글 템플릿-->
    <script id="ReplyTemplate" type="text/x-jquery-tmpl">
        <div class="ag_cont_box">
            <div class="ag_cont">
                <p class="ag_text">
                    {{if REPLY_ID == BEST_REPLY_ID && SUP_CNT > 0 }}
                    <span class="ic_best"></span>
                    {{/if}}
                    ${NOTES}
                    
                    {{if BTNX }}
                    <button type="button" class="btn_x_sm" onclick="fnReplyDel('${REPLY_ID}', '${CONTENTS_ID}')"></button>
                    {{/if}}
                </p>
                <p class="ag_writer">
                    <span class="writer">${REG_NM}</span>
                    <span class="date">
                        {{if REG_DT2.length > 10 }}
                        ${REG_DT.substring(0,4)}.${REG_DT.substring(5,7)}.${REG_DT.substring(8,10)}
                        {{else}}
                        ${REG_DT2}
                        {{/if}}
                    </span>
                </p>
                <div class="like_box">
                    <div class="like_type">
                        <button type="button" onclick="fnReplyAct('600', '${REPLY_ID}', '${REG_NO}',this)" class="btn_like">
                            <span class="ic_heart {{if SUP_ID == '' }}active{{/if}}"></span>
                        </button>
                        <p class="like_count" >${SUP_CNT}</p>
                    </div>
                    <div class="like_type">
                        <button type="button" onclick="fnReplyAct('700', '${REPLY_ID}', '${REG_NO}', this)" class="btn_like">
                            <span class="ic_b_heart {{if OOP_ID == '' }}active{{/if}}"></span>
                        </button>
                        <p class="like_count" >${OPP_CNT}</p>
                    </div>
                </div>
            </div>
        </div>
    </script>

    <!-- 오늘 많이 본 기사 템플릿-->
    <script id="todayBestNewsTemplate" type="text/x-jquery-tmpl">
        <div class="mg_box">
            <a href="/Magazine/Detail?contentsId=${CONTENTS_ID}">
                <div class="mg_thumb">
                    <img src="${"https://movie-simg.yes24.com/NYes24//LOUNGE"}${CIMG}" alt="${CTITLE}" />
                </div>
                <div class="mg_info_box">
                    <p class="mg_first"><span>${GROUP_CODE}</span></p>
                    <p class="mg_de_txt dot_st">${CTITLE}</p>
                </div>
            </a>
        </div>
    </script>
                
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
           
        </div>

<jsp:include page="../include/footer.jsp"></jsp:include>


        <script src="/bundles/jquery?version=20200728001"></script>

        <script src="/bundles/knockout?version=20200728001"></script>

        <script src="/bundles/movieyes24js?version=20200728001"></script>


       


        
<link href="https://image.yes24.com/images/chyes24/Content/froala/custom_paragraph_format.css" rel="stylesheet" type="text/css" />
<link href="https://image.yes24.com/images/chyes24/Content/froala/opengraph.css" rel="stylesheet" type="text/css" />
<link href="https://image.yes24.com/images/chyes24/Content/froala/blockquote.css" rel="stylesheet" type="text/css" />
<link href="https://image.yes24.com/images/chyes24/Content/froala/horizrule.css" rel="stylesheet" type="text/css" />


    <link rel="stylesheet" href="/Content/PC/magazine.css">
    <style>
        .layer_popup_container {z-index: 9999 !important;}
    </style>
    <script src="/Scripts/vm/mgzDetailViewModel.js"></script>

    <script type="text/javascript">
        var _pageNo = 1;
        var _pageSize = 5;
        var _tempPageNo = 0;
        var _tempPageSize = 5;
        var _contents_id = "";
        var _section_cd = "";
        var _obj_id = "";
        var _reg_id = "";
        var _sort_type = "B"
        var _reply_id = "";
        var _notes = "";
        var _uId = "";
        var _uNo = "";
        var _loginYN = "N";
        var _title = "";
        var _mobileYN = "N";
        var _retUrl = "";

        var magazineDetailViewModel = new magazineCommunity();
        
        function fnMore() {
            fnGetCommunityReplyList();
        }

        function fnChangeReplyList(oType) {
            if (_sort_type == oType) {
                return;
            }
            else {
                var obj = event.target;
                $(obj).siblings().each(function (e) {
                    $(this).removeClass("active");
                });
                $(obj).addClass("active");
                _sort_type = oType;
                _pageNo = 1;
                fnGetCommunityReplyList();
            }
        }

        function fnReplyDel(reply_id, contents_id) {
            if (confirm("댓글을 삭제하시겠습니까?")) {
                magazineDetailViewModel.setCommunityReplyDel(reply_id, contents_id, function (data) {
                    if (data.ResCd == '00') {
                        alert("댓글이 삭제되었습니다.");
                        _pageNo = 1;
                        fnGetCommunityReplyList();
                    }
                });
            }
        }

        function fnReplyIns(contentsId, sectionCd, objId) {
            var notes = $("#txtReply").val();
            if (_loginYN == "Y") {
                if (notes == "") {
                    alert("댓글을 입력하세요.");
                    $("#txtReply").focus();
                    return;
                }
                magazineDetailViewModel.setCommunityReplyIns(contentsId, sectionCd, objId, notes, function (data) {
                    if (data.ResCd == '00') {
                        if (data.ResData.Table[0].ERRNO != "0") {
                            alert(data.ResData.Table[0].ERRMSG);
                        }
                        else {
                            alert("등록 되었습니다.");
                        }
                        _pageNo = 1;
                        $("#txtReply").val("");
                        fnGetCommunityReplyList();
                    }
                });
            }
            else {
                alert("로그인을 해 주세요.");
                location.href = _retUrl;
                return;
            }
        }

        function fnReplyAct(actCode, replyId, regNo, obj) {
            if (_loginYN == "Y") {
                if (regNo == _uNo) {
                    alert("자신의 글에 공감 / 비공감 하실 수 없습니다.");
                }
                else {
                    magazineDetailViewModel.setCommunityReplyAct(actCode, _contents_id, replyId, _section_cd, _obj_id, function (data) {
                        if (data.ResCd == '00') {
                            if (data.ResData.Table[0].ERRNO != "0") {
                                alert(data.ResData.Table[0].ERRMSG);
                            }
                            else {          
                                var sTag = $(obj).children("span");

                                if ($(sTag).hasClass("active")) {
                                    $(sTag).removeClass("active");
                                }
                                else {
                                    $(sTag).addClass("active");
                                }
                                $(obj).next(".like_count").html(data.ResData.Table[0].CNT);                                
                            }
                        }
                    });
                }
            }
            else {
                alert("로그인을 해 주세요.");
                location.href = _retUrl;
                return;
            }
        }

        function fnContentAct(obj) {
            if (_loginYN == "Y") {
                magazineDetailViewModel.setCommunityActLike("200", _contents_id, _section_cd, function (data) {
                    if (data.ResCd == '00') {
                        if (data.ResData.Table[0].ERRNO != "0") {
                            alert(data.ResData.Table[0].ERRMSG);
                        }
                        else {
                            alert("추천하였습니다.");
                            $(obj).addClass("active");
                            $(obj).children("span").html(data.ResData.Table[0].CNT);
                        }
                    }
                });
            }
            else {
                alert("로그인을 해 주세요.");
                location.href = _retUrl;
                return;
            }
        }

        function fnGetCommunityReplyList() {

            if (_tempPageNo > 0) {
                _pageNo = 1;
                _tempPageSize = _pageSize;
                _pageSize = _tempPageNo * _pageSize;
            }

            magazineDetailViewModel.getCommunityReplyList(_contents_id, _section_cd, _obj_id, _reg_id, _sort_type, _pageNo, _pageSize, function (data) {

                if (data.ResCd == '00') {
                    var len = data.ResData.Table.length;

                    if (len <= 0) {
                        alert('더 이상 내역이 없습니다.');
                        if (_pageNo == 1) {
                            $("#tabMenuDescArea").hide();
                            $("#replyList").append("<div class='ag_cont_box'><div class='ag_cont'><p class='ag_text'>댓글이 없습니다.</p></div></div>");
                            $("#btnMordArea").hide();
                        }
                        return;
                    }

                    if (data.ResData.Table.length == _pageSize) {
                        $("#btnMordArea").show();
                    } else {
                        $("#btnMordArea").hide();
                    }

                    $("#spanReplyCnt").html("(" + data.ResData.Table[0].TOTCNT + ")");

                    var element = document.getElementById('replyList');
                    if ($(element).length == 0 || $('#ReplyTemplate').length == 0) return;

                    if (_pageNo == 1) {
                        $(element).empty();
                    }

                    $("#ReplyTemplate").tmpl(data.ResData.Table).appendTo($(element));

                    if (_tempPageNo > 0) {
                        _pageNo = _tempPageNo;
                        _pageSize = _tempPageSize;
                        _tempPageNo = 0;
                    }
                    _pageNo = _pageNo + 1;

                    if (len < _pageSize) {
                        $("#btnMordArea").hide();
                    }
                }
                else {
                    if (_pageNo == 1) {
                        $("#btnMordArea").hide();

                        $("#tabMenuDescArea").hide();
                        $("#replyList").empty().append("<div class='ag_cont_box'><div class='ag_cont'><p class='ag_text'>댓글이 없습니다.</p></div></div>");

                    } else {
                        alert('더 이상 내역이 없습니다.');
                    }
                }
            });
        }

        function fnMagazineBestReadNewsRankList() {
            magazineDetailViewModel.getMagazineBestReadNewsRankList(function (data) {
                if (data.ResCd == '00') {
                    if (data.ResData.Table.length <= 0) {
                        $("#todayBastNews").append("<div class='ag_cont_box'><div class='ag_cont'><p class='ag_text'>기사가 없습니다.</p></div></div>");
                        return;
                    }
                    var element = document.getElementById('todayBastNews');
                    $("#todayBestNewsTemplate").tmpl(data.ResData.Table).appendTo($(element));

                }
                else {
                    $("#todayBastNews").append("<div class='ag_cont_box'><div class='ag_cont'><p class='ag_text'>기사가 없습니다.</p></div></div>");
                }
            });
        }

        function fnMobileTodayBestNews() {
            var magazineSwiper = new Swiper('.magazine_slider', {
                slidesPerView: '1',
                spaceBetween: 5,
                loop: true,
                on: {
                    init: function () {
                        var tag = '<div class="slide_page"><span class="current_page">' + this.activeIndex + '</span><span class=""> / ' + (this.slides.length - 2) + '</span></div>';
                        $('.magazine_slider').append(tag);
                    },
                },
                breakpointsInverse: true,
                breakpoints: {
                    768: {
                        slidesPerView: 'auto',
                        spaceBetween: 5,
                        centeredSlides: true,
                    }
                }
            });
            magazineSwiper.on('slideChange', function () {
                $('.magazine_slider .slide_page').find('.current_page').text(this.realIndex + 1);
            });

            var toDaySwiper = new Swiper('.today_slider', {
                slidesPerView: 'auto',
                spaceBetween: 10,
                freeMode: true,
                breakpointsInverse: true,
                breakpoints: {
                    768: {
                        slidesPerView: 'auto',
                    }
                }
            });
        }

        $(function () {
            //fnSetHeaderShare("＜오프 더 메뉴＞  푸드 트립 스틸 공개", "https://movie.yes24.com/Magazine/Detail?contentsId=343469&amp;sectionCd=CONATT160", "https://movie-simg.yes24.com/NYes24//LOUNGE/20/08/menu_1_093640.jpg", "YES24영화", "");

            _contents_id = "343469";
            _section_cd = "CONATT160";
            _obj_id = "";
            _reg_id = "";
            _sort_type = "B";
            _uId = "";
            _uNo = "";
            _loginYN = "";
            _title = "＜오프 더 메뉴＞  푸드 트립 스틸 공개";
            _retUrl = "https://www.yes24.com/Templates/FTLogin.aspx?ReturnURL=https://movie.yes24.com/Magazine/Detail?contentsId=343469&amp;sectionCd=CONATT160";
            fnGetCommunityReplyList();
            fnMagazineBestReadNewsRankList();
            $("#txtPageUrl").val(this.location);
        });
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
    if('/Magazine/Detail' == '/MovieInfo/Index'){
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

                        if ('/Magazine/Detail' == "/MovieInfo/Index"){
                            _n_p1=$('#movieTitle').text(); //영화제목 전달
                            //console.log("영화제목 전달 : " + _n_p1);
                        }
                        //console.log("페이지 : " + '/Magazine/Detail ' + "ajax 로드 후 n logging 호출 ");
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

                            if ('/Magazine/Detail' == "/Event/EventDetail"){
                                _n_p1='＜오프 더 메뉴＞  푸드 트립 스틸 공개'; //이벤트명칭 전달
                                //console.log("이벤트 명칭 전달 : " + _n_p1);
                            }
                            //console.log("페이지 : " + '/Magazine/Detail ' + "콘텐츠 로드 후 n logging 호출 ");
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


        
    })
</script>
</html>
