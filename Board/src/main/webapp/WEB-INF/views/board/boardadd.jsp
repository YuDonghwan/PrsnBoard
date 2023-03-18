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


</style>
</head>


<body>
<%@include file="/WEB-INF/views/inc/header.jsp" %>	 
	
	
	<!-- -->
	<h1>글쓰기</h1>
	
	
	<form action="/board/board/boardaddok" method="POST">
	<div> <div class="txt">제목</div> <input type="text" name="subject" id="subject"></div>
	<div> <div class="txt">내용</div><textarea name="content" id="content"></textarea> </div>
	
	<div> <button type="submit" class="addBtn" >작성하기</button> </div>
	</form>
	
	
	

	<script>
	
	
	</script>
</body>
</html>