<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Junior-회원가입</title>

    <style>
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            display: inline-block;
            width: 100%;
            max-width: 300px;
            margin: 10px 0;
            font-weight: bold;
            text-align: left;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            display: block;
            width: 100%;
            max-width: 300px;
            padding: 10px;
            margin: 0 0 20px 0;
            border: 1px solid #ddd;
            border-radius: 3px;
            font-size: 16px;
        }

        /* 버튼 */
        button {
            display: block;
            width: 100%;
            max-width: 300px;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 3px;
            background-color: #2b96ed;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background-color: #1e87d4;
        }

        /* 에러 메시지 */
        .error-message {
            display: block;
            width: 100%;
            max-width: 300px;
            margin: 10px 0;
            color: red;
            font-size: 14px;
            text-align: left;
        }
    </style>
    <script>
        function validateForm() {
            // 아이디 입력값 검사
            var username = document.forms["signupForm"]["username"].value;
            if (username == "") {
                alert("아이디를 입력해주세요.");
                return false;
            }

            // 비밀번호 입력값 검사
            var password = document.forms["signupForm"]["password"].value;
            if (password == "") {
                alert("비밀번호를 입력해주세요.");
                return false;
            }

            // 이름 입력값 검사
            var name = document.forms["signupForm"]["name"].value;
            if (name == "") {
                alert("이름을 입력해주세요.");
                return false;
            }

            // 이메일 입력값 검사
            var email = document.forms["signupForm"]["email"].value;
            if (email == "") {
                alert("이메일을 입력해주세요.");
                return false;
            }
        }
    </script>
</head>
<body>
<%@include file="/WEB-INF/views/inc/header.jsp" %>

<h2>회원가입</h2>
<form action="/board/member/registerok" method="post">
    <label for="id">아이디</label>
    <input type="text" id="id" name="id" required>
    <label for="password">비밀번호</label>
    <input type="password" id="password" name="pw" required>
    <label for="name">이름</label>
    <input type="text" id="name" name="name" required>
    <label for="email">이메일</label>
    <input type="email" id="email" name="email" required>
    <button type="submit">회원가입</button>
</form>
</body>
</html>
