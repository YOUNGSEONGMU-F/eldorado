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

//	 sleep(2000); 

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
	  setTimeout(carousel, 8000); // 이미지 변환 시간
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


$(function(){
    var mySlider = $("#rk_item").bxSlider({
        mode:"horizontal",    // 가로 수평으로 슬라이드된다.
        speed:500,        // 이동 속도를 설정한다.
        pager:false,    // 현재 위치 페이지 표시 여부를 설정한다.
        moveSlides:1,    // 슬라이드 이동 시 개수를 설정한다.
        slideWidth:400,    // 슬라이드 너비를 설정한다.
        minSlides:5,    // 최소 노출 개수를 설정한다.
        maxSlides:5,    // 최대 노출 개수를 설정한다.
        slideMargin:5, // 슬라이드 간의 간격을 설정한다.
        auto:true,         // 자동으로 흐를지 여부를 설정한다.
        autoHover:true, // 마우스오버 시 정지할지를 설정한다.
        controls:false,    // 이전 버튼, 다음 버튼 노출 여부를 설정한다.
        touchEnabled : (navigator.maxTouchPoints > 0)
    });
    
    // 이전 버튼을 클릭하면 이전 슬라이드로 전환된다.
    $(".prevBtn").on("click", function(){
        // 이전 슬라이드 배너로 이동된다.
        mySlider.goToPrevSlide();
        // <a>의 링크를 차단한다.
        return false;
    });
    
    // 다음 버튼을 클릭하면 다음 슬라이드로 전환한다.
    $(".nextBtn").on("click", function(){
        // 다음 슬라이드 배너로 이동된다.
        mySlider.goToNextSlide();
        // <a>의 링크를 차단한다.
        return false;
    });
});


