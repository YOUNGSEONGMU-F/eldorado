<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>ELDORADO</title>
	<link href="//movie-img.yes24.com/NYes24/yes24movie.ico" rel="shortcut icon" type="image/x-icon">
	<link href="${pageContext.request.contextPath }/resources/khr/css/moviegift.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/resources/khr/css/main.css" rel="stylesheet" type="text/css" />
</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<body>

	<div class="moviegift_area">
		<div class="moviegift_banner_area">
			 <span>MOVIE GIFT</span>
		</div>
		<div class="moviegift_cont lay_inner">
			<div class="moviegift_voucher_area">
                <p class="title_box">
                	<a href="/MyPage/Index?tab=moviegift" class="link_left">나의구매내역</a>
                </p>
                <div class="mg_vou_list_area" id="divMovieGiftTop">
                	<div class="mg_vou_box">
                		<a href="Ticket?id=1296">
                			<div class="mg_vou_img">
                				<img src="https://movie-simg.yes24.com/NYes24//MovieGift/Image/202001/img_mg01_130913(0).png" alt="">
                			</div>
                			<div class="mg_vou_info">                     
                				<div class="mg_vou_type">일반 예매권</div>                     
                				<div class="mg_vou_price">                         
                					<span class="fir_price"><text class="currency">12,000</text>원</span>                         
                					<span class="las_price"><text class="currency">10,500</text>원</span>                       
                				</div>                
               				</div>
                		</a>
                	</div>
                	<div class="mg_vou_box">
                		<a href="Ticket?id=1297">
                			<div class="mg_vou_img">
                				<img src="https://movie-simg.yes24.com/NYes24//MovieGift/Image/202001/img_mg02_145927(0).png" alt="">
                			</div>
                			<div class="mg_vou_info">                     
                				<div class="mg_vou_type">3D 예매권</div>                     
                				<div class="mg_vou_price">                         
                					<span class="fir_price"><text class="currency">14,000</text>원</span>                         
                					<span class="las_price"><text class="currency">13,000</text>원</span>                       
                				</div>                
               				</div>
                		</a>
                	</div>
                </div>
            </div>
            <div class="moviegift_give_area" id="moviegiftbox">
                <div class="mg_vou_list_area" id="divMovieGiftBottom">
                	<div class="mg_vou_box">             
                		<a href="Ticket?id=1298">                 
                			<div class="mg_vou_img">
                				<img src="https://movie-simg.yes24.com/NYes24//MOVIE//M43/M42/M00007434253_094022.jpg" alt="">
                			</div>                 
                			<div class="mg_vou_info">                     
                				<div class="mg_vou_type">반도(1인권)</div>                     
                				<div class="mg_vou_price">                         
                					<span class="fir_price"><text class="currency">12,000</text>원</span>                         
                					<span class="las_price"><text class="currency">10,000</text>원</span>                       
                				</div>                 
                			</div>             
                		</a>         
                	</div>
                	<div class="mg_vou_box">             
                		<a href="Ticket?id=1299">                 
                			<div class="mg_vou_img">
                				<img src="https://movie-simg.yes24.com/NYes24//MOVIE//M75/M59/M000077559_150120.jpg" alt="">
                			</div>                 
                			<div class="mg_vou_info">                     
                				<div class="mg_vou_type">시라이(1인권)</div>                     
                				<div class="mg_vou_price">                         
                					<span class="fir_price"><text class="currency">12,000</text>원</span>                         
                					<span class="las_price"><text class="currency">10,000</text>원</span>                       
                				</div>                 
                			</div>             
                		</a>         
                	</div>
                	<div class="mg_vou_box">             
                		<a href="Ticket?id=1300">                 
	                		<div class="mg_vou_img">
	                			<img src="https://movie-simg.yes24.com/NYes24//MOVIE//M03/M13/M000120313_164908.jpg" alt="">
	                		</div>                 
	                		<div class="mg_vou_info">                     
	                			<div class="mg_vou_type">비바리움(1인권)</div>                     
	                			<div class="mg_vou_price">                         
	                				<span class="fir_price"><text class="currency">12,000</text>원</span>                         
	                				<span class="las_price"><text class="currency">10,000</text>원</span>                       
	                			</div>                 
	                		</div>             
                		</a>         
                	</div>
                </div>
            </div>
            
            <div class="theater_box_area" id="halfbox" style="display:none;">
                <p class="tit_mg">
                	극장 할인티켓 
                	<a href="/MyPage/Index?tab=theaterHalfSale">
                		<span class="link_left">극장티켓 구매내역</span>
                	</a> 
                </p>
                
                <div class="mg_vou_list_area" id="divTheaterHalfBottom">
                	<!--판매마감 & soldout saleend-->
                	<div class="theater_box">                          
                		<a href="/TheaterHalfSale/Index?SALE_SEQ=475&amp;SET_ID=S00000000733">                              
	                		<div class="mg_vou_img">
	                			<img src="https://movie-img.yes24.com/Nyes24/new/temp/dh01.png" alt="">
	                		</div>                              
	                		<div class="mg_vou_info">                                                                    
	                			<div class="mg_vou_type">[대한극장]  솔로세트</div>                                                                    
	                			<div class="mg_vou_type2">영화티켓 1매 + 팝콘(M)1개 + 음료(M)1개</div>                                  
	                			<div class="mg_vou_price">                                      
		                			<span class="fir_price">16,000원</span>                                      
		                			<span class="las_price">9,000원</span>                                 
								</div>                              
							</div>                          
						</a>                      
					</div>
					<!--판매마감 & soldout saleend-->
					<div class="theater_box">                          
						<a href="/TheaterHalfSale/Index?SALE_SEQ=475&amp;SET_ID=S00000000917">                              
							<div class="mg_vou_img">
								<img src="https://movie-img.yes24.com/Nyes24/new/temp/dh02.png" alt="">
							</div>                              
							<div class="mg_vou_info">                                                                    
								<div class="mg_vou_type">[대한극장]  커플세트</div>                                                                    
								<div class="mg_vou_type2">영화티켓 2매 + 팝콘(M)1개 + 음료(L)1개</div>                                  
								<div class="mg_vou_price">                                      
									<span class="fir_price">26,500원</span>                                      
									<span class="las_price">17,000원</span>                                  
								</div>                              
							</div>                          
						</a>                      
					</div>
					<!--판매마감 & soldout saleend-->
					<div class="theater_box">                          
						<a href="/TheaterHalfSale/Index?SALE_SEQ=475&amp;SET_ID=S00000001101">                              
							<div class="mg_vou_img">
								<img src="https://movie-img.yes24.com/Nyes24/new/temp/dh03.png" alt="">
							</div>                              
							<div class="mg_vou_info">                                                                    
								<div class="mg_vou_type">[대한극장]  우정세트</div>                                                                    
								<div class="mg_vou_type2">영화티켓 3매 + 팝콘(M)1개 + 음료(M)2개</div>                                  
								<div class="mg_vou_price">                                      
									<span class="fir_price">38,000원</span>                                      
									<span class="las_price">24,000원</span>                                  
								</div>                              
							</div>                          
						</a>                      
					</div>
					<!--판매마감 & soldout saleend-->
					<div class="theater_box">                          
						<a href="/TheaterHalfSale/Index?SALE_SEQ=475&amp;SET_ID=S00000001285">                              
							<div class="mg_vou_img">
								<img src="https://movie-img.yes24.com/Nyes24/new/temp/dh04.png" alt="">
							</div>                              
							<div class="mg_vou_info">                                                                    
								<div class="mg_vou_type">[대한극장]  가족세트</div>                                                                    
								<div class="mg_vou_type2">영화티켓 4매 + 팝콘(M)1개 + 음료(L)2개</div>                                  
								<div class="mg_vou_price">                                      
									<span class="fir_price">49,000원</span>                                      
									<span class="las_price">29,000원</span>                                  
								</div>                              
							</div>                          
						</a>                      
					</div>
				</div>
            </div>
            
            <!-- 극장특가-->
             
            <div class="notice_area">
            	<p class="noti_titleB">영화예매권이란?</p>
                <!-- <p class="noti_tit">예매권</p> -->
                <p class="noti_txt nt_unit">
		                       로그인 후 받으신 고유번호를 등록하여 원하는 극장과 날짜의 영화를 예매할 수 있는 무료이용권입니다!  (단, 예매권의 형태에 따라 사용방법이 상이하오니 예매권의 종류를 정확히 확인해야 합니다!)<br />
		                       영화예매권의 분실 또는 도난에 대해서는 YES24는 책임을 지지 않습니다
                </p>
                 <ul class="li_bar">
                    <li>일반 영화 예매권 : YES24에서 예매가능한 모든 극장과 날짜의 영화 예매 가능</li>
                    <li>지정 영화 예매권 : 예매권에 지정된 영화만 예매 가능</li>
                    <li>1+1 예매권 : 2인 이상 예매시 1매는 예매권으로 결제 가능</li>
                    <li>평일 예매권 : 토요일, 일요일, 공휴일을 제외한 평일에만 예매 가능</li>
                    <li>3D 영화 예매권 : 3D로 상영되는 영화 예매 가능</li>
                </ul>
            </div>
		</div>
	</div>
	
	<!-- //마이 영화 영역 -->
	<!-- SNS -->
	





</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>