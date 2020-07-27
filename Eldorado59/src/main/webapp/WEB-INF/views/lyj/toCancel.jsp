<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>


<div id="toCancelPageWrap" style="margin-top: 120px;">
<h1>예매취소페이지</h1>
<form action="">
<div><%=session.getAttribute("id") %>님 예매를 취소 하시겠습니까?</div>

<input type="submit" value="예">
<button>이전으로</button>
</form>

</div>
</body>
</html>