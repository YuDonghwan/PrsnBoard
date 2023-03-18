<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Junior</title>
<!-- <link rel="stylesheet" href="https://me2.do/5BvBFJ57"> -->

	<style>
		.login-wrap {
			background-color: #f5f5f5;
			padding: 40px 30px;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
		.login-heading {
			text-align: center;
			margin-bottom: 20px;
		}

		.login-heading h2 {
			font-size: 2rem;
			font-weight: bold;
			color: #343a40;
		}

		.login-heading p {
			font-size: 1rem;
			color: #868e96;
		}

		.login-form {
			margin-top: 30px;
		}

		.login-form .form-control {
			border-radius: 0;
		}

		.login-form .btn {
			border-radius: 0;
			background-color: #343a40;
			border-color: #343a40;
		}

		.login-form .btn:hover {
			background-color: #212529;
			border-color: #212529;
		}

		.login-form .btn:focus {
			box-shadow: none;
		}

		.login-form .form-check-label {
			font-size: 0.9rem;
		}

		.login-form .form-check-input {
			margin-top: 4px;
		}

		.login-form .forgot-password {
			margin-top: 10px;
			font-size: 0.9rem;
			text-align: right;
		}

		.login-form .forgot-password a {
			color: #343a40;
		}

		.login-form .forgot-password a:hover {
			color: #212529;
			text-decoration: none;
		}

	</style>
</head>
<body>
<%@include file="/WEB-INF/views/inc/header.jsp" %>	 
<%--<fieldset>--%>
<%--	<legend>로그인</legend>--%>
<%--	--%>
<%--<form action="/board/member/loginok" method="POST">--%>
<%--<div class="login_txt">아이디 <input type="text" name="id" id="id"> </div>--%>
<%--<div class="login_txt">비밀번호 <input type="password" name="pw" id="pw"> </div>--%>

<%--<button type="submit" id="login_btn">로그인</button>--%>
<%--</form>--%>


<%--</fieldset>--%>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-6 col-lg-4">
			<div class="login-wrap">
				<div class="login-heading">
					<h2>로그인</h2>
					<p>Junior에 로그인하세요.</p>
				</div>
				<form class="login-form" method="post" action="/board/member/loginok">
					<div class="form-group">
						<label for="username">아이디</label>
						<input type="text" class="form-control" id="username" name="id" required>
					</div>
					<div class="form-group">
						<label for="password">비밀번호</label>
						<input type="password" class="form-control" id="password" name="pw" required>
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="remember">
						<label class="form-check-label" for="remember">자동 로그인</label>
					</div>
					<button type="submit" class="btn btn-primary btn-block">로그인</button>
					<div class="forgot-password">
						<a href="#">비밀번호를 잊으셨나요?</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
	<script>
	
	
	</script>
</body>
</html>