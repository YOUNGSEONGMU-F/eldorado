<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mainContent.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

      <section class="magazine">
        <h1 class="magazine_title">MAGAZINE</h1>
        <div class="mg_item">
      <c:forEach items="${magazineList }" var="magazineList" end="2">
        <c:set var="imgArr_mgz" value="${fn:split(magazineList.mgz_img,',') }"/>
          <div class="item">
            <a href="${pageContext.request.contextPath }/Magazine/Detail?num=${magazineList.mgz_num}">
              <img
                src="<c:out value="${imgArr_mgz[0] }"/> "
                width="380"
                height="280"
                alt="${magazineList.title }"
              />
              <div class="mg_info_box">
                <p class="mg_first"><span> 
                						<c:set var="label" value="${magazineList.label}"/>
                                        <c:if test="${label eq 0}"><c:out value="최초공개"/></c:if>
                                        <c:if test="${label eq 1}"><c:out value="핫토픽"/></c:if>
                                        <c:if test="${label eq 2}"><c:out value="전문가칼럼"/></c:if>
                                        <c:if test="${label eq 3}"><c:out value="스타패션"/></c:if>
                                        <c:if test="${label eq 4}"><c:out value="현장취재"/></c:if>
                                        <c:if test="${label eq 5}"><c:out value="연예가쉿"/></c:if>
                                        <%-- ${magazineList.label} --%>
                                        </span></p>
                <p class="mg_de_txt dot_st">${magazineList.title }</p>
<%--                 <p class="mg_title dot_st">${magazineList.tag }</p> --%>
              </div>
            </a>
          </div>
          </c:forEach>
  
        </div>
      </section>
      <div class="bg_color">
        <section class="event">
          <div class="event_title">
            <img src="${pageContext.request.contextPath }/resources/img/main_evt_tit.png" alt="" />
          </div>
          <div class="e_item">
            <div class="item_2">
              <a href="">
                <img
                  src="https://movie-simg.yes24.com/NYes24//MgrMain//20/08/b720x500_140301.jpg"
                  alt="시사회"
                />
              </a>
            </div>
            <div class="item_2">
              <a href="">
                <img
                  src="https://movie-simg.yes24.com/NYes24//MgrMain//20/07/play24_720x500_183031_130641.jpg"
                  alt="이벤트"
                />
              </a>
            </div>
          </div>
          <div class="e_item">
            <div class="item_3">
              <a href="">
                <img
                  src="${pageContext.request.contextPath }/resources/img/eldorado_summer_event.png"
                  alt="Summer_event" height="100%"
                />
              </a>
            </div>
            <div class="item_3">
              <a href="">
                <img
                  src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/evtlist_attend_090728.png"
                  alt="출석부"
                />
              </a>
            </div>
            <div class="item_3">
              <a href="">
                <img
                  src="${pageContext.request.contextPath }/resources/img/eldorado_holiday_oct.png"
                  alt="holiday" height="100%"
                />
              </a>
            </div>
          </div>
        </section>
              <!-- 박스오피스 -->
        <section class="ranking">
            <div class="r_list">
              <ul class="rk_list">
                <li><a href="${pageContext.request.contextPath}/MovieInfo/NowPlayRank">현재상영작</a></li>
<!--                 <li><a href="">박스오피스</a></li> -->
<!--                 <li><a href="">개봉예정작</a></li> -->
<!--                 <li><a href="">영화제 영화</a></li> -->
              </ul>
            </div>  
            <div id="bannerWrap">
              <ul id="rk_item">
            <c:forEach var="movieListCri" items="${movieListCri }" varStatus="rank" end="9">
            <c:set var="imgArr" value="${fn:split(movieListCri.image,';') }"/>
                <li>
                    <div class="rl_info_box">                                                                  
                    <p class="rank_num">${rank.count }</p>                                                                  
                     <div>                                     
                        <span>${movieListCri.title }</span>                                                                          
                        <span>${movieListCri.advance_rate }%</span>                                                                      
                     </div>                             
		             <div class="over_dmm">
						 <div class="over_btn">
		                     <button type="button" onclick="javascript: fnTicketReserve('${movieListCri.movie_id }');">예매</button>
		                     <button type="button" onclick="javascript:fnMovieInfo('${movieListCri.movie_id }');">정보</button>
		                 </div>
		             </div>
                    </div>
					<img src="<c:out value="${imgArr[0] }"/>">   
                </li>
            </c:forEach>

              </ul>
                  <a href="#" class="prevBtn">&#10094;</a>
                  <a href="#" class="nextBtn">&#10095;</a>
          </div>
          <div class="boff_more">
            <a href="${pageContext.request.contextPath}/MovieInfo/NowPlayRank">현재상영작 더보기+</a>
          </div>
        </section>
              <!-- 핫클립 -->
      <section class="hotClip">
        <div class="hc_info">
          <div class="btn_vod">play</div>
          <h1 class="hc_title">테넷</h1>
          <p class="info_text">화제의 개봉영화 예고편</p>
        </div>
        <div class="hc_item">
          <a href="">
            <div class="small_item">
              <img
                src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/tttt_094701.jpg"
                alt="테넷"
                width="220"
                height="84"
              />
              <div class="ht_name">
                <p>테넷</p>
              </div>
            </div>
          </a>
          <a href="">
            <div class="small_item">
              <img
                src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/steel_112741.jpg"
                alt="강철비2: 정상회담"
                width="220"
                height="84"
              />
              <div class="ht_name">
                <p>강철비2</p>
              </div>
            </div>
          </a>
          <a href="">
            <div class="small_item">
              <img
                src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/deep_105531.jpg"
                alt="딥워터"
                width="220"
                height="84"
              />
              <div class="ht_name">
                <p>딥워터</p>
              </div>
            </div>
          </a>
        </div>
        <div class="hc"></div>
      </section>
      </div>
      <!-- 공지 -->
            <section class="notice">
        <div class="notice_board">
          <h1 class="notice_title">공지사항</h1>
          <a href="" class="notice_main">
            <p>[알림] CGV 극장 시스템 점검 안내 (06/16)</p>
          </a>
          <a href="" class="notice_more">&#10095;</a>
        </div>
        <ul class="help">
          <li style="border: none; padding: 0;">
            <a
              href="#"
              class="noti_ic noti_ic01"
            >
              <span>1:1상담</span>
            </a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/HelpDesk/Faq" class="noti_ic noti_ic02">
              <span>FAQ</span>
            </a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/HelpDesk/DiscountInfo" class="noti_ic noti_ic03">
              <span>할인안내</span>
            </a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/HelpDesk/CouponInfo" class="noti_ic noti_ic04">
              <span>예매권안내</span>
            </a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/HelpDesk/GuideInfo" class="noti_ic noti_ic05">
              <span>예매 안내</span>
            </a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/HelpDesk/TheaterInfo" class="noti_ic noti_ic06">
              <span>극장안내</span>
            </a>
          </li>
        </ul>
      </section>


<script>


</script>
     