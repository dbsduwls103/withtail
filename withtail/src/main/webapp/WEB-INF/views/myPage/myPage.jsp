<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
  <title>WithTale</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap5/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap5/icon/bootstrap-icons.css" type="text/css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/jquery/js/jquery.min.js"></script>

  <style>
    /* 네비게이션 탭 스타일 */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      border-width: 0;
      border-style: solid;
    }

    .submenu-layout {
      box-sizing: content-box;
      background-color: #f8f8f8;
      border-radius: 75px;
      display: flex;
      align-items: center;
      width: 29%;
      max-width: 800px;
      margin-top: 80px;
      overflow-x: auto;
    }

    .submenu-layout ul {
      display: flex;
      list-style-type: none;
      padding: 0;
    }
    
    .submenu {
      cursor: pointer;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      flex: 1;
      min-width: 80px;
      height: 32px;
    }


    
     .submenu.active {
    background-color: #82ae46;
    color: white;
  }

  a {
	    color: #8b8b8b;
	}
	
	.submenu.active {
	  background-color: #82ae46;
	  color: white;
	}

.mypage {
    align-items: flex-start;
    background-color: var(--aloy-white);
    border: 1px none;
    display: flex;
    gap: 80px;
    justify-content: center;
    padding: 30px 0px;
    width: 100%;
}

.profile-section {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    gap: 20px;
}

.upper-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.title {
    color: var(--aloy-black);
    font-size: var(--font-size-24px);
    font-weight: 700;
    font-style: normal;
    align-self: stretch;
}

.profile-section .pets-layout {
    gap: 10px;
}

.pets-layout {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    align-self: stretch;
    margin-bottom: -28px;
}

.title-layout {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    justify-content: center;
}

.title-two {
    color: #121212;
    flex: 1;
    font-size: 16px;
    font-weight: 500;
}

.title-three {
    color: #4494f1;
    font-size: 12px;
    font-weight: 400;
}

.pets-profile {
    background-color: #f8f8f8;
    border-radius: 5px;
    padding: 20px;
    display: flex;
    align-items: center;
    align-self: stretch;
    flex-wrap: wrap;
    row-gap: 10px;
}
}

.pets-profile .pets {
    margin-right: 0px;
    flex-grow: 0 !important;
    flex-basis: calc((100% - 20px)/3);
}

.pets {
    align-items: center;
    background-color: rgb(255 255 255);
    border: 1px solid;
    border-color: rgb(101 165 239);
    border-radius: 5px;
    display: flex;
	width: 30%;
    height: 80px;
    justify-content: center;
    flex-basis: 30.33%;
    margin-left: 11px;
}

.setting {
    align-items: flex-end;
    background-color: var(--aloy-white);
    border: 1px solid;
    border-color: var(--aloy-gray4-stroke);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    width: 300px;
}

.detailed-information {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    justify-content: flex-start;
    padding: 16px 20px;
}

.detailed-information .information-layout {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    flex: 1;
}

.detailed-information .text-layout {
    margin-left: -1px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    align-self: stretch;
}

.detailed-information .text {
    color: #000;
    align-self: stretch;
    font-size: 12px;
    font-weight: 400;
}

.image-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: center;
}

.image {
    height: 50px;
    min-width: 50px;
    object-fit: cover;
    position: relative;
    aspect-ratio: 1/1 !important;
    width: 50px;
}

.image .gender {
    position: absolute;
    right: 0px;
    bottom: 0px;
    z-index: 3;
    width: 20px;
    height: 20px;
}

.image img {
    object-fit: cover;
    aspect-ratio: 1/1 !important;
    max-width: 100%;
}

.my-pet {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: center;
    flex-basis: min-content !important;
}

.pets-name {
    align-self: stretch;
    margin-top: -1px;
    color: #121212;
    font-size: 12px;
    font-weight: 400;
}

.pets-text-layout {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    align-self: stretch;
}

.pets-text {
    color: #8b8b8b;
    align-self: stretch;
    font-size: 12px;
    font-weight: 400;
}

  </style>
</head>

<body>
  <div class="container">
	<div class="submenu-layout">
	  <ul>
	    <li><a class="submenu active" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a></li>
	    <li><a class="submenu" href="#">주문조회</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a></li>
	    <li><a class="submenu" href="#">놀이터</a></li>
	  </ul>
	</div>
 
  
	  <div class="mypage">
	  	<div class="profile-section">
	  		<div class="upper-layout">
	  			<p style="font-size: 24px; color: black; font-weight: 1000; margin-bottom: -10px;">김성훈 집사님, 안녕하세요!</p>
	  			<p>
	  				이 곳에서는 계정 정보를 설정할 수 있어요.
	  			<br>
	  				내 계정 정보를 설정하고 신나는 쇼핑하러 가보실까요?
	  			</p>
	  		</div>
	  		
	  		<div class="pets-layout">
	  			<div class="title-layout">
	  				<p class="title-two">사랑하는 우리 아이</p>
	  				<p class="title-three"><a class="title-three" href="#">+ 다른 아이가 더 있나요?</a></p>
	  			</div>
	  		</div>
	  		<div class="pets-profile d-none d-md-flex">
	  			
	  			<!-- 반복임 foreach사용 바람 -->
	  			<a class="pets" href="#">
	  				<div class="image-layout">
	  					<div class="image">
		  					<img alt="gender" class="gender" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
		  					<img src="${pageContext.request.contextPath}/resources/images/icon/dog1.png">
	  					</div>
	  				</div>
	  				<div class="my-pet">
	  					<p class="pets-name" style="margin-bottom: 0px;">아지</p>
	  					<div class="pets-text-layout">
	  						<p class="pets-text" style="margin-bottom: 0px;">말티즈</p>	  						
	  					</div>
	  				</div>
	  			</a>
	  			<a class="pets" href="#">
	  				<div class="image-layout">
	  					<div class="image">
		  					<img alt="gender" class="gender" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
		  					<img src="${pageContext.request.contextPath}/resources/images/icon/dog1.png">
	  					</div>
	  				</div>
	  				<div class="my-pet">
	  					<p class="pets-name" style="margin-bottom: 0px;">아지</p>
	  					<div class="pets-text-layout">
	  						<p class="pets-text" style="margin-bottom: 0px;">말티즈</p>	  						
	  					</div>
	  				</div>
	  			</a>
	  			
	  			<a class="pets" href="#">
	  				<div class="image-layout">
	  					<div class="image">
		  					<img alt="gender" class="gender" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
		  					<img src="${pageContext.request.contextPath}/resources/images/icon/cat2.png">
	  					</div>
	  				</div>	
	  				<div class="my-pet">
	  					<p class="pets-name" style="margin-bottom: 0px;">아지</p>
	  					<div class="pets-text-layout">
	  						<p class="pets-text" style="margin-bottom: 0px;">말티즈</p>	  						
	  					</div>
	  				</div>
	  			</a>
	  			
	  			<a class="pets" href="#">
	  				<div class="image-layout">
	  					<div class="image">
		  					<img alt="gender" class="gender" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
		  					<img src="${pageContext.request.contextPath}/resources/images/icon/dog1.png">
	  					</div>
	  				</div>
	  				<div class="my-pet">
	  					<p class="pets-name" style="margin-bottom: 0px;">아지</p>
	  					<div class="pets-text-layout">
	  						<p class="pets-text" style="margin-bottom: 0px;">말티즈</p>	  						
	  					</div>
	  				</div>
	  			</a>
	  		
	  			<a class="pets" href="#">
	  				<div class="image-layout">
	  					<div class="image">
		  					<img alt="gender" class="gender" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
		  					<img src="${pageContext.request.contextPath}/resources/images/icon/cat2.png">
	  					</div>
	  				</div>
	  				<div class="my-pet">
	  					<p class="pets-name" style="margin-bottom: 0px;">아지</p>
	  					<div class="pets-text-layout">
	  						<p class="pets-text" style="margin-bottom: 0px;">말티즈</p>	  						
	  					</div>
	  				</div>
	  			</a>
	  			
	  		</div> 	
	  			
	  	</div> 
	  	
	  	<div class="setting">
			<a href="#" class="detailed-information"> 	  	
				<div>
					<div class="information-layout">
						<p class="title-two" style="margin-bottom: 0px" >프로필</p>
						<div class="text-layout">
							<p style="margin-bottom: 0px; font-size: 10px;">김성훈</p>
							<p style="margin-bottom: 0px; font-size: 10px;">jy98220@naver.com</p>
							<p style="margin-bottom: 0px; font-size: 10px;">비밀번호 : ********</p>						
						</div>
					</div>
				</div>  
			</a>
			<hr style="width: 100%; margin-top: 0px; margin-bottom: 0px;">
		
			<a href="#" class="detailed-information">	
				<div>
					<div class="information-layout">
						<p class="title-two" style="margin-bottom: 0px" >자주 쓰는 배송지</p>
						<div class="text-layout">
							<p style="margin-bottom: 0px; font-size: 10px;">없음</p>					
						</div>
					</div>
				</div> 	
			</a>
				<hr style="width: 100%; margin-top: 0px; margin-bottom: 0px;">
			
			<a href="#" class="detailed-information">		
				<div>
					<div class="information-layout">
						<p class="title-two" style="margin-bottom: 0px" >적립금</p>
						<div class="text-layout">
							<p style="margin-bottom: 0px; font-size: 10px;">1000원</p>					
						</div>
					</div>
				</div> 	
			</a>
			<hr style="width: 100%; margin-top: 0px; margin-bottom: 0px;">
		
			<a href="#" class="detailed-information">
				<div>
					<div class="information-layout">
						<p class="title-two" style="margin-bottom: 0px" >쿠폰</p>
						<div class="text-layout">
							<p style="margin-bottom: 0px; font-size: 10px;">1장</p>					
						</div>
					</div>
				</div> 	
			</a>
				<hr style="width: 100%; margin-top: 0px; margin-bottom: 0px;">
	  	</div>
	  		
	  </div>
  </div>



  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/bootstrap5/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/fontawesome/js/all.min.js"></script>

  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>

  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>