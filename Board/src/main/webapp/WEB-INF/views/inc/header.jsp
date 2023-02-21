<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>

header {
	display: flex;
	justify-content: space-between;
}
.logo {
	font-size: 2rem;
	font-weight:bold;
	cursor:pointer;
}
.board,.login{ 
	display: flex;
	margin-top: 10px;
	
}
.login {
margin-right: 20px;}

.board > div , .login > div, .logo{
margin: 20px 10px;

}

.board > div , .login > div{
cursor: pointer;
font-size: 1.2rem;
}

hr {
width: 100%;
}
</style>

<header>


<div class="logo" onclick="location.href='/board/board/board'">Junior</div>
<div class="board">
<div>공지사항</div>
<div>커뮤니티</div>
</div>

<c:if test="${mdto == null}">
<div class="login">
<div onclick="location.href='/board/member/login'">로그인</div>
<div onclick="location.href='/board/member/register'">회원가입</div>
</div>
</c:if>
<c:if test="${mdto != null}">
<div class="login">
<div onclick="location.href='/board/member/mypage'">${mdto.name}(${mdto.id})</div>
<div onclick="location.href='/board/member/logout'">로그아웃</div>
</div>
</c:if>
</header>
<hr>