<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">

<title>ELDORADO59 :: 영화등록</title>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
a{
text-decoration: none !important;
}
.logo a, li.m_gnb:hover>a{
color: white !important;
}

body{
background-color: #9cc5c5;
}
article{
min-height: 60vw;
}
.col-md-12{
margin-top:8rem;
}
#output{
overflow: auto;
height: 40vw;
background-color:#b2dfdb;
}
::-webkit-scrollbar {

display:none;

}
.fixedHeader {
	position: sticky;
	top: 0;
	background-color: #28a745;
	opacity: .7;
	font-weight: 500;
	color: white;
	border-top: none;
}
</style>

</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<body>

	<article>
		<div class="col-md-12">
			<h1>영화 등록
			<button type='button' class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/Movie/movieAdmin'">movieAdmin</button>
			<button type='button' class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/Movie/movieCriList'">movieCriList</button>
			
			</h1>
		
			<p>네이버 영화 api를 이용하여 검색 후, 체크박스 선택하여 영화 등록</p>
			<div class="justify-content-between form-inline mb-2"> <!-- col-md-4 -->
					<div class="form-group">
						<input type="text" class="form-control" id="keyword"
							placeholder="검색어를 입력하세요">
						<button type="button" class="btn btn-primary mr-5" id="btn-movies-find">검색</button>
					</div>
		<button id='selectBtn' type='button' class='btn btn-outline-success flex-fill ml-5'>등록하기</button>
			</div>
		</div>
		
		<div id="output" style="-ms-overflow-style: none; ">
		</div>

	<div class="col-lg-12" id="ck_Result" ></div>  

	</article>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
//네이버 영화 API 받아오기
let main = {
		init : function() {
			let _this = this;
			$('#btn-movies-find').on('click', function() {
				_this.find();
			});
		},
		find : function() {
			let keyword = $('#keyword').val();
			$.ajax({
				type : 'GET',
				url : '/api/v1/movies/' + keyword,
				dataType : 'json',
				contentType : 'application/json; charset=utf-8',
			}).done(function(res) {
				//alert(JSON.stringify(res));
				//alert("성공:"+JSON.stringify(res));
					console.log(res);
					let movie= res.items;
			// 초기화
			$("#output").empty();
			// 데이터 append
			$("#output").append("<table id='movie' class='table table-hover'>");
			$("#movie").append("<thead><tr><td class='fixedHeader'><input type='checkbox' id='checkAll' onclick='cAll();' ></td><td class='fixedHeader'>사진</td><td class='fixedHeader'>제목</td><td class='fixedHeader'>개봉</td><td class='fixedHeader'>감독</td><td class='fixedHeader'>배우</td><td class='fixedHeader'>평점</td></tr></thead>");
				for(i=0;i<movie.length;i++){
					$("#movie").append("<tr><td><input type='checkbox' name='box' class='ckitem'></td><td><img src='"+movie[i].image+"'/></td><td><a href='"+res.items[i].link+"' target='_blank'>"+movie[i].title+"</a></td><td>"+movie[i].pubDate+"</td><td>"+movie[i].director+"</td><td>"+movie[i].actor+"</td><td>"+movie[i].userRating+"</td></tr>");
				}
			$("#output").append("</table>");
	
			}).fail(function(error) {
				alert(JSON.stringify(error));
			});
		}
	};
	main.init();

</script>
<script type="text/javascript">
//체크박스
//ckbox전체선택
		function cAll() {	
			if($("#checkAll").is(':checked')){
				$("input[type=checkbox]").prop("checked",true);
			}else{
				$("input[type=checkbox]").prop("checked",false);	
			}
		}
//개별아이템 선택해제시 전체선택 해제		
		$(document).on("click", ".ckitem", function(){
		    $("#checkAll").prop('checked', false);
		});
	    
</script>

<script type="text/javascript">

//$("#selectBtn").click(function(){ 
	
// 상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
$(document).on("click", "#selectBtn", function(){
//	alert("test!");

    let rowData = new Array(); 
    let checkbox = $("input[name=box]:checked");

// 체크된 체크박스 값을 가져온다
	checkbox.each(function(i) {
    // checkbox.parent() : checkbox의 부모는 <td>이다.
    // checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
    let tr = checkbox.parent().parent().eq(i);
    let td = tr.children();
    
    let tdData = new Object();
    // td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
    // 가져온 값을 객체에 담는다.

    tdData.thumb_nail=td.eq(1).html();
    tdData.title=td.eq(2).text();
    tdData.pub_date=td.eq(3).text();
    tdData.director=td.eq(4).text();
    tdData.cast=td.eq(5).text();
    tdData.user_rating=td.eq(6).text();

    // 체크된 row의 모든 값을 배열에 담는다.
    rowData.push(tdData);

 // console.log("title : " + title);
 // console.log("subtitle : " + subtitle);
    
	});

// $("#ck_Result").html(" * 체크된 Row의 모든 데이터 = "+rowData);	

 	let jsonD = JSON.stringify(rowData);//json으로 바꿈
		if(i==0){
		    alert('선택하세요');
		}else{
		    console.log(jsonD);
		} 

		$.ajax({
			url: "${contextPath}/registeMovie",
			data: {target:JSON.stringify(rowData)},  //요 부분이다.
			type: 'POST',
			success: function(result){
				console.log(result);
				if(confirm("movieAdmin으로 이동할까요?")==true){
					location.href="${contextPath}/Movie/movieAdmin"
				}else{
				 return;
				}
			},
			error : function(e){
				console.log(e);
			}
		});	
		
});
</script>

</html>