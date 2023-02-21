<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Junior</title>
<!-- <link rel="stylesheet" href="https://me2.do/5BvBFJ57"> -->
</head>
<body>
<%@include file="/WEB-INF/views/inc/header.jsp" %>	 
<fieldset>
	<legend>로그인</legend>
	
<form action="/board/member/loginok" method="POST">
<div>아이디 <input type="text" name="id" id="id"> </div>
<div>비밀번호 <input type="password" name="pw" id="pw"> </div>

<button type="submit">로그인</button>
</form>

</fieldset>
	

	<script>
	
	
	</script>
</body>
</html>