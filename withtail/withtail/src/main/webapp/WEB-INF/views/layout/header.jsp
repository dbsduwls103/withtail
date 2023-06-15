<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<style>
	ul, li {list-style: none; margin: 0; padding: 0;}
	
	/*검색창*/
	.searchbar {
		padding: 0;
		background-color: #f1f1f1;
		border-radius: 5px;
		width: 500px;
	}

	.searchbar input[type=text] {
		padding: 0 16px;
    	height: 42px;
		border: none;
		background-color: #f1f1f1;
		border-radius: 5px;
		color: rgba(91,91,91,1);
		outline: none;
		font-size: 14px;
		width: 100%;
	}

	.searchbar input[type=text]::placeholder {
		color: #999 !important;
	}

	/*카트*/
	.icon-shopping_cart {
		vertical-align: middle;
	}
	.cart-count {
		display: inline-block;
		border-radius: 50px;
		background-color: #82ae46;
		color: #fff;
		font-size: 10px;
		padding: 0px 5px;
		vertical-align: middle;
	}
	
	/*메뉴1*/
	.dropdown-item:hover {
		font-weight: 600;
	}

	/*메뉴2*/
	#menu {
	    height: 50px;
	    background: #fff;
	    position: relative;
	    z-index: 16;
	}
	
	#menu .nav-bold {
		font-weight: 600;
		font-size: 19px;
		color: #121212;
	}
	
	#menu li a {
		color: #121212;
	}
	
	.main1 {
	    width: 100%;
	    height: 100%;
	    margin: 0 auto;
	}
	
	.main1>li {
	    float: left;
	    line-height: 50px;
	    text-align: center;
	    position: relative;
	    width: 120px;
	}
	
	.main1>li:hover .main2 {
	    left: 0;
	}
	
	.main1>li a {
	    display: block;
	}
	
	.main1>li a:hover {
	    color: #82ae46 !important;
	    font-weight: 600;
	    text-indent: 5px;
	}
	
	.main2 {
	    position: absolute;
	    top: 50px;
	    left: -9999px;
	    background: #fff;
	    width: 120%;
	    border: 1px solid #eee;
	}
	
	.main2>li {
	    position: relative;
	}
	
	.main2>li:hover .main3 {
	    left: 100%;
	}
	
	.main2>li a, .main3>li a {
	    border-radius: 10px;
	    margin: 10px;
	}
	
	.main3 {
	    position: absolute;
	    top: 0;
	    background: #fff;
	    width: 80%;
	    left: -9999px;
	    border: 1px solid #eee;
	    /*left: 100%;*/
	    /*display: none;*/
	}
	
	.main3>li a:hover {
	    color: #82ae46;
	}
	
	/* 내 계정 > 로그인 */
	.a-login {
		background: #eee;
		text-align: center;
		border-top: 1px solid #dad7d7;
		padding-top: 10px;
		padding-bottom: 10px;
	}
	
	.a-login:hover {
		background: #eee !important;
	}
	
	.login_btn_span {
		background: #82ae46;
		padding: 5px 30px;
		color: #fff;
		display: inline-block;
		border-radius: 5px;
	}
	
	/* 환영합니다. */
	.a-user {
		border-top: 1px solid #dad7d7;
		padding-top: 5px;
		background: #eee;
	}
	.a-user:hover {
		font-weight: normal;
		cursor: auto;
		background: #eee !important;
	}
	
	@media (max-width: 1200px) {
		.searchbar {
		    width: 400px;
		}
	}
</style>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" style="z-index: 99;">
	    <div class="container">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/">
			<img src="${pageContext.request.contextPath}/resources/images/header/logo.png" alt="WithTale" style="width: 70px;">
		  </a>

		  <div class="searchbar">
			<form class="search-form">
				<div class="form-group">
				  <span class="icon ion-ios-search"></span>
				  <input type="text" class="" placeholder="위드테일에서 어떤 상품을 찾으세요?">
				</div>
			  </form>
		  </div>

	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="#" class="nav-link">고객상담</a></li>
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<img src="${pageContext.request.contextPath}/resources/images/header/icon_dog.png" alt="강아지" style="width: 34px;">
				</a>
				<div class="dropdown-menu" aria-labelledby="dropdown02">
					<a class="dropdown-item" href="#">
						<img src="${pageContext.request.contextPath}/resources/images/header/icon_dog.png" alt="강아지" style="width: 34px;"> 강아지
					</a>
					<a class="dropdown-item" href="#">
						<img src="${pageContext.request.contextPath}/resources/images/header/icon_cat.png" alt="고양이" style="width: 34px;"> 고양이
					</a>
				</div>
			  </li>
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/myPage/myPage" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">내 계정</a>
				<div class="dropdown-menu" aria-labelledby="dropdown03">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a>
					<a class="dropdown-item" href="#">주문 조회</a>
					<a class="dropdown-item" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a>
					<a class="dropdown-item a-login" href="${pageContext.request.contextPath}/member/login">
						<span class="login_btn_span">로그인</span>
					</a>
					<a class="dropdown-item a-user" href="#">
						김자바님 환영합니다.
					</a>
				</div>
              </li>
	          <li class="nav-item cta cta-colored"><a href="${pageContext.request.contextPath}/cart/cart" class="nav-link"><span class="icon-shopping_cart"></span><span class="cart-count">0</span> <span class="">장바구니</span></a></li>
			  <li class="nav-item"><a href="${pageContext.request.contextPath}/admin" class="nav-link"><i class="fa-solid fa-gear"></i></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
	
	<!-- menu2 -->
	<nav style="border-bottom: 1px inset #eee;">
		<div id="menu" class="container">
			<ul class="main1">
				<li><a href="#" class="nav-bold"><i class="fa-solid fa-bars" style="margin-right: 20px;"></i>쇼핑</a>
					<ul class="main2">
						<li><a href="#">강아지</a>
							<ul class="main3">
								<li><a href="${pageContext.request.contextPath}/shop/list">주식</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">간식</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">패션</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">산책·외출</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">건강보조제</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">홈·리빙</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">장난감</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">목욕·위생</a></li>
						</ul></li>
		
						<li><a href="#">고양이</a>
							<ul class="main3">
								<li><a href="${pageContext.request.contextPath}/shop/list">주식</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">간식</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">패션</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">장난감</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">홈·리빙</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">목욕·위생</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">산책·외출</a></li>
								<li><a href="${pageContext.request.contextPath}/shop/list">건강보조제</a></li>
						</ul></li>
					</ul></li>
		
				<li><a href="#" class="nav-bold">핫딜</a></li>
		
				<li><a href="#" class="nav-bold">랭킹</a></li>
				
				<li><a href="#" class="nav-bold">신상</a></li>
				
				<li><a href="#" class="nav-bold">놀이터</a>
					<ul class="main2">
						<li><a href="#">Tail & Path</a></li>
						<li><a href="#">커뮤니티</a></li>
					</ul></li>
		
				<li><a href="#" class="nav-bold">고객센터</a>
					<ul class="main2">
						<li><a href="#">1:1문의</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">공지사항</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
<!-- //menu2 -->
