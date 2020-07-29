<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELDORADO</title>
<link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="${pageContext.request.contextPath }/resources/khr/css/OrderComplete.css" rel="stylesheet" type="text/css" />

</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<body>

<div class="wrap">
	<input type="hidden" value="<%=session.getAttribute("id") %>">
	<div class="order_container">
		<div class="tit">예매완료</div>
		<div class="order_info">
			<div class="movie_info">
				<div class="movie_sel_tit" data-bind="with:theaterMovieTimeViewModel.movie()">
					<span>${title}</span>
				</div>
				<div class="movie_sel_cinema" data-bind="with:theaterViewModel.theater()">
					<span>${th_name} / ${total_amount}장</span>
				</div>
				<div class="movie_sel_seat"> 
					<span>${seat}</span>
				</div>
				<div class="movie_sel_date">
	                <span data-bind="with:theaterDateViewModel.movieDate()">
	                	${date} / ${time}
	                </span> 
	            </div>
	        </div>
	        <div class="last_price_area">
                	결제한 금액 <br>
                	<p>${total_price}원</p>
            </div>
            <div class="eldorado_logo">
            	<span>ELDORADO</span>
            	<img src="${pageContext.request.contextPath }/resources/khr/img/barcode.png">
            </div>
	        <%-- <div class="price_info_area">
	        	<p class="clear">
					<!-- 성인 -->
					<span class="pi_tit"><input id="peo_num" name="" value="${adult}"></span>
					<span class="pi_info"><input id="tk_price" name="" value="${a_price}"></span><br>
					<!-- 청소년 -->
					<span class="pi_tit"><input id="peo_num2" name="" value="${kid}"></span>
					<span class="pi_info"><input id="tk_price2" name="" value="${k_price}"></span>
					수량 : ${total_amount}
				</p>
	        </div> --%>
	        
		</div>
		<div class="order_mypage">
			<button onclick="location.href='/lyj/Mypage';">마이페이지</button>
		</div>
	</div>
</div>



</body>

<jsp:include page="../include/footer.jsp"></jsp:include>


</html>