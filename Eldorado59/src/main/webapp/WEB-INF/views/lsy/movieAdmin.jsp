<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
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
min-height: 170vw;
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
			<h1>등록된 영화 목록
			<button type='button' class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/Movie/addMovie'">addMovie</button>
			<button type='button' class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/Movie/movieCriList'">movieCriList</button>
			</h1>
			
			<p>DB에 등록된 영화 목록 관리 페이지</p>
			<div class="justify-content-center form-inline mb-2"> <!-- col-md-4 -->
				<table class="table p-3">
				<tr>
					<th>no</th>
					<th>ID</th>
					<th>썸네일</th>
					<th>제목</th>
					<th>개봉</th>
					<th>평점</th>
					<th>출연자</th>
					<th>감독</th>
					<th>상세</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="movieList" items="${movieList }" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${movieList.movie_id }</td>
					<td>${movieList.thumb_nail }</td>
					<td>${movieList.title }</td>
					<td>${movieList.pub_date }</td>
					<td>${movieList.user_rating }</td>
					<td>${movieList.cast }</td>
					<td>${movieList.director }</td>
					<td><a href="${pageContext.request.contextPath }/Movie/readMovie?m_id=${movieList.movie_id }">관리</a></td>
					<td><a href="${pageContext.request.contextPath }/Movie/deleteMovie?m_id=${movieList.movie_id }">삭제</a></td>
				</tr>

				</c:forEach>					
				</table>				
					
			</div>
		</div>
		
		<div id="output">
		</div>

	<div class="col-lg-12" id="ck_Result" ></div>  

	</article>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>

</html>