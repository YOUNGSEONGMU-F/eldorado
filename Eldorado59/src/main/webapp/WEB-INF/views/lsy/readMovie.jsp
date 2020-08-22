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
min-height: 50vw;
}

.col-md-12{
background: #b2dfdb;
}
.col-md-12{
margin-top:8rem;
}
::-webkit-scrollbar {

display:none;

}


</style>

</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<body>

	<article>
		<div class="col-md-12">
			<h1>영화 상세
			<button type='button' class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/Movie/addMovie'">addMovie</button>
			<button type='button' class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/Movie/movieAdmin'">movieAdmin</button>
			<button type='button' class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/Movie/movieCriList'">movieCriList</button>
			</h1>
			<p>*참고: status 영화등록시 설정가능하도록 수정중, 예매율 => 참고사이트 보고 수기작성(API에 없는 데이터)</p>
			<p>이미지 주소는, api 제공 이미지 화질이 너무 구려서 눈물을 머금고 추가합니다..</p>
			<div class="justify-content-end form-inline mb-2">
			<a id="modifyMovie_action" href="#" class="btn btn-success m-2">수정</a><a id="deleteMovie_action" href="#" class="btn btn-danger m-2">삭제</a>
			</div>
			<div class="justify-content-center form-inline mb-2"> <!-- col-md-4 -->
			
<!--  -->	<form action="modifyMovie" method="post" id="form_action">
			
				<table class="table p-3">
				<tr>
					<th>ID</th>
					<th>썸네일</th>
					<th>제목</th>
					<th>개봉</th>
					<th>출연자</th>
					<th>감독</th>
					<th>평점</th>
				</tr>
				<tr>
					<td>${about_movie.movie_id }</td>
					<td>${about_movie.thumb_nail }</td>
					<td>${about_movie.title }</td>
					<td>${about_movie.pub_date }</td>
					<td>${about_movie.cast }</td>
					<td>${about_movie.director }</td>
					<td>${about_movie.user_rating }</td>
				</tr>
				<tr>
					<th>상태</th>
					<th>예매율</th>
					<th>등급</th>
					<th colspan="4">줄거리</th>
					
				</tr>
				<tr>
					<td>
						<select name="status" id="status">
							<optgroup label="상태">
							<option value="">선택하세요</option>
								<option value="0" 
								<c:if test="${about_movie.status ==0}">selected</c:if>>미상영</option>
								<option value="1" 
								<c:if test="${about_movie.status ==1}">selected</c:if>>상영중</option>
								<option value="2" 
								<c:if test="${about_movie.status ==2}">selected</c:if>>상영예정</option>
								
							</optgroup>
						</select>
					</td>
					<td><input type="number" name="advance_rate" value="${about_movie.advance_rate }"></td>
					<td>
					<select name="grade" id="grade">
						<optgroup label="관람연령">
						<option value="">선택하세요</option>
							<option value="전체"
							<c:if test="${about_movie.grade eq '전체'}">selected</c:if>>전체</option>
							<option value="12"
							<c:if test="${about_movie.grade eq'12'}">selected</c:if>>12</option>
							<option value="15"
							<c:if test="${about_movie.grade eq'15'}">selected</c:if>>15</option>
							<option value="청불"
							<c:if test="${about_movie.grade eq'청불'}">selected</c:if>>청불</option>
						</optgroup>
					</select>
					</td>
					<td colspan="4"><textarea name="info" cols="120" rows="5">${about_movie.info }</textarea></td>
				</tr>			
				<tr>
					<th colspan="7">이미지 주소(여러개 등록하려면 구분자 ; 사용)</th>
				</tr>
				<tr>
					<td colspan="7"><textarea name="image" rows="1" cols="150">${about_movie.image }</textarea></td>
				<tr>
					<th colspan="7">동영상 주소</th>
				</tr>
				<tr>
					<td colspan="7"><textarea name="video" rows="1" cols="150">${about_movie.video }</textarea></td>
				</tr>
				</table>	
				<input type="hidden" name="movie_id" value="${about_movie.movie_id }">		
				
				
				<!-- 이미지 예시 -->
				<c:set var="imgArr" value="${fn:split(about_movie.image,';') }"/>
				<img src="<c:out value="${imgArr[0] }"/>" width='400'>
				<img src="<c:out value="${imgArr[1] }"/>" width='400'>
				
				<!-- 동영상 예시 -->
				<video src='${about_movie.video }' width='400' controls>
					</video>
<!--  -->	</form>
				<!-- 삭제폼 -->
				<form action="deleteMovie" id="delete_form" method="post">
				<input type="hidden" name="movie_id" value="${about_movie.movie_id }">		
				</form>
				
			</div>
		</div>

	</article>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script type="text/javascript">
let formObj=$("#form_action");
$("#modifyMovie_action").on("click",function(){

	if(confirm("수정완료! movieCriList로 이동할까요?")==true){
		location.href="${contextPath}/Movie/movieCriList"
	}else{
	 return;
	}
	
	formObj.submit();
});

let formDel=$("#delete_form");
$("#deleteMovie_action").on("click",function(){
	if(confirm("삭제할까요?")==true){
		formDel.submit();
	}else{
	 return;
	}
	
});

</script>
</html>