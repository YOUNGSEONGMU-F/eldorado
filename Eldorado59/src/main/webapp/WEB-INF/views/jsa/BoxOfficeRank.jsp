<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@ page import="org.codehaus.jackson.map.ObjectMapper" %>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Collection"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.util.JSONBuilder"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO59</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
</head>
<jsp:include page="../include/header.jsp"/>
<style>
.t_head_top_title {
    padding: 60px 0 50px;
    font-size: 30px;
    text-align: center;
    color: #2b2b2b;
    font-weight: bold;
    margin-top: 5%;}
.t_bxof_tbl {
	width: 100%;
    table-layout: fixed;
    line-height: 1;
    background: #fff;
    text-align: center;
    border-collapse: collapse;
    border-spacing: 0;}
.t_mc_title {
    position: relative;
    margin: 80px 0 20px;
    font-size: 20px;
    color: #2b2b2b;}
.t_lay_inner {
	margin: auto; width: 1200px;}
.t_tbl_st04 {
    width: 100%;
    table-layout: fixed;
    line-height: 1;
    background: #fff;
    text-align: center;
}	
	
.t_tbl_st04 table {
	width: 100%;
	border-collapse: collapse;
    border-spacing: 0;}
.t_tbl_st04 th {
    height: 50px;
    font-size: 13px;
    color: #2b2b2b;
    font-weight: normal;
    vertical-align: middle;}   
.t_bxof_tbl tr:nth-child(2),.t_bxof_tbl tr:nth-child(2) a {
    color: #ec6159!important}
a {text-decoration: none; color: #000000;
}
.t_tbl_st04 td{
	padding: 15px 0;
    height: 60px;
    border-bottom: 1px solid #e5e5e5;
    vertical-align: middle;
    line-height: 20px;
    }
    
</style>
<body>
<%
	//https://www.kobis.or.kr/kobisopenapi/homepg/main/main.do
	//id: tbtb06 pw: maroon53
	Date ddate = new Date();
	ddate.setTime(ddate.getTime()-(1*23*60*60*1000));
	
	SimpleDateFormat dsdf = new SimpleDateFormat("yyyymmdd");
	String ddateStr = dsdf.format(ddate);
	
	String durl = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=125e0d7589b7019fcf325c4d2eac30d6&targetDt="
			+ ddateStr + "&itemPerPage=10";
    // 파라메터 설정
	String dtargetDt = ddateStr;			//조회일자
	String ditemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");		//결과row수
	String dmultiMovieYn = request.getParameter("multiMovieYn")==null?"":request.getParameter("multiMovieYn");		//“Y” : 다양성 영화 “N” : 상업영화 (default : 전체)
	String drepNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");			//“K: : 한국영화 “F” : 외국영화 (default : 전체)
	String dwideAreaCd = request.getParameter("wideAreaCd")==null?"":request.getParameter("wideAreaCd");			//“0105000000” 로서 조회된 지역코드
	System.out.println("daily"+ddateStr);
	// 발급키
	String dkey = "125e0d7589b7019fcf325c4d2eac30d6";
	// KOBIS 오픈 API Rest Client를 통해 호출
    KobisOpenAPIRestService dservice = new KobisOpenAPIRestService(dkey);
	// 일일 박스오피스 서비스 호출 (boolean isJson, String targetDt, String itemPerPage,String multiMovieYn, String repNationCd, String wideAreaCd)
    String dailyResponse = dservice.getDailyBoxOffice(true, dtargetDt, ditemPerPage, dmultiMovieYn, drepNationCd, dwideAreaCd);
 
	// Json 라이브러리를 통해 Handling
	ObjectMapper dmapper = new ObjectMapper();
	HashMap<String,Object> dailyResult = dmapper.readValue(dailyResponse, HashMap.class);
	request.setAttribute("dailyResult",dailyResult);
	// KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean isJson, String comCode )
	String dcodeResponse = dservice.getComCodeList(true,"0105000000");
	HashMap<String,Object> dcodeResult = dmapper.readValue(dcodeResponse, HashMap.class);
	request.setAttribute("dcodeResult",dcodeResult);
    %>	
	
<div class="t_movie_area">
 <div class="t_movie_cont t_lay_inner">
  <div class="t_head_top_title"> 박스오피스 </div>
  <div class="t_boxoffice_cont">
   <div class="t_mc_title">
	<c:out value="${dailyResult.boxOfficeResult.boxofficeType}"/>
	<c:out value="${dailyResult.boxOfficeResult.showRange}"/><br/>
   </div>
 <div class="t_bxof_tbl">
  <div class="t_tbl_st04">
<table>
	 <tr style="background-color: #dcdcdc;">
	 	<th>순위</th>
	 	<th>영화</th>
	 	<th>매출액</th>
	 	<th>관객수</th>
	 	<th>전일순위</th>	 
	 </tr>

	 <c:if test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList}">
	<c:forEach items="${dailyResult.boxOfficeResult.dailyBoxOfficeList}" var="boxoffice">
		<tr>
			<td><c:out value="${boxoffice.rank }"/></td>
			<td style="text-align: left;"><a href="#"><c:out value="${boxoffice.movieNm }"/></a></td>
			<td>
			<fmt:formatNumber var="bo_salesAmt" value="${boxoffice.salesAmt }" pattern="#,###"/>
			<c:out value="${bo_salesAmt }"/>원</td>
			<fmt:formatNumber var="bo_audiAcc" value="${boxoffice.audiAcc }" pattern="#,###"/>
			<td><c:out value="${bo_audiAcc }"/>명</td>
			<td><c:out value="${boxoffice.rankInten }"/></td>
		</tr>
	</c:forEach>
	</c:if>
	 </table>
	 </div>
	</div><!-- t_bxof_tbl -->
	
	<%
	
	Date date = new Date();
	date.setTime(date.getTime()-(1000*60*60*24));
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyymmdd");
	String dateStr = sdf.format(date);
	
	String url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml?key=125e0d7589b7019fcf325c4d2eac30d6&targetDt="
			+ dateStr + "&itemPerPage=10";
    // 파라메터 설정
	String targetDt = dateStr;			//조회일자
	String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");		//결과row수
	String multiMovieYn = request.getParameter("multiMovieYn")==null?"":request.getParameter("multiMovieYn");		//“Y” : 다양성 영화 “N” : 상업영화 (default : 전체)
	String repNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");			//“K: : 한국영화 “F” : 외국영화 (default : 전체)
	String wideAreaCd = request.getParameter("wideAreaCd")==null?"":request.getParameter("wideAreaCd");			//“0105000000” 로서 조회된 지역코드
	String weekGb = request.getParameter("weekGb")==null?"":request.getParameter("weekGb");
	
	System.out.println("weekly"+dateStr);
	// 발급키
	String key = "125e0d7589b7019fcf325c4d2eac30d6";
	// KOBIS 오픈 API Rest Client를 통해 호출
    KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
	// 일일 박스오피스 서비스 호출 (boolean isJson, String targetDt, String itemPerPage,String multiMovieYn, String repNationCd, String wideAreaCd)
    String weeklyResponse = service.getWeeklyBoxOffice(true, targetDt, itemPerPage, weekGb, multiMovieYn, repNationCd, wideAreaCd);
   
    
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> weeklyResult = mapper.readValue(weeklyResponse, HashMap.class);
	request.setAttribute("weeklyResult",weeklyResult);
	// KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean isJson, String comCode )
	String codeResponse = service.getComCodeList(true,"0105000000");
	HashMap<String,Object> codeResult = mapper.readValue(codeResponse, HashMap.class);
	request.setAttribute("codeResult",codeResult);
    %>
	
	
	
	<div class="t_mc_title">
	 <c:out value="${weeklyResult.boxOfficeResult.boxofficeType}"/>
	<c:out value="${weeklyResult.boxOfficeResult.showRange}"/><br/>
	</div>
	 <div class="t_bxof_tbl">
  <div class="t_tbl_st04">
	<table>
	 <tr style="background-color: #dcdcdc;">
	 	<th>순위</th>
	 	<th>영화</th>
	 	<th>매출액</th>
	 	<th>관객수</th>
	 	<th>전일순위</th>	 
	 </tr>
	 <c:if test="${not empty weeklyResult.boxOfficeResult.weeklyBoxOfficeList}">
	<c:forEach items="${weeklyResult.boxOfficeResult.weeklyBoxOfficeList}" var="wboxoffice">
	 <tr>
	 <td><c:out value="${wboxoffice.rank }"/></td>
			<td style="text-align: left;"><a href="#"><c:out value="${wboxoffice.movieNm }"/></a></td>
			<td><text class="currency"><fmt:formatNumber var="w_salesAmt" value="${wboxoffice.salesAmt }" pattern="#,###"/><c:out value="${w_salesAmt }"/></text>원</td>
			<td><text class="currency"><fmt:formatNumber var="w_audiAcc" value="${wboxoffice.audiAcc }" pattern="#,###"/><c:out value="${w_audiAcc }"/></text>명</td>
			<td><c:out value="${wboxoffice.rankInten }"/></td> 
	 </c:forEach>
	</c:if>
	</table>
	</div>
	<p style="margin-top:20px; text-align: left;"> ※ 영화진흥위원회 영화관 입장권 통합전산망 제공 </p>
	</div>
  </div> <!-- t_boxoffice_cont -->
 </div> <!-- t_movie_cont t_lay_inner -->
</div> <!-- t_movie_area -->
</body>
<jsp:include page="../include/footer.jsp"/>

<script type="text/javascript">
/* var dt = new Date();
var d = dt.getDate() -1;
if (d < 10) {var day = "0" + d;} else {var day = d + "";}
var m = dt.getMonth() + 1;
if (m < 10) { var month = "0" + m;} else {var month = m + "";}
var y = dt.getFullYear();
var year = y + "";
var result = year + month + day;
$(function() {
	$.ajax({
		//&itemPerPage: 1-10위 까지의 데이터가 출력되도록 설정
				url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=125e0d7589b7019fcf325c4d2eac30d6&targetDt="
						+ result + "&itemPerPage=10",
				dataType : "xml",
				success : function(data) {
					var $data = $(data)
							.find("boxOfficeResult>dailyBoxOfficeList>dailyBoxOffice");
					//데이터를 테이블 구조에 저장. html의 table태그, class는 table로 하여 부트스트랩 적용
					 if ($data.length > 0) {
						var table = $("<table/>").attr("class", "table");
						//<table>안에 테이블의 컬럼 타이틀 부분인 thead 태그
						var thead = $("<thead/>").append($("<tr/>"))
								.append(
										//추출하고자 하는 컬럼들의 타이틀 정의
										$("<th/>").html("&nbsp;순위"),
										$("<th/>").html("&nbsp;&nbsp;영화"),
										$("<th/>").html("&nbsp;&nbsp;매출액"),
										$("<th/>").html("&nbsp;&nbsp;관객수"),
										$("<th/>").html("&nbsp;&nbsp;전일순위"));
						var tbody = $("<tbody/>");
						$.each($data, function(i, o) {
							//오픈 API에 정의된 변수와 내가 정의한 변수 데이터 파싱
							var $rank = $(o).find("rank").text(); // 순위
							var $movieNm = $(o).find("movieNm").text(); //영화명
							var $salesAcc = $(o).find("salesAcc").text();// 매출액
							var $audiAcc = $(o).find("audiAcc").text();//관객수
							var $rankInten = $(o).find("rankInten").text(); //전일순위
							
							//<tbody><tr><td>태그안에 파싱하여 추출된 데이터 넣기
							var row = $("<tr/>").append(
									
									$("<td/>").text($rank),
									$("<td/>").text($movieNm),
									$("<td/>").text($salesAcc),
									$("<td/>").text($audiAcc),
									$("<td/>").text($rankInten));
							tbody.append(row);
						}); // end of each 
						table.append(thead);
						table.append(tbody);
						$(".wrap").append(table);
					}
				},
				//에러 발생시 "실시간 박스오피스 로딩 중"메시지가 뜨도록 한다.
				error : function() {
					alert("실시간 박스오피스 로딩 중...");
				}
			});
}); */
</script>