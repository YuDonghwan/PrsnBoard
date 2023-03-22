<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Junior</title>
<!-- <link rel="stylesheet" href="https://me2.do/5BvBFJ57"> -->
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/board/resources/css/main.css">
	<link rel="stylesheet" href="/board/resources/css/board.css">
<script src="https://kit.fontawesome.com/04d62b639a.js" crossorigin="anonymous"></script>
<link rel="shortcut icon" href="/board/resources/pic/취업.jpg"/>



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
		<c:if test="${mdto.mseq eq '2'}">
	<div><input type="checkbox" id="chk_All" style="width:1.2rem">  <button id="deleteBtn">삭제</button></div>
		</c:if>
		<i class="fa-solid fa-arrows-rotate"></i>
	<div> <input type="text"></div> 
	<div>  1/122페이지<i class="fa-solid fa-arrow-left"></i> <i class="fa-sharp fa-solid fa-arrow-right"></i></div> 
	</div>
	
	<c:forEach items="${blist}" var="dto">
	<div class="item">
		<c:if test="${mdto.mseq eq '2'}">
		<input type="checkbox" class="chk" value="${dto.bseq}" name="chks">
		</c:if>
	<div class="info">${dto.name} <span>${dto.regdate}</span> </div>
	<div class="content"><a href="/board/board/boarddetail?bseq=${dto.bseq}">${dto.subject}</a></div>
	<div class="sub"><span><i class="fa-solid fa-eye">${dto.viewcnt}</i></span><span><i class="fa-regular fa-comment">0</i></span><span><i class="fa-regular fa-thumbs-up">0</i></span> </div>
	</div>
	</c:forEach>



<script src="/board/resources/js/main.js"></script>

</script>

</body>
</html>