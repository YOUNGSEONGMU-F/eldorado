<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">

<title>ELDORADO59</title>
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/resources/js/main.js" defer></script>

</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<body style="-ms-overflow-style: none; ">

<article>
<div class="slideshow-container">
<div class="mySlides fade">
<c:forEach var="movieListCri" items="${movieListCri }" varStatus="rank" end="0">
<c:set var="imgArr" value="${fn:split(movieListCri.image,';') }"/>
	<img src="<c:out value="${imgArr[1] }"/>"><!-- js: 이미지도 바뀜 -->     

    <div class="title">${movieListCri.title }</div><!-- js: 랭킹 호버시 바뀜 -->
    <div class="text">${rank.count }위 ${movieListCri.advance_rate }%</div><!-- js: 랭킹 호버시 바뀜 -->
</c:forEach>   
    <div class="mv_rank">
<c:forEach var="movieRank" items="${movieListCri }" varStatus="rank" end="4">
<c:set var="imgArr" value="${fn:split(movieRank.image,';') }"/>
		    <div class="mv_item">
	<img src="<c:out value="${imgArr[0] }"/>"> 
		   	 <div class="over_dmm">
                 <div class="over_btn">
                     <button type="button" onclick="javascript: fnTicketReserve('${movieRank.movie_id }');">예매</button>
                     <button type="button" onclick="javascript:fnMovieInfo('${movieRank.movie_id }');">정보</button>
                 </div>
             </div>
		    </div>
</c:forEach>
    </div>
</div>

 <div class="mySlides fade">
 <img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/cats_085807.jpg/dims/optimize" alt="허남웅 영화경" >
     <div class="title down_tit">＜프랑스여자＞</div>
     <div class="text down_txt">기억의 유령이 주위를 배회하고 있다</div>
 </div>

 <div class="mySlides fade">
 <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M14/M14/M00007141401_105043.jpg/dims/optimize" id="M000071414" alt="결백">
    <div class="title down_tit">결백</div>
 </div>

  <div class="mySlides fade">
   <img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/0111_113611.jpg/dims/optimize" alt="저 산 너머">
     <div class="title down_tit">저 산 너머</div>
     <div class="text down_txt">가난하지만 행복했던 그시절</div>
 </div>


<a class="prev" onclick="plusSlides(-1)"></a><!-- &#10094; -->
<a class="next" onclick="plusSlides(1)"></a> <!-- &#10095; -->

<div style="text-align:center" class="dots">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
</div>

</div>

<script type="text/javascript">

        function fnTicketReserve(grpmId) {
            location.href = '${pageContext.request.contextPath}/Movie/Ticket?gId=' + grpmId;
        }

        function fnMovieInfo(mId) {
            location.href = '${pageContext.request.contextPath}/MovieInfo/Index?mId=' + mId;
        }

</script>

<jsp:include page="../include/mainContent.jsp"></jsp:include>
</article>
</body>  


<jsp:include page="../include/footer.jsp"></jsp:include>
</html>