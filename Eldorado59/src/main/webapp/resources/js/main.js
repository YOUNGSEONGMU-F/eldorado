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

	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";	/* 안보이게 */
	    dots[i].className = dots[i].className.replace(" active", "");/*클래스삭제  */
	   
	  }
	  slideIndex++;
	  if (slideIndex > x.length) {slideIndex = 1}	/*max 보다 크면 1로변환  */
	  dots[slideIndex-1].className += " active";	/*클래스 추가 */
	  x[slideIndex-1].style.display = "block";		/*보이게  */
	  setTimeout(carousel, 5000); // 이미지 변환 시간
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