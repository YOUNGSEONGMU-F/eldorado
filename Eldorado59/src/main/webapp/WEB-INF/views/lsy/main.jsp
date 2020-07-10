<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>

<article>
<div class="slideshow-container">

<div class="mySlides fade">
<img src="https://movie-simg.yes24.com/NYes24//MOVIE//M76/M40/M00007764008_134239.jpg/dims/optimize" id="M000077640" alt="나의 첫 번째 슈퍼스타">
    
    <div class="title">나의 첫 번째 슈퍼스타</div>
    <div class="text">4위 5.49%</div>
    <div class="mv_rank">
		    <div class="mv_item">
		   	 <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M14/M14/M000071414_132337.jpg/dims/thumbnail/170x245/optimize" alt="결백" >
		    </div>
		    <div class="mv_item">
		     <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M25/M93/M00007259350_162353.jpg/dims/thumbnail/170x245/optimize" alt="침입자">
		    </div>
		    <div class="mv_item">
		     <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M69/M29/M000076929_150901.jpg/dims/thumbnail/170x245/optimize" alt="에어로너츠">
		    </div>
		    <div class="mv_item">
		     <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M76/M40/M000077640_142244.jpg/dims/thumbnail/170x245/optimize" alt="나의 첫 번째 슈퍼스타">
		    </div>
		    <div class="mv_item">
		     <img src="https://movie-simg.yes24.com/NYes24//MOVIE//M58/M84/M000065884_135714.jpg/dims/thumbnail/170x245/optimize" alt="위대한 쇼맨">
		    </div>
    </div>
</div>

<div class="mySlides fade">
<img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/cats_085807.jpg/dims/optimize" alt="허남웅 영화경" >
    <div class="title down_tit">＜프랑스여자＞</div>
    <div class="text down_txt">기억의 유령이 주위를 배회하고 있다</div>
</div>

<div class="mySlides fade">
<img src="https://movie-simg.yes24.com/NYes24//MOVIE//M14/M14/M00007141401_105043.jpg/dims/optimize" id="M000071414" alt="결백">
<!--     <div class="title down_tit">결백</div> -->
</div>

 <div class="mySlides fade">
  <img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/0111_113611.jpg/dims/optimize" alt="저 산 너머"> class="sld">
    <div class="title down_tit">저 산 너머</div>
    <div class="text down_txt">가난하지만 행복했던 그시절</div>
</div>
<!--
<div class="mySlides fade">
  <img src="" class="sld">
</div> -->

<a class="prev" onclick="plusSlides(-1)"></a><!-- &#10094; -->
<a class="next" onclick="plusSlides(1)"></a> <!-- &#10095; -->

<div style="text-align:center" class="dots">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
<!--    <span class="dot" onclick="currentSlide(5)"></span>  -->
</div>

</div>


<jsp:include page="../include/mainContent.jsp"></jsp:include>
</article>
</body>  


<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>


	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "AJhImJMME5hDjzPfSu24",
				callbackUrl: "http://localhost:8080/team/Main/index",
				isPopup: false,
				callbackHandle: true
				
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
			}

			
		);

		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();

		/* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
					var email = naverLogin.user.getEmail();
					if( email == undefined || email == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
						naverLogin.reprompt();
						return;
					}
					
                 } else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});


		
	</script>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>