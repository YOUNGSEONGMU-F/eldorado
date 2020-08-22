<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO59</title>
<link href="${pageContext.request.contextPath }/resources/css/index.css" rel="stylesheet" type="text/css" />
<jsp:include page="../include/header.jsp"/>

</head>
<body>
<!-- 영화 -->

		<c:set var="imgArr" value="${fn:split(about_movie.image,';') }"/>
<%-- 				<img src="<c:out value="${imgArr[1] }"/>" width='400'> --%>
				
    <div class="movie_area">
        <div class="detail_banner_area" id="movieDetail">
		 <div class="bg_blur_area" style="display: block;">
		 <!-- 선택된 이미지 블러  -->
		  <svg class="svg_blur" xmlns="http://www.w3.org/2000/svg" version="1.1">
		   <filter id="svgFilter" x="-0%" y="-0%">
		    <feGaussianBlur id="svgGaussBlur" in="SourceGraphic" stdDeviation="4">
		     
		    </feGaussianBlur>
		    <feComponentTransfer><feFuncA type="discrete" tableValues="1 1"></feFuncA>
		    </feComponentTransfer>
		   </filter>
		   <image xlink:href="${imgArr[1] }"
		   filter="url(#svgFilter)" preserveAspectRatio="xMidYMin slice" width="100%" height="100%" x="0" y="0"></image>
		  </svg>
		 </div> <!-- 블러 끝 -->
		 <div class="detail_movie_info">
		  <div class="img_thumb">
				<img src="<c:out value="${imgArr[0] }"/>" width='400'>
<!-- 		   <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M14/M14/M000071414_132337.jpg" id="poster"> -->
		  </div>
		  <div class="dm_info_txt"> 
<%-- 		  <p>${about_movie }</p> --%>
		   <p id="movieTitle" class="dmb_tit">${about_movie.title }</p>
		   <p class="dmb_eng_tit"> </p>
		   <p class="dmb_txt"> 
		    <span>예매율 ${about_movie.advance_rate }% </span>
		    <span>평점  ${about_movie.user_rating } </span>
		   </p>
		   <p class="dmb_txt">
		    <fmt:parseDate value="${about_movie.openDt}" var="openDate" pattern="yyyyMMdd"/>
			<fmt:formatDate var="openDt" value="${openDate}" pattern="yyyy.MM.dd"/>
		    <span><c:out value="${openDt}" /> 개봉</span>
<!-- 		    <span>110 분</span> -->
		    <span>
		    <c:if test="${about_movie.grade eq '12' }">${about_movie.grade}세이상 관람가 </c:if>
		    <c:if test="${about_movie.grade eq '15' }">${about_movie.grade}세이상 관람가 </c:if>
		    <c:if test="${about_movie.grade eq '전체' }">${about_movie.grade} 관람가 </c:if>
		    <c:if test="${about_movie.grade eq '청불' }">청소년 관람불가 </c:if> 
		    </span>
		    <span>${about_movie.genre }</span>
		    <span>${about_movie.repNationNm }</span>
		   </p>
		   <div class="btn_area">
		    <button type="button" class="btn_defaultB btn_line_whilte" id="btnReserve" onclick="javascript: fnTicket('M000071414');"
		    style="background: none;">
		    예매
		    </button>
		    <button type="button" class="btn_shareW" id="btnShare" onclick="javascript: fnShareSNS();"></button>
		   </div>
		  </div>
		 </div>
		 </div><!-- 영호ㅏ메인종료 -->
        <div class="movie_cont lay_inner">
            <div class="detail_cont" id="test">
                <!-- 예매분석 -->
                
    <div class="graph_area" id="DetailAnalysis">
        <div class="mc_title al_c">
            예매분석
            <div class="tooltip_area ">
                <!--active 클래스 추가시 활성-->
                <button type="button" class="btn_tooltip eve_tooltip"></button>
                <div class="tooltip_cont">
                    <button type="button" class="btn_x_small eve_tool_close"></button>
                    <p class="tooltip_txt">
                        연령별/성별 예매율은 자사 데이터를 기반으로 합니다.<br />
                        일일 관객수, 누적 관객수, 누적 매출액은 영진위 통합 전산망 데이터를 기반으로 합니다.
                    </p>
                </div>
            </div>
        </div>

        <!-- 예매분석 -->
        <!-- //예매분석-->
        <div class="graph_cont eve_graph_parent">
            <!--라인 그래프 없는 영역-->
            <div class="graph_gender ">
                <p class="gr_tit">연령별/성별 예매율</p>
                <div class="graph_grid">
                    
                    
                    <div class="graph_bar" id="ageRate">
                        <div class="bar_draw_cont">
                            <div class="bar_label">10대</div>
                            <div class="bar_draw" id="bar_draw1">
                                <div class="bar_percent" id="per1"></div>
                                <div class="graph_tool" id="gt1">0%</div>
                            </div>
                        </div>
                        <div class="bar_draw_cont">
                            <div class="bar_label">20대</div>
                            <div class="bar_draw" id="bar_draw2">
                                <div class="bar_percent" id="per2"></div>
                                <div class="graph_tool" id="gt2">0%</div>
                            </div>
                        </div>
                        <div class="bar_draw_cont">
                            <div class="bar_label">30대</div>
                            <div class="bar_draw" id="bar_draw3">
                                <div class="bar_percent" id="per3"></div>
                                <div class="graph_tool" id="gt3">0%</div>
                            </div>
                        </div>
                        <div class="bar_draw_cont">
                            <div class="bar_label">40대</div>
                            <div class="bar_draw" id="bar_draw4">
                                <div class="bar_percent" id="per4"></div>
                                <div class="graph_tool" id="gt4">0%</div>
                            </div>
                        </div>
                        <div class="bar_draw_cont">
                            <div class="bar_label">50대</div>
                            <div class="bar_draw" id="bar_draw5">
                                <div class="bar_percent" id="per5"></div>
                                <div class="graph_tool" id="gt5">0%</div>
                            </div>
                        </div>
                    </div>

                    
                    
                    <div class="graph_sex" id="genderRate"></div>
                </div>
            </div>

            <div class="graph_sum graph_img02" id="dayAdn">
                <p class="gr_tit">일일 관객수</p>
                <div class="graph_view">
                    <p class="gr_txt">0명</p>
                    <p class="gr_txt02">(0월 0일 기준)</p>
                </div>
            </div>

            <div class="graph_sum graph_img02" id="dayAdnCum">
                <p class="gr_tit">누적 관객수</p>
                <div class="graph_grid graph_chart">
                    <iframe class="chartjs-hidden-iframe" tabindex="-1" style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe> <!--차트그래프는 적용 부분은  movie.js "플러그인 그래프 작업" 텍스트 검색으로 찾아보시면됩니다.-->
                    <p class="chart_title" id="chartTitle1">0명</p>
                    <canvas class="" id="adnCumChart" width="190" height="95" style="display: block; width: 190px; height: 95px;"></canvas>
                </div>
            </div>

            <div class="graph_sum  graph_img03" id="daySales">
                <p class="gr_tit">누적 매출액</p>
                <p class="gr_stxt" id="dayCumUnit">(단위:천원)</p>
                <div class="graph_grid graph_chart">
                    <p class="chart_title" id="chartTitle2">0원</p>
                    <canvas class="" id="adnCumSumChart"></canvas>
                </div>
            </div>

            <div class="graph_sum graph_img01" id='totalPlayTime'>
                <!-- 그래프 배경은 graph_img01 ~ graph_img03 순서-->
                <p class="gr_tit">총 상영횟수</p>
                <div class="graph_view ">
                    <p class="gr_txt" id="totalCnt">0회</p>
                </div>
            </div>
            <div class="graph_sum graph_img02" id='totalAdn'>
                <p class="gr_tit">총 누적 관객수</p>
                <div class="graph_view">
                    <p class="gr_txt" id="totalAdnNum">0명</p>
                    <p class="gr_txt02" id="totalAdnNumDay">(0월 0일 기준)</p>
                </div>
            </div>
            <div class="graph_sum  graph_img03" id='totalSales'>
                <p class="gr_tit">총 누적 매출액</p>
                <p class="gr_stxt" id="dayCumSumUnit">(단위:천원)</p>
                <div class="graph_view">
                    <p class="gr_txt" id="totalSalesAmt"></p>
                    <p class="gr_txt02" id="totalSalesAmtDay">(0월 0일 기준)</p>
                </div>
            </div>
        </div>
        <div class="btn_area">
            <button type="button" class="btn_more_arrow eve_graph_btn"></button>
        </div>
    </div>
    <div id="dvPostion"></div>



                <!-- //예매분석-->
                
                <div class="detaile_tab_area" id="movieInfoTabArea">

                    <ul class="tab_menu02">
                        <li id="tabMenuIndex"><a href="javascript:fnShowMenuMovieDetail('DIndex');">기본정보</a></li>
                        <li id="tabMenuStep"><a href="javascript:fnShowMenuMovieDetail('Step');">배우·제작진</a></li>
                        <li id="tabMenuVod"><a href="javascript:fnShowMenuMovieDetail('Vod');">동영상</a></li>
                        <li id="tabMenuPhoto"><a href="javascript:fnShowMenuMovieDetail('Photo');">포토</a></li>
                        <li id="tabMenuNews"><a href="javascript:fnShowMenuMovieDetail('News');">관련기사</a></li>
                        <li id="tabMenuGrade"><a href="javascript:fnShowMenuMovieDetail('Grade');">평점</a></li>
                    </ul>

                    

    <div class="tab_container" id="DetailIndex">
        <!--평점 작성 유의사항, active 클래스로 팝업 활성/비활성 dmm부분-->
        <div class="layer_popup_container" id="IndexWriteWarring" style="z-index:9000;">
            <div class="layer_area layer_large">
                <button type="button" class="btn_x_large eve_lyaer_close" onclick="fnIndxWarringClose();">레이어 닫기</button>
                <div class="layer_header">
                    <p class="title">평점 작성 유의사항</p>
                </div>
                <div class="layer_cont">
                    <div class="lay_txt_box">
                        <p class="lay_txt">건전한 평점 및 양질의 평점을 위해 회원 여러분 모두 아래의 운영원칙을 준수하여 주시기 바랍니다. <br>운영원칙에 어긋나는 게시물로 판단되는 글은 적발 시, 경고 없이 삭제조치 될 수 있습니다.</p>
                    </div>
                    <div class="lay_txt_box">
                        <p class="lay_txt">- 10자 이상 작성시 등록 가능 합니다.</p>
                        <p class="lay_txt">- 스포일러성 리뷰는 반드시 표시해 주세요.</p>
                        <p class="lay_txt">- 의미를 알 수 없는 내용, 광고, 반복적인 글, 저작권상 문제의 소지가 있는 내용은 올리지 말아주세요.</p>
                        <p class="lay_txt">- 다른 회원들의 평점/의견을 존중해주세요.</p>
                    </div>
                    <div class="lay_txt_box">
                        <p class="lay_txt">이 외에도 운영 목적과 취지에 맞지 않는 내용은 담당자에 의해 리뷰가 삭제 처리 될 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <!--평점 작성 유의사항-->

        <div class="de_default_area">
            <!--시놉시스-->
            <p class="mc_title" id="IndexSynopsisTitle">시놉시스</p>
            <p class="syn_txt" id="synopsis">
            ${about_movie.info }
            </p>
            
            <!-- //시놉시스-->
            <!-- 제작정보-->
            <p class="mc_title" id="IndexStepTitle">제작정보</p>
            <p class="def_txt" id="inCome"></p>
            <p class="def_txt" id="ration"></p>
            <p class="def_txt" id="hPage"></p>
            <!-- //제작정보-->
            <!-- 배우 제작진-->
            <p class="mc_title" id="IndexStaffTitle">배우·제작진<a href="#" class="btn_more" onclick="javascript: fnShowMenuMovieDetail('Step');"></a></p>
            <div class="act_area">
                <div class="detail_act_slider" id="indexStaff"></div>
            </div>
            <!-- //배우 제작진-->
            <!-- 동영상-->
            <p class="mc_title" id="indexVodTitle">동영상<!-- <a href="#" class="btn_more" onclick="javascript: fnShowMenuMovieDetail('Vod');"></a> --></p>
            <div class="detail_vod_area" id="indexVodContents" >
	        <video src='${about_movie.video }' width='1000' controls >
			</video>
                <div class="detail_vod_slider" id="indexVod"></div>
            </div>
            <!-- //동영상-->

            
            <!-- 포토-->
            <p class="mc_title" id="indexPhotoTitle">포토<a href="#" class="btn_more" onclick="javascript: fnShowMenuMovieDetail('Photo');"></a></p>
            <div class="detail_pohto_area" id="indexPhotoContents">
                <!--큰 슬라이드 영역-->
                <div class="detail_pohto_slider" id="IndexPhotoBig"></div>
                <!--// 큰 슬라이드 영역-->
                <!--네비타입 슬라이드 영역-->
                <div class="detail_pohto_nav_slider" id="IndexPhotoNav"></div>
                <!--//네비타입 슬라이드 영역-->
            </div>
            <!-- //포토-->
            <!-- 관련기사-->
            <p class="mc_title" id="indexNewsTitle">관련기사<a href="#" class="btn_more" onclick="javascript: fnShowMenuMovieDetail('News');"></a></p>
            <div class="detail_news_area" id="indexNewsContents"></div>
            <!-- // 관련기사-->
            <!--  평점-->
            <p class="mc_title" id="indexGradeTitle">평점<a href="#" class="btn_more" onclick="javascript: fnShowMenuMovieDetail('Grade');"></a></p>
            <div class="comment_area" id="indexGradeWrite">

                <div class="my_grade_cont white_box eidit_box" id="IndexGradeOutBox" style="display:block;">
                    <div class="ag_cont_box">
                        <div class="ag_top">
                            <span class="agt_tit">나의 평점</span>
                            <div class="star_area big eve_star_parent" id="IndexMyGradeA">
                                <span class="ic_star big eve_star"><span class="bg_star"></span></span>
                                <span class="ic_star big eve_star"><span class="bg_star"></span></span>
                                <span class="ic_star big eve_star"><span class="bg_star"></span></span>
                                <span class="ic_star big eve_star"><span class="bg_star"></span></span>
                                <span class="ic_star big eve_star"><span class="bg_star"></span></span>
                                <span class="star_num" id="IndexMyGradeStarNum">0</span>
                            </div>
                            <span class="agt_tit">종합 평점</span>
                            <div class="star_area" id="IndextotalGradeA"></div>
                            <span class="chkbx_area chk_small" id="spIndexChk" onclick="javascript: fnIndexSpoChk('IndexChkSpoilerA');">
                                <input type="checkbox" class="chk_st chk_left" id="IndexChkSpoilerA"><label for="efe"><span class="ck_txt" id="IndexSpoilerTxt">스포일러</span></label>
                            </span>
                            <a href="#" class="" onclick="javascript: fnIndexWarring();"><span>작성시 유의사항</span></a>
                        </div>

                        <div class="ag_cont">
                            <textarea name="" id="IndexGradeTxt" placeholder="별점을 먼저 선택하신 후, 감상을 남겨주세요.&#10;욕설, 비속어, 타인을 비방하는 문구를 사용하시면 운영자가 임의로 삭제할 수 있으며 스포일러가 포함된 경우 체크해주세요.&#10;최대 1,500자 작성가능(공백포함)"></textarea>
                            <button type="button" class="btn_grade_add" id="btnReg" onclick="javascript: fnIndexWrite();">등록</button>
                        </div>
                    </div>
                </div>


                <div class="my_grade_cont white_box" id="IndexGradeInBox" style="display:none;">
                    <div class="ag_cont_box">
                        <div class="ag_top">
                            <span class="agt_tit">나의 평점</span>
                            <div class="star_area" id="indexMyGradeB"></div>
                            <span class="agt_tit">종합 평점</span>
                            <div class="star_area" id="IndexTotalGradeB">
                            </div>
                            <span class="chkbx_area chk_small">
                                <input type="checkbox" class="chk_st chk_left" id="IndexChkSpoilerB"><label for="efe"><span class="ck_txt" id="IndexSpoilerTxt">스포일러</span></label>
                            </span> 
                            <!-- 삭제버튼 -->
                        </div>
                        <div class="ag_cont">
                            <p class="ag_text" id="IndexGradeGradeNotes"></p>
                            <p class="ag_writer"><span class="date" id="IndexMyRegDate"></span></p>
                            <div class="like_box" id="IndexLikeBoxB">
                                <div class="like_type">
                                    <button type="button" class="btn_like"><span class="ic_heart active"></span></button> <!--ic_heart에 active 클래스 제거시 디폴트로 변경-->
                                    <p class="like_count" id="IndexUpVoteB"></p>
                                </div>
                                <div class="like_type">
                                    <button type="button" class="btn_like"><span class="ic_b_heart active"></span></button><!--ic__b_heart에 active 클래스 제거시 디폴트로 변경-->
                                    <p class="like_count" id="IndexDownVoteB"></p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="movie_grade_area" id="indexGradeList">
                    <div class="tab_menu_txt">
                        <a href="#" class="active" id="IndexASupCnt" onclick="javascript: fnIndexSupCnt();">공감순</a>
                        <a href="#" id="IndexARegDate" onclick="javascript: fnIndexRegDate();">최신순</a>
                    </div>
                    <div class="all_grade_cont white_box" id="index_all_grade_cont_white_box"></div>

                </div>
                <!-- // 평점-->
            </div>
        </div>
    </div>

            </div>

            </div>
        </div>
    </div>
    <!-- //영화 영역 -->
</body>
   <script src="/Scripts/vm/movieDetailViewModel.js"></script>
    <script src="/Scripts/vm/movieDetailIndexViewModel.js"></script>
    <script src="/Scripts/vm/movieStaffViewModel.js"></script>
    <script src="/Scripts/vm/movieNewsViewModel.js"></script>
    <script src="/Scripts/vm/moviePhotoViewModel.js"></script>
    <script src="/Scripts/vm/movieVodViewModel.js"></script>
    <script src="/Scripts/vm/movieAnalysisViewModel.js"></script>
    <script src="/Scripts/vm/movieGradeViewModel.js"></script>


    <script type="text/javascript">
        var tab = "";
        var _movieDetailViewModel = new movieDetailViewModel();

        var _tabMenu = [
            {
                'name': 'DIndex',
                'tabName': 'tabMenuIndex',
                'partialName': 'DetailIndex',
            },
            {
                'name': 'Step',
                'tabName': 'tabMenuStep',
                'partialName': 'DetailStep',
            },
            {
                'name': 'Vod',
                'tabName': 'tabMenuVod',
                'partialName': 'DetailVod',
            },
            {
                'name': 'Photo',
                'tabName': 'tabMenuPhoto',
                'partialName': 'DetailPhoto',
            },
            {
                'name': 'News',
                'tabName': 'tabMenuNews',
                'partialName': 'DetailNews',
            },
            {
                'name': 'Grade',
                'tabName': 'tabMenuGrade',
                'partialName': 'DetailGrade',
            },
        ];
        var playVodPostion = "";
        var playVodNm = "";

        var vodSlickChk = "";
        var photoSlickChk = "";



        var uId = '0';
        var userId = '';
        var isAdmin = 'False';
        var isFirstEnter = "Y";

        //var isSynopsisFisished = false;
        //var isVodFisished = false;
        //var isPhotoFisished = false;

        $(document).ready(function () {
            var tab = 'DIndex';
            var mId = 'M000077628';

            $("#txtPageUrl").val(this.location);

            fnMovieDetial(mId);

            fnShowMenuMovieDetail(tab);

            //fnReserve(mId);                 // 예매하기 버튼 체크
            //fnEvent(mId);     // 시사회 버튼 체크
            //fnEvent(mId, 'EVTTYPE200');     // 이벤트 버튼 체크

        });

        //function fnCheckingFinished() {
        //    if (isPhotoFisished && isVodFisished)
        //    {
        //        setTimeout(function () {
        //            document.getElementById('dvPostion').scrollIntoView();
        //            var top = $('#dvPostion').offset().top;
        //            $('html, body').animate({ scrollTop: top - 30 }, 500);
        //            isFirstEnter = "N";
        //        }, 1000)
        //        //document.getElementById('dvPostion').scrollIntoView();
        //        //var top = $('#dvPostion').offset().top;
        //        //$('html, body').animate({ scrollTop: top - 30 }, 500);
        //    }
        //}

        function fnShowMenuMovieDetail(name) {
  

            var tab = 'DIndex';
            var _mid = 'M000077628';
            var _tabStepPageNo = 1;
            var _tabStepPageSize = 50;
            var _tabStepMoreYn = 'N';
            var _PhotoTempType = "";
            var _PhotoTempPageNo = 1;
            var _PhotoTempPageSize = 8;
            var _iStepPageNo = 1;
            var _iStepPageSize = 8;

            var _iGradePageNo = 1;
            var _iGradePageSize = 3;
            var _iTempVodNm = "";
            var _iGradeStaus = 'N';     // 등록된 공감 체크
            var _iGradeOrderby = '';
            var _iGradeDelete = '';
            var _uId = uId;
            var _tempPageNo = 1;
            var _tempPageSize = 20;

            var _PhotoTempType = "";
            var _PhotoTempPageNo = 1;
            var _PhotoTempPageSize = 8;
            var _pageNo = 1;
            var _pageSize = 50;
            var _gradePageNo = 1;
            var _gradePageSize = 5;
            var _gradeMoreYn = 'N';
            var _gradeStaus = 'N';     // 등록된 공감 체크
            var _gradeOrderby = "";
            var _gradeDelete = "";

            if (uId != '') {
                _isLogin = true;
            }

            if (isAdmin == 'True') {
                _isAdmin = true;
            }
  
         
            _tabMenu.forEach(function (item, index, array) {

                if (item.name == name) {
                    $('#' + item.tabName).attr('class', 'active');
                    $('#' + item.partialName).show();

                }
                else {
                    $('#' + item.tabName).attr('class', '');
                    $('#' + item.partialName).hide();
                }
            });
            
            if (name == "DIndex") {
               
                    fnSynopsis(_mId);// 시놉시스, 제작정보
                    fnIndexStep(_mid, 'N', _iStepPageNo, _iStepPageSize);
                    fnIndexVod(_mid, 'V');   // VOD
                    fnIndexPhoto(_mId, 'Y');
                    fnIndexPhoto(_mId, 'N');
                    fnIndexNews(_mId, 'N', '1', '3');
                    fnIndexMyGradeList(_mId, _iGradePageNo, _iGradePageSize, _iGradeOrderby, _iGradeDelete);
                    fnIndexGradeList(_mId, _iGradePageNo, _iGradePageSize, _iGradeOrderby, _iGradeDelete);
            }
           else if (name == "Step") {
                fnStep(_mid, 'N', _tabStepPageNo, _tabStepPageSize);
            } else if (name == "Vod") {
                fnVodList(_mid, 'V');   // VOD
            } else if (name == "Photo") {
                if (maLenght > 20) {
                    setTimeout(function () {
                        masonryApply();
                    }, 3000);
                } else {
                    setTimeout(function () {
                        masonryApply();
                    }, 3000);
                }

              //fnSubPhoto(_mId, 'N');

                //setTimeout(function () {

                //}, 1000);
                // 화면 변경으로 이해 사용여부 불분명하여 우선 주석처리
                //if (photoSlickChk == "") {
                //    // 상세- 포토탭 슬라이드
                //    $('.group_slider').on('init', function (event, slick) {
                //        var len = slick.slideCount;
                //        var tag = '<div class="slide_page"><span class="page_current" id="photoBigCurrent" >1</span><span class="page_all" id="photoBigAll">/' + len + '</span></div>'
                //        $(this).append(tag);
                //    });
                //    $('.group_slider').slick({
                //        fade: true,
                //        draggable: false
                //    });
                //    $('.group_slider').on('beforeChange', function (event, slick, currentSlide, nextSlide) {
                //        var idx = nextSlide + 1;

                //        $(this).find('.page_current').text(idx);
                //        $('.group_thumb_slider .g_thumb_img').removeClass('active');
                //        $('.group_thumb_slider .g_thumb_img[data-idx ="' + idx + '"]').addClass('active');
                //        var moveSlide = idx / 14.01;
                //        $('.group_thumb_slider').slick('slickGoTo', moveSlide, false);

                //    });

                //    // 상세- 포토탭 슬라이드 - 썸네일
                //    $('.group_thumb_slider').slick({
                //        // adaptiveHeight: true,
                //        draggable: false
                //    });
                //    // 섬네일 이미지 클릭시
                //    $('.group_thumb_slider .g_thumb_img').on('click', function () {
                //        var idx = $(this).data('idx') - 1;
                //        $('.group_slider').slick('slickGoTo', idx, false);
                //    });

                //    photoSlickChk = "on";
                //}
            } else if (name == "News") {
                fnNewsList(_mId, 'N', _pageNo, _pageSize);
            } else if (name =="Grade") {

                fnMovieMyGradeList(_mId, 'N', 1, 1, _gradeOrderby, _gradeDelete);
                fnMovieDetialGradeList(_mId, 'N', _gradePageNo, _gradePageSize, _gradeOrderby, _gradeDelete);

            }

            // 기본정보 페이지에서 Vod가 플레이중 다른 탭을 클릭했을 경우 플레이 중인 동Vod 정지
            if (playVodNm != "") {
                var IndexVod = playVodNm;
                IndexVod.pause();
                IndexVod.load();
            }

            // 동영상 탭에서 플레이 중일 때 다른 탭을 클릭했을 경우 플레이 중인 동Vod 정지
            if (name != "Vod") {
                var tabVid = document.getElementById("tab_vod_video");
                tabVid.pause();
                tabVid.load();
            }



            //if (name == "DIndex" && isFirstEnter != "Y") {
            //    $(".slick-track").each(function (e) {
            //        if ($(this).width() == 0) {
            //            $('.detail_pohto_slider').slick('slickGoTo', 1, false);
            //            $('#indexVod').slick('slickGoTo', 1, false);
            //            //$(this).parent().prev().click();
            //            setTimeout(function () {
            //                $('.detail_pohto_slider').slick('slickGoTo', 0, false);
            //                $('#indexVod').slick('slickGoTo', 0, false);
            //                //$(this).parent().next().click();
            //            }, 500);
            //            return false;
            //        }
            //    });
            //}

            // 기본정보 페이지를 제외한 나머지 탭이동시 탭위치 Top로 이동
            if (name != "DIndex") {
                document.getElementById('dvPostion').scrollIntoView();
                var top = $('#dvPostion').offset().top;
                $('html, body').animate({ scrollTop: top - 40 }, 0);

            } else {
                // 기본정보

                //if (name == "DIndex" && isFirstEnter == "Y") {
                //    $(".slick-track").each(function (e) {
                //        if ($(this).width() == 0) {
                //            $('.detail_pohto_slider').slick('slickGoTo', 1, false);
                //            $('#indexVod').slick('slickGoTo', 1, false);
                //            //$(this).parent().prev().click();
                //            setTimeout(function () {
                //                $('.detail_pohto_slider').slick('slickGoTo', 0, false);
                //                $('#indexVod').slick('slickGoTo', 0, false);
                //                //$(this).parent().next().click();
                //            }, 500);
                //            return false;
                //        }
                //    });
                //}
                $('html, body').animate({ scrollTop: 0 }, 0);
            }
        }

        function fnMovieDetial(mId) {

            _movieDetailViewModel.getDetialMovieInfo(mId, function (data) {
                if ((data == null) || (data.ResCd != '00')) {
                    alert("영화에 대한 상세정보가 없습니다.");
                    history.back(-1);
                    return false;
                }
                else {

                    if (data.ResCd == '00') {
                        var element = document.getElementById('movieDetail');

                        var still = data.ResData.Table[0].STILL_URL;

                        if ($(element).length == 0 || $('#movieDetialTemplate').length == 0) return;
                        $("#movieDetialTemplate").tmpl(data.ResData.Table).appendTo(element);

                        // still Url이 없을 경우 상단 배경 검정색으로 변경
                        if (still == "") {
                            $('.bg_blur_area').css('display', 'none');
                        }
                        else {
                            $('.bg_blur_area').css('display', 'block');
                        }

                        var title = $('.dmb_tit').text();
                        var type = 'website';
                        var url = this.location.href;
                        var image = $('#poster').attr('src');
                        var site_name = 'YES24영화';
                        var description = $('#synopsis').text();

                        fnSetHeaderShare(title, url, image, site_name, description);
                    }
                }
            });
        }

        // 현재 보류 사용하지 않음
        function fnReserve(mId) {
            _movieDetailViewModel.getMovieReserveCheck(mId, function (data) {

                var rsReserve = data.ResData.Table;
                var rsReserveCheck = data.ResData.Table[0].MOVIE_RESERVE_CHECK;

                if (rsReserveCheck == 'YES') {
                    $('#btnReserve').show();
                } else {
                    $('#btnReserve').hide();
                }
            });
        }

        //function fnEvent(mId) {
        //    _movieDetailViewModel.getMovieEventCheck(mId, "EVTTYPE100", function (data) {
        //        if (data.ResCd == '00') {
        //            var rsEvent = data.ResData.Table;
        //            for (var i = 0; i < rsEvent.length; i++) {
        //                if (rsEvent[i].EVENT_TYPE == "EVTTYPE100") {
        //                    $('#btnPrev').show();
        //                }
        //                else if (rsEvent[i].EVENT_TYPE == "EVTTYPE200") {
        //                    $('#btnEvent').show();
        //                }
        //            }
        //        }
        //    });
        //}

        function fnGoSisa(eventId) {
            location.href = '/Preview/PreviewDetail?eventId=' + eventId;
        }

        function fnGoEvent(eventId) {
            location.href = '/Event/EventDetail?eventId=' + eventId;
        }

        function fnTicket(grpmId) {
            location.href = '/Movie/Ticket?gId=' + grpmId;
        }

        function fnDownload(mId) {
            location.href = 'http://vod.yes24.com/MovieContents/MovieDetail.aspx?did=' + mId;
        }

        function fnStreming(mId) {
            location.href = 'http://play24.yes24.com/Main/Detail=' + mId;
        }

    </script>
   <script id="movieDetialTemplate" type="text/x-jquery-tmpl">

        <div class="bg_blur_area">
            <!-- 선택된 영화 이미지 블러 효과 부분-->
            <svg class="svg_blur" xmlns="http://www.w3.org/2000/svg" version="1.1">
                <filter id="svgFilter" x="-0%" y="-0%">
                    <feGaussianBlur id="svgGaussBlur" in="SourceGraphic" stdDeviation="4"></feGaussianBlur>
                    <feComponentTransfer>
                        <feFuncA type="discrete" tableValues="1 1"></feFuncA>
                    </feComponentTransfer>
                </filter>
                <image xlink:href="https://movie-simg.yes24.com/NYes24//MOVIE/${STILL_URL}" filter="url(#svgFilter)" preserveAspectRatio="xMidYMin slice" width="100%" height="100%" x="0" y="0"></image>
            </svg>
        </div>

        <div class="detail_movie_info">

            {{if FESTI_ID > 0}}
            
            {{if FESTIVAL_POSTER != "" }}
            {{if FESTIVAL_POSTER == "default.jpg"}}
            <div class="img_thumb no_img_area"><img src="//movie-img.yes24.com/NYes24/new/ic_noimg_com.png" id="poster" alt="이미지 없음1"></div>
            {{else FESTIVAL_POSTER == "/"}}
            <div class="img_thumb no_img_area"><img src="//movie-img.yes24.com/NYes24/new/ic_noimg_com.png" id="poster" alt="이미지 없음2"></div>
            {{else}}
            <div class="img_thumb"><img src="https://movie-simg.yes24.com/NYes24//MOVIE/${FESTIVAL_POSTER}" id="poster" alt=""></div>
            {{/if}}
            {{else}}
            <div class="img_thumb no_img_area"><img src="//movie-img.yes24.com/NYes24/new/ic_noimg_com.png" id="poster" alt="이미지 없음3"></div>
            {{/if}}
            {{else}}
            
            {{if PSTR_URL != "" }}
            {{if PSTR_URL == "default.jpg"}}
            <div class="img_thumb no_img_area"><img src="//movie-img.yes24.com/NYes24/new/ic_noimg_com.png" id="poster" alt="이미지 없음"></div>
            {{else}}
            <div class="img_thumb"><img src="https://movie-simg.yes24.com/NYes24//MOVIE/${PSTR_URL}" id="poster" alt=""></div>
            {{/if}}
            {{else}}
            <div class="img_thumb no_img_area"><img src="//movie-img.yes24.com/NYes24/new/ic_noimg_com.png" id="poster" alt="이미지 없음"></div>
            {{/if}}
            {{/if}}




            <div class="dm_info_txt">
                <p id="movieTitle" class="dmb_tit">${M_NM}</p>
                {{if ORG_NM != ''}}
                <p class="dmb_eng_tit">${ORG_NM}</p>
                {{else ORG_NM == ''}}
                <p class="dmb_eng_tit"></p>
                {{/if}}

                {{if RNK != '999'}}
                <p class="dmb_txt"><span>예매율 ${RNK}위  ${RNK_PT}% </span><span>평점  ${ST_SVG} </span></p>
                {{/if}}
                <p class="dmb_txt"><span>${OPEN_DT}</span><span>${RUNTIME} 분</span><span>${VW_GRD_NM}</span><span>${GENRE}</span><span>${COUNTRY} </span></p>
                <div class="btn_area">
                    {{if IS_SCHEDULE == '1'}}
                    <button type="button" class="btn_defaultB btn_line_whilte" id="btnReserve" onclick="javascript: fnTicket('${M_ID}');">예매</button>
                    {{/if}}

                    {{if EVENT_ID_100 != '0'}}
                    <button type="button" class="btn_defaultB btn_line_whilte" id="btnPrev" onclick="javascript:fnGoSisa('${EVENT_ID_100}');">시사회</button> 
                    {{/if}}

                    {{if EVENT_ID_200 != '0'}}
                    <button type="button" class="btn_defaultB btn_line_whilte" id="btnEvent" onclick="javascript:fnGoEvent('${EVENT_ID_200}');">이벤트</button> 
                    {{/if}}

                    {{if GOODS_NO_DOWNLOAD != ''}}
                    <button type="button" class="btn_dwonload_ic" id="btnDownload" onclick="javascript: fnDownload('${GOODS_NO_DOWNLOAD}');"><span>다운로드</span></button>
                    {{/if}}

                    
                    <button type="button" class="btn_shareW" id="btnShare" onclick="javascript: fnShareSNS();"></button>
                </div>
            </div>
        </div>
    </script>
    <script type="text/javascript">

        var _mId = 'M000077628';
        var _isAdmin = false;
        var _isLogin = false;
        var _gradePageNo = 1;
        var _gradePageSize = 5;
        var _gradeMoreYn = 'N';
        var _gradeStaus = 'N';     // 등록된 공감 체크
        var _uId = uId;
        var _gradeOrderby = "";
        var _gradeDelete = "";

        var _returnUrl = 'https://www.yes24.com/Templates/FTLogin.aspx?ReturnURL=https://movie.yes24.com/MovieInfo/Index?mId=M000077628';

        var _movieGradeViewModel = new movieGradeViewModel();

        $(document).ready(function ()
        {
            if (uId != '')
            {
                _isLogin = true;
            }
            if (uId == 0) {
                _isLogin = false;
            }
            if (isAdmin == 'True')
            {
                _isAdmin = true;
            }
           
            //fnMovieMyGradeList(_mId, 'N', 1, 1, _gradeOrderby, _gradeDelete);
            //fnMovieDetialGradeList(_mId, 'N', _gradePageNo, _gradePageSize, _gradeOrderby, _gradeDelete);
            
        });

        function fnMovieMyGradeList(mId, _gradeMoreYn, _gradePageNo, _gradePageSize, _gradeOrderby, _gradeDelete) {            
            if (_isLogin == true)
            {
                if (_gradeDelete != 'Y')
                {
                    _movieGradeViewModel.getMovieMyGradeList(mId, _gradePageNo, _gradePageSize, _gradeOrderby, function (data) {
                        if (data.ResCd == '00')
                        {
                            var totalGradeRowNum = "";
                            var gradeRsData = data.ResData.Table;
                            var gradeRsDataLength = data.ResData.Table.length;
                            var totalGrade = data.ResData.Table[0].TOTAL_GRADE;
                            var rsRegId = data.ResData.Table[0].REG_ID;
                            var rsRegNo = data.ResData.Table[0].REG_NO;

                            if (gradeRsDataLength >= 1)
                            {
                                $('#gradeOutBox').hide();
                                $('#gradeInBox').show();
                                $('#myGradeB').html('');
                                $('#totalGradeB').html('');
                                $('#likeBoxB').html('');

                                if (_uId == rsRegNo)
                                {
                                    var GradeNum = data.ResData.Table[0].GRADE_NUM;
                                    var notes = data.ResData.Table[0].NOTES;
                                    var regDate = data.ResData.Table[0].REG_DATE;
                                    var replyId = data.ResData.Table[0].REPLY_ID;
                                    var supCnt = data.ResData.Table[0].SUP_CNT;
                                    var oppCnt = data.ResData.Table[0].OPP_CNT;
                                    var spoiler = data.ResData.Table[0].SPOILER;
                                    var maxCnt = data.ResData.Table[0].MAX_CNT;

                                    var best = '<span class="ic_best"></span>' + notes;

                                    // 스포일러(1)
                                    if (parseInt(spoiler) == parseInt(0))
                                    {
                                        $("input[name='chkSpoilerB']").attr("checked", false);
                                    }
                                    else
                                    {
                                        $("input[name='chkSpoilerB']").attr("checked", true); 
                                    }
                                    
                                    if (replyId != "") {
                                        $('#totalGradeB').after("<button type='button' class='btn_x_sm' id='btnGradeDel' onclick=\"javascript: fnDelete('" + replyId + "','" + rsRegNo + "');\"><span>삭제</span></button>");

                                        if ((supCnt > 0) && (supCnt == maxCnt)) {
                                            $('#gradeGradeNotes').html(best);
                                        }
                                        else {
                                            $('#gradeGradeNotes').html(notes);
                                        }

                                        $('#myRegDate').text(regDate);
                                        $('#upVoteB').text(supCnt);
                                        $('#downVoteB').text(oppCnt);

                                        fnGradeStar('myGradeB', GradeNum, totalGradeRowNum);         // 나의 평점
                                    }                                   
                                }
                                else
                                {
                                    $('#gradeOutBox').show();
                                    $('#gradeInBox').hide();
                                }
                            }
                            else
                            {
                                $('#gradeOutBox').show();
                                $('#gradeInBox').hide();
                            }

                            // 종합 평점
                            $("#totalGradeB").children("span").each(function (e) {
                                $(this).removeClass("all_star");
                                $(this).removeClass("half_star");
                            });
                            fnGradeStar('totalGradeB', totalGrade, totalGradeRowNum);   // 종합 평점
                            
                        }
                    });
                }
                else
                {
                    $('#gradeInBox').hide();
                    $('#gradeOutBox').show();

                    $("#myGradeA").children("span").each(function (e) {
                        $(this).removeClass("all_star");
                        $(this).removeClass("half_star");
                    });
                    $("#myGradeStarNum").html("0");

                    $("input:checkbox[name='chkSpoilerA']").prop("checked", false);
                    $('#totalGradeA').html('');
                    $('#gradeTxt').val('');

                }
            }
            else
            {
                $('#gradeOutBox').show();
                $('#gradeInBox').hide();
            }
        }        

        function fnMovieDetialGradeList(mId, _gradeMoreYn, _gradePageNo, _gradePageSize, _gradeOrderby, _gradeDelete)
        {
            _movieGradeViewModel.getMovieGrade(mId, _gradePageNo, _gradePageSize, _gradeOrderby, function (data)
            {

                if ((data == null) || (data.ResCd != '00'))
                {
                    if (_gradeMoreYn == 'Y') {
                        alert('더 이상 내역이 없습니다.');
                        return;
                    }
                    else
                    {
                        $('#movie_grade_area').css('display', 'none');
                    }                    
                }
                else
                {
                    if (data.ResCd == '00')
                    {

                        var elementGradeList = document.getElementById('all_grade_cont_white_box');
                        var totalGradeRowNum = "";
                        var gradeRsDataLength = data.ResData.Table.length;

                        $(all_grade_cont_white_box).empty();
                        if (gradeRsDataLength >= 1) {
                            var gradeRsData = data.ResData.Table;
                            var totalGrade = data.ResData.Table[0].TOTAL_GRADE;
                            var rnMax = data.ResData.Table[0].RNUM_MAX;

                            $("#totalGradeA").children("span").each(function (e) {
                                $(this).removeClass("all_star");
                                $(this).removeClass("half_star");
                            });
                            $("#totalGradeA").html('');
                            fnGradeStar('totalGradeA', totalGrade, totalGradeRowNum);    // 종합평점

                            if (_gradePageNo==1) {
                                $('#all_grade_cont_white_box').empty();
                            }

                            for (var j = 0; j < gradeRsDataLength; j++) {
                                if ($(elementGradeList).length == 0 || $('#gradeListTemplate').length == 0) return;
                                $("#gradeListTemplate").tmpl(data.ResData.Table[j]).appendTo(elementGradeList);

                                var gradeNum = data.ResData.Table[j].GRADE_NUM;
                                var tNo = data.ResData.Table[j].TREG_NO;
                                var tId = data.ResData.Table[j].TREG_ID;
                                var tActCode = data.ResData.Table[j].TACT_CODE;
                                var regNo = data.ResData.Table[j].REG_NO;
                                var supCnt = data.ResData.Table[j].SUP_CNT;
                                var oppCnt = data.ResData.Table[j].OPP_CNT;
                                var spoiler = data.ResData.Table[j].SPOILER;
                                var rowNum = data.ResData.Table[j].ROWNUM;

                                var replyId = data.ResData.Table[j].REPLY_ID;
                                var maxCnt = data.ResData.Table[j].MAX_CNT;
                                var notes = data.ResData.Table[j].NOTES;
                                var notesSubStr = notes.substr(0, 150) + '..';
                                var best = "";
                                var heartActive = "";

                                $('#gradeListComment' + rowNum).html('');
                                $('#gradeListCommentFull' + rowNum).html('');                                
                                $('#star_area' + rowNum).html('');

                                fnGradeHeart(rowNum, replyId, regNo, tActCode, supCnt, oppCnt);     // 공감, 비공감 하트

                                if (parseInt(supCnt) > 0) {
                                    best = ' <span class="ic_best"></span> ' + notes;
                                }
                                else {
                                    best = notes;
                                }

                                var bestSubStr = "";
                                if (parseInt(supCnt) > 0) {
                                    bestSubStr = ' <span class="ic_best"></span> ' + notesSubStr;
                                } else {
                                    bestSubStr = notesSubStr;
                                }

                                var btnView = ' <button type="button" class="link_line" onclick="javascript: fnGradeListView(' + rowNum + ');">보기</button>';
                                var notesLength = notes.length;
                                var spoilerTxt = '! 스포일러가 있는 내용입니다.';
                                
                                // 공감/비공감 표시 상태
                                if (tActCode != "") {
                                    _gradeStaus = 'Y';
                                }                               

                                if ((_uId == regNo) || (_isAdmin == true)) {
                                    var btnDel = " <button type='button' class='btn_x_sm' id='btnReplyDel'  onclick=\"javascript: fnDelete('" + replyId + "','" + regNo + "');\"></button>";
                                } else {
                                    var btnDel = "";
                                }
                                
                                if (notesLength >= 150) {
                                    if (parseInt(replyId) == parseInt(maxCnt)) {
                                        if (parseInt(spoiler) == 1) {
                                            $('#gradeListComment' + rowNum).append(spoilerTxt + btnView);
                                        }
                                        else {
                                            $('#gradeListComment' + rowNum).append(bestSubStr + btnView);
                                        }
                                        $('#gradeListCommentFull' + rowNum).append(best + btnDel);
                                    }
                                    else {
                                        if (parseInt(spoiler) == 1) {
                                            $('#gradeListComment' + rowNum).append(spoilerTxt + btnView);
                                        } else {
                                            //$('#gradeListComment' + rowNum).append(notes + btnView);
                                            $('#gradeListComment' + rowNum).append(notesSubStr + btnView);
                                        }
                                        $('#gradeListCommentFull' + rowNum).append(notes + btnDel);
                                    }
                                }
                                else {
                                    if (parseInt(replyId) == parseInt(maxCnt)) {
                                        if (parseInt(spoiler) == 1) {
                                            $('#gradeListComment' + rowNum).append('<span class="ic_best"></span>' + spoilerTxt + btnView);
                                        } else {
                                            $('#gradeListComment' + rowNum).append(bestSubStr + btnDel);
                                        }
                                        $('#gradeListCommentFull' + rowNum).append(best + btnDel);
                                    }
                                    else {
                                        if (parseInt(spoiler) == 1) {
                                            $('#gradeListComment' + rowNum).append(spoilerTxt + btnView);
                                        } else {
                                           
                                            $('#gradeListComment' + rowNum).append(notes + btnDel);
                                        }
                                        $('#gradeListCommentFull' + rowNum).append(notes + btnDel);
                                    }
                                }


                                fnGradeStar('star_area', gradeNum, rowNum); // 목록 평점

                                /*
                                if (parseInt(rowNum) == parseInt(rnMax))
                                {
                                    alert('더 이상 내역이 없습니다.');
                                    return;
                                }
                                */

                            }
                        }
                    }
                    else
                    {
                        if (_gradeMoreYn == 'Y')
                        {
                            alert('더 이상 내역이 없습니다.');
                        }
                    }
                }
            });
        }

        // 공감,비공감 heart
        function fnGradeHeart(RowNum, ReplyId, TRegNo, Act, SupCnt, OppCnt) {

            $('#likeBoxA' + RowNum).html('');

            var heartType1 = "<span class='ic_heart active'></span>";
            var heartType2 = "<span class='ic_heart'></span>";

            var bheartType1 = "<span class='ic_b_heart active'></span>";
            var bheartType2 = "<span class='ic_b_heart'></span>";

            var likeBox = "";
            /* 공감:'UACT600', 비공감:'UACT700' */
            if (_uId != "") {
                // 공감
                if (Act == 'UACT600') // 공감 표시
                {
                    likeBox = "<div class='like_type'>" +
                                "   <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('600','" + ReplyId + "','" + TRegNo + "', this);\">" + heartType1 + "</button>" +
                                "   <span class='like_count'>" + SupCnt + "</span>" +
                                " </div>" +
                                " <div class='like_type'>" +
                                "     <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('700','" + ReplyId + "','" + TRegNo + "', this);\">" + bheartType2 + "</button>" +
                                "     <span class='like_count'>" + OppCnt + "</span>" +
                                " </div>";
                }
                else if (Act == 'UACT700') // 비공감 표시
                {
                    likeBox = "<div class='like_type'>" +
                                "   <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('600','" + ReplyId + "','" + TRegNo + "', this);\">" + heartType2 + "</button>" +
                                "   <span class='like_count'>" + SupCnt + "</span>" +
                                " </div>" +
                                " <div class='like_type'>" +
                                "     <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('700','" + ReplyId + "','" + TRegNo + "', this);\">" + bheartType1 + "</button>" +
                                "     <span class='like_count'>" + OppCnt + "</span>" +
                                " </div>";
                }
                else {
                    // 로그인 햇으나 공감, 비공감 표시를 안한 경우
                    likeBox = "<div class='like_type'>" +
                                "   <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('600','" + ReplyId + "','" + TRegNo + "', this);\">" + heartType2 + "</button>" +
                                "   <span class='like_count'>" + SupCnt + "</span>" +
                                " </div>" +
                                " <div class='like_type'>" +
                                "     <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('700','" + ReplyId + "','" + TRegNo + "', this);\">" + bheartType2 + "</button>" +
                                "     <span class='like_count'>" + OppCnt + "</span>" +
                                " </div>";
                }
            }
            else {
                // 로그인 안한 경우
                likeBox = "<div class='like_type'>" +
                                "   <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('600','" + ReplyId + "','" + TRegNo + "', this);\">" + heartType2 + "</button>" +
                                "   <span class='like_count'>" + SupCnt + "</span>" +
                                " </div>" +
                                " <div class='like_type'>" +
                                "     <button type='button' class='btn_like' onclick=\"javascript:fnGradeVote('700','" + ReplyId + "','" + TRegNo + "', this);\">" + bheartType2 + "</button>" +
                                "     <span class='like_count'>" + OppCnt + "</span>" +
                                " </div>";
            }

            $('#likeBoxA' + RowNum).append(likeBox);
            
        }

        function fnMore(more)
        {
            var _gradeMoreYn = more;

            if (_gradeMoreYn == 'Y')
            {
                _gradePageNo += 1;
            } else {
                _gradePageNo = 1;
            }

            fnMovieDetialGradeList(_mId, _gradeMoreYn, _gradePageNo, _gradePageSize, _gradeOrderby, _gradeDelete);
        }
        
        // 보기
        function fnGradeListView(rowNum) {
            $('#gradeListComment' + rowNum).css('display', 'none');
            $('#gradeListCommentFull' + rowNum).css('display', 'block');
        }

        // 등록
        function fnWrite()
        {
            if (_isLogin == false)
            {
                alert('등록하기 위해서는 로그인이 필요합니다.');
                location.href = _returnUrl;
            }
            else
            {
                var gradeNum = $("#myGradeStarNum").text();
                var notes = $("#gradeTxt").val();
                var notesLength = notes.trim().length;
                var spoiler = $('#spChk').children('input').is(':checked');

                if (gradeNum == 0)
                {
                    alert('별점을 선택해주세요.');
                    return;
                }
                else if (notes == "")
                {
                    alert('감상평을 등록해주세요.');
                    return;
                }
                else if (notesLength > 1500) {
                    alert('최대 글자는 공백 포함 1,500자를 넘을 수 없습니다.');
                    return;
                }
                else {
                    if (spoiler == false)
                    {
                        spoiler = 0;
                    }
                    else {
                        spoiler = 1;
                    }                    

                    _movieGradeViewModel.setMovieGrade(_mId, gradeNum, notes, spoiler, function (data)
                    {
                        if (data.ResCd == '00') {

                            alert("평점이 등록되었습니다.");

                            fnShowMenuMovieDetail('Grade');
                            fnMovieMyGradeList(_mId, 'N', 1, 1, "REG_DATE", 'N');
                            

                            $('#gradeOutBox').hide();
                            $('#gradeInBox').show();

                            if (spoiler == 0) {
                                $("#chkSpoilerB").attr("checked", false);
                            }
                            else {
                                $("#chkSpoilerB").attr("checked", true); // 스포일러(1)
                            }

                            fnSupCnt();

                            // 기본정보 페이지 내용 변경
                            fnIndexMyGradeList(_mId, 1, 1, 'SUP_CNT', '');
                            fnIndexGradeList(_mId, 1, 3, 'SUP_CNT', '');

                        }
                        else {
                            alert(data.ResData.Table[0].ERRMSG);
                            return false;
                        }

                    });

                    
                }
            }
        }

        // 삭제
        function fnDelete(replyId, regNo)
        {           
            if (_isLogin == false)
            {
                alert('삭제하기 위하여 로그인이 필요합니다.');
                location.href = _returnUrl;
            }
            eles
            {                
                if ((_uId == regNo) || (_isAdmin == true))
                {
                    if (confirm("평점을 삭제하시겠습니까?"))
                    {
                        _movieGradeViewModel.setMovieGradeDel(replyId, _mId, function (data)
                        {
                            if (data.ResCd == '00')
                            {
                                alert('평점이 삭제되었습니다.');

                                fnShowMenuMovieDetail('Grade'); // 삭제 후 평점탭
                                fnMovieMyGradeList(_mId, 'N', 1, 1, 'REG_DATE', 'Y');
                                fnSupCnt();

                                // 기본정보 페이지 내용 변경
                                fnIndexMyGradeList(_mId, 1, 1, 'SUP_CNT', 'Y');
                                fnIndexGradeList(_mId, 1, 3, 'SUP_CNT', 'Y');
                            }
                            else
                            {
                                alert(data.ResData.Table[0].ERRMSG);
                                return false;
                            }

                        });

                       
                    }
                }
                else
                {
                    alert("본인의 글만 삭제가 가능합니다.");
                    return false;
                }
                
            }
        }

        // 공감순
        function fnSupCnt()
        {   
            $('#aSupCnt').addClass('active');
            $('#aRegDate').removeClass('active');
            
            var btnMore = $('#btnMore').hasClass('display');

            if (_gradeMoreYn = 'Y') {
                _gradeMoreYn = 'N';
                _gradePageNo = 1;

                if (btnMore == false) {
                    $('#btnMore').css('display', 'block');
                }
            }

            $("#all_grade_cont_white_box").html('');
            fnMovieDetialGradeList(_mId, _gradeMoreYn, _gradePageNo, _gradePageSize, 'SUP_CNT', _gradeDelete);
        }

        // 등록순
        function fnRegDate()
        {   
            $('#aSupCnt').removeClass('active');
            $('#aRegDate').addClass('active');

            var btnMore = $('#btnMore').hasClass('display');

            if (_gradeMoreYn = 'Y')
            {
                _gradeMoreYn = 'N';
                _gradePageNo = 1;

                if (btnMore == false) {
                    $('#btnMore').css('display', 'block');
                }
            }

            $("#all_grade_cont_white_box").html('');
            fnMovieDetialGradeList(_mId, _gradeMoreYn, _gradePageNo, _gradePageSize, 'REG_DATE', _gradeDelete);
        }

        // 공감,비공감
        function fnGradeVote(actCode, replyId, regNo, obj) {
            if (_isLogin == true) {
                if (regNo == _uId) {
                    alert("자신의 글에 공감 / 비공감 하실 수 없습니다.");
                }
                else {
                    //var obj = event.target;
                    var _section_cd = "CONATT510";
                    var _obj_id = _mId;
                    var _contents_id = "";

                    _movieGradeViewModel.setCommunityReplyAct(actCode, _contents_id, replyId, _section_cd, _obj_id, function (data) {
                        if (data.ResCd == '00') {
                            if (data.ResData.Table[0].ERRNO != "0") {
                                alert(data.ResData.Table[0].ERRMSG);
                            }
                            else {
                                var spTag = $(obj).children("span");
                                if ($(spTag).hasClass("active")) {
                                    $(spTag).removeClass("active");
                                }
                                else {
                                    $(spTag).addClass("active");
                                }
                                $(obj).next(".like_count").html(data.ResData.Table[0].CNT);

                                // 기본정보 평점 초기화
                                fnIndexMyGradeList(_mId, 1, 1, 'SUP_CNT', '');
                                fnIndexSupCnt();

                                //if ($(obj).hasClass("active")) {
                                //    $(obj).removeClass("active");
                                //}
                                //else {
                                //    $(obj).addClass("active");
                                //}
                                //$(obj).parent().parent().children(".like_count").html(data.ResData.Table[0].CNT);

                                //fnMovieMyGradeList(_mId, 'N', 1, 1, 'SUP_CNT', 'N');
                                //fnSupCnt();

                                
                            }
                        }
                    });
                }
            }
            else {
                alert("로그인을 해 주세요.");
                location.href = _returnUrl;
                return;
            }
        }

        //- 수정전 버전
        function fnGradeVote_removed(actCode, replyId, regNo) 
        {
            var eact = "";
            if (actCode == '600') {
                eact = '공감';
            } else if (actCode == '700') {
                eact = '비공감';
            } else { }

            if (_isLogin == true)
            {                
                    var obj = event.target;
                    var _section_cd = "CONATT510";
                    var _obj_id = _mId;
                    var _contents_id = "";
                    
                    _movieGradeViewModel.setCommunityReplyAct(actCode, _contents_id, replyId, _section_cd, _obj_id, function (data)
                    {
                        if (data.ResCd == '00')
                        {
                            if (actCode == '600')
                            {
                                //alert("공감 되었습니다.");
                            }

                            if (actCode == '700') {
                                //alert("비공감 되었습니다.");
                            }

                            if (data.ResData.Table[0].ERRNO != "0")
                            {
                                alert(data.ResData.Table[0].ERRMSG);
                            }
                            else
                            {
                                var cnt = $(obj).parent().parent().children("p").text();

                                if ($(obj).hasClass("active")) {
                                    $(obj).removeClass("active");
                                    $(obj).parent().parent().children("p").html(Number(cnt) - 1);
                                }
                                else {
                                    $(obj).addClass("active");
                                    $(obj).parent().parent().children("p").html(Number(cnt) + 1);
                                }

                                //$("#all_grade_cont_white_box").html('');                                
                              
                                fnMovieMyGradeList(_mId, 'N', 1, 1, 'SUP_CNT', 'N');
                                fnSupCnt();
                                
                                // 기본정보 평점 초기화
                                fnIndexMyGradeList(_mId, 1, 1, 'SUP_CNT', '');
                                fnIndexSupCnt();
                            }
                        }
                        else
                        {
                            alert(data.ResData.Table[0].ERRMSG);
                            return false;
                        }

                    });                    
                //}
            }
            else
            {
                alert("공감/비공감은 로그인이 필요합니다.");
                location.href = _returnUrl;
            }
        }

        function fnSpoChk(chkId) {
            var chkStatus = $('#spChk').children('input').is(':checked');

            if (chkStatus == false) {
                alert('감상평에 스포일러가 포함되어 있나요2? \n스포일러가 포함되어 있으면 등록 후 블라인드 처리되어 노출됩니다.');
                $("input:checkbox[id='chkSpoilerA']").prop("checked", true);
                return;
            } else {
                $("input:checkbox[id='chkSpoilerA']").prop("checked", false);
                return;
            }
        }
        
    </script>
<jsp:include page="../include/footer.jsp"/>

</html>