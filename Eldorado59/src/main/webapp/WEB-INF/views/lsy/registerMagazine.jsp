<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image⁄x-icon" href="https://image.flaticon.com/icons/svg/1040/1040240.svg">
    <title>ELDORADO59</title>  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 

<link href="${pageContext.request.contextPath }/resources/css/magazine.css" rel="stylesheet" type="text/css" />

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>


<script type="text/javascript">

(function($){
  // 여기에 코드를 작성
	$(document).ready(function() {
		  $('#content').summernote({
			  height: 300,                 // set editor height
			  minHeight: null,             // set minimum height of editor
		      maxHeight: null,             // set maximum height of editor
		      focus: true,                  // set focus to editable area after initializing summernote
		      lang: "ko-KR",					// 한글 설정
			  placeholder: '내용을 입력하세요',	//placeholder 설정
			  callbacks: {	//이미지 첨부하는 부분
	               onImageUpload : function(files) {
	            	   for(var i = files.length -1; i>=0; i--) {
	                    uploadSummernoteImageFile(files[i],this);
	            	   }
	                }
	            }

		  });
function uploadSummernoteImageFile(file, editor) {
    data = new FormData();
    data.append("file", file);
    $.ajax({
        data : data,
        type : "POST",
        url : "/team/uploadSummernoteImageFile",
        contentType : false,
        enctype: 'multipart/form-data',
        processData : false,
        success : function(data) {
            //항상 업로드된 파일의 url이 있어야 한다.
            //$(editor).summernote('insertImage', data.url);
            let image = $('<img>').attr('src', 'http://localhost:8080${pageContext.request.contextPath }' + data.url);
            $('#content').summernote("insertNode", image[0]);
            //console.log('성공!!!');
            //console.log(data);
            //@이미지 경로문제 해결!
        }
    });
}
		});


})(jQuery);
</script>
<script type="text/javascript">

</script>
</head>
<body>
       

<!-- 헤더 -->            

<jsp:include page="../include/header.jsp"></jsp:include>
<!-- 헤더 -->            

<fieldset style="margin-top: 20rem;">
<legend>매거진 등록</legend>
<!-- <form action="./regist" method="post"> -->
<form method="post">
카테고리 
<select id="category" name="category">
<option value="NEWS">뉴스</option>
<option value="STAR">스타</option>
</select> <br>
라벨
<select id="label" name="label">
<option value=0>최초공개</option>
<option value=1>핫토픽</option>
<option value=2>전문가칼럼</option>
</select> <br>
제목: <input type="text" id="title" name="title"> <br>
내용: <br><textarea rows="15" cols="30" id="content" name="content"></textarea> <br>
<input type="submit" value="글쓰기"> <br>



</form>

</fieldset>




</body>
    
</html>