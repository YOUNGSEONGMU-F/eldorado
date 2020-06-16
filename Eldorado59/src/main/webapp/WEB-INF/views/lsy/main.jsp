<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">

<title>ELDORADO59</title>
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet" type="text/css" />

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
    <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
<img src="https://movie-simg.yes24.com/NYes24//MOVIE//M14/M14/M00007141401_105043.jpg/dims/optimize" id="M000071414" alt="결백">
    <div class="text">Caption Text</div>
</div>

 <div class="mySlides fade">
  <img src="https://movie-simg.yes24.com/NYes24//MgrMain//20/06/0111_113611.jpg/dims/optimize" alt="저 산 너머"> class="sld">
    <div class="text">Caption Text</div>
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
<br>


<script>
var slideIndex = 0;
showSlides(slideIndex);
carousel();

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}
function carousel() {

	/* sleep(2000); */

// 	  var i;
// 	  var x = document.getElementsByClassName("mySlides");
// 	  var dots = document.getElementsByClassName("dot");
// 	  for (i = 0; i < x.length; i++) {
// 	    x[i].style.display = "none";	/* 안보이게 */
// 	    dots[i].className = dots[i].className.replace(" active", "");/*클래스삭제  */
	   
// 	  }
// 	  slideIndex++;
// 	  if (slideIndex > x.length) {slideIndex = 1}	/*max 보다 크면 1로변환  */
// 	  dots[slideIndex-1].className += " active";	/*클래스 추가 */
// 	  x[slideIndex-1].style.display = "block";		/*보이게  */
// 	  setTimeout(carousel, 5000); // 이미지 변환 시간
	}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>



</article>
</body>  
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>