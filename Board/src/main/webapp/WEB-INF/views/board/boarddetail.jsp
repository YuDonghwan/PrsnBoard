<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Junior</title>
<!-- <link rel="stylesheet" href="https://me2.do/5BvBFJ57"> -->
<link rel="stylesheet" href="/board/resources/css/board.css">
<script src="https://kit.fontawesome.com/04d62b639a.js" crossorigin="anonymous"></script>

<style>
body {
width: 1500px;
margin: 0 auto;
}

</style>
</head>


<body>
<%@include file="/WEB-INF/views/inc/header.jsp" %>	 
	
	
	<!-- -->
	<h1>글쓰기</h1>
	
	
	<form action="/board/board/boardedit" method="POST">
	<div> <div class="txt">제목</div> <div id="detail_subject">${bdto.subject}</div> </div>
	<div> <div class="txt">내용</div><div id="detail_content">${bdto.content}</div></div>
		<input type="hidden" value="${bdto.bseq}" name="bseq">

		<c:if test="${mdto != null and mdto.mseq == bdto.mseq}">
	<div class="btns"> <button type="submit" class="addBtn" >수정</button><button type="button" class="addBtn" >삭제</button> </div>
		</c:if>
	</form>
	
	
	

	<script>
	
	
	</script>
</body>
</html>