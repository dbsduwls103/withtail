<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<style>
		.login-container {
			width: 400px;
			margin: 0 auto;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 20px;

		}

		.login-container h2 {
			text-align: center;
			margin-bottom: 30px;
		}

		.login-container .form-group {
			margin-bottom: 20px;
		}

		.login-container label {
			font-weight: bold;
			margin-bottom: 0;
		}

		.login-container input[type="text"],
		.login-container input[type="password"] {
			width: 100%;
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #ccc;
		}

		.login-container button[type="submit"] {
			width: 100%;
			padding: 15px;
			border-radius: 5px;
			background-color: #82ae46;
			color: #fff;
			border: none;
			margin-top: 10px;
		}

		.login-container button[type="submit"]:hover {
			color: black;
			background-color: #fff;
			border: 1px solid #82ae46;
		}
		
		.login-container button[type="submit"]:focus {
			color: black;
			background-color: #fff;
			border: 1px solid #82ae46;
		}
		
		hr {
		  border: 1px solid #ccc;

		}
	</style>
	
	<div class="login-container">
		<h2>로그인</h2>
		<form>
			<div class="form-group">
				<label for="username">아이디</label>
				<input type="text" class="form-control" id="username" placeholder="아이디">
			</div>
			<div class="form-group">
				<label for="password">비밀번호</label>
				<input type="password" class="form-control" id="password" placeholder="비밀번호">
			</div>
			<button type="submit" class="btn">로그인하기</button>
		</form>
		<div class="text-center mt-3">
			<p>
				<a href="#">아이디 찾기</a> |
				<a href="#">비밀번호 찾기</a>
			</p>
			<p>계정이 없으세요? <a href="#">회원가입</a></p>
		</div>
	</div>
