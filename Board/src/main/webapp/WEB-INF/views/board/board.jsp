<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Junior</title>
<!-- <link rel="stylesheet" href="https://me2.do/5BvBFJ57"> -->
<link rel="stylesheet" href="/board/resources/css/main.css">
<script src="https://kit.fontawesome.com/04d62b639a.js" crossorigin="anonymous"></script>

<style>
body {
width: 1500px;
margin: 0 auto;
}
.item {
height: 130px;
border-top:1px solid #999;
border-bottom:1px solid #999;

}
.item > div {
margin: 10px 0;
}

.content {
font-size: 1.8rem;
font-weight: bold;
}

a {
	text-decoration: none;

}
a:hover {
	color: gold;
	cursor:pointer;
}
.sub {
text-align: right;}

.sub i {
margin: 0 7px;}
.item-head {
display:flex;
justify-content: space-between;

padding: 7px 0;
border-top: 1px solid black;
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
	<h1>커뮤니티</h1>
	<c:if test="${mdto != null}">
	<div> <button class="addBtn" onclick="location.href='/board/board/boardadd'">작성하기</button> </div>
	</c:if>
	<c:if test="${mdto == null}">
	<div> <button class="addBtn" onclick="location.href='/board/member/login'">작성하기</button> </div>
	</c:if>
	<div class="item-head">
	<div><i class="fa-solid fa-arrows-rotate"></i> </div> 
	<div> <input type="text"></div> 
	<div>  1/122페이지<i class="fa-solid fa-arrow-left"></i> <i class="fa-sharp fa-solid fa-arrow-right"></i></div> 
	</div>
	
	<c:forEach items="${blist}" var="dto">
	<div class="item">
	<div class="info">${dto.name} <span>${dto.regdate}</span> </div>
	<div class="content"><a href="/board/board/boarddetail?bseq=${dto.bseq}">${dto.subject}</a></div>
	<div class="sub"><span><i class="fa-solid fa-eye">${dto.viewcnt}</i></span><span><i class="fa-regular fa-comment">0</i></span><span><i class="fa-regular fa-thumbs-up">0</i></span> </div>
	</div>
	</c:forEach>
	
	
	

	<script>
	
	
	</script>
</body>
</html>