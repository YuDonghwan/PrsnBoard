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
.addBtn {
font-size: 1.3rem;
color: white;
background-color: cornflowerblue;
padding: 10px;
outline:none;
border: none;
border-radius: 5px;
margin-top: 70px;
margin-bottom: 10px;
cursor: pointer;
}
</style>
</head>


<body>
<%@include file="/WEB-INF/views/inc/header.jsp" %>	 
	
	
	<!-- -->
	<h1>수정하기</h1>
	
	
	<form action="/board/board/boardeditok" method="POST">
	<div> <div>제목</div><input id="subject" type="text" name="subject" value="${bdto.subject}"></div>
	<div> <div>내용</div><textarea id="content" name="content">${bdto.content}</textarea> </div>
		<input type="hidden" name="bseq" value="${bdto.bseq}">

		<div class="btns"> <button type="button" class="addBtn" >돌아가기</button><button type="submit" class="addBtn" >수정</button> </div>
	</form>
	
	
	

	<script>
	
	
	</script>
</body>
</html>