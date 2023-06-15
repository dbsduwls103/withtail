<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <style>
    /* 네비게이션 탭 스타일 */


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

.favorite {
    align-items: flex-start;
    background-color: var(--aloy-white);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    padding: 30px 0px;
    width: 100%;
}
	
.favorite-title-layout {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
}

.valign-text-bottom {
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
}

.favorite-title {
    color: var(--aloy-black);
    width: fit-content;
    font-size: var(--font-size-24px);
    font-weight: 700;
    font-style: normal;
}

.valign-text-bottom {
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
}

.favorite-section {
    align-items: flex-start;
    align-self: stretch;
    border-top: 1px solid;
    border-bottom: 1px solid;
    border-color: #f1f1f1;
    display: flex;
    flex-direction: column;
}

.favorite-list {
    align-items: center;
    align-self: stretch;
    background-color: var(--aloy-white);
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 20px 16px;
}

.f-product-info {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 50px;
}

.f-product-image-layout {
    align-items: flex-start;
    background-color: var(--aloy-white);
    border: 1px solid;
    border-color: var(--aloy-gray4-stroke);
    border-radius: 5px;
    display: flex;
    gap: 10px;
    width: fit-content;
    overflow: hidden;
}

.f-product-image {
    height: 90px;
    min-width: 90px;
    object-fit: cover;
    max-width: 100%;
}

.f-product-wrap {
	display: contents;
}

.f-product-name {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: center;
    cursor: pointer;
}

.f-product-text-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
}

.f-brand-text {
    margin-right: -201px;
    margin-top: -1px;
    color: var(--aloy-gray6);
    font-size: 13px;
    font-weight: 400;
    font-style: normal;
}

.f-product-name .valign-text-middle {
    cursor: pointer;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.f-item-text {
    overflow: hidden;
    display: -webkit-box !important;
    color: #545454;
    font-weight: 200;
    font-style: normal;
}

.-min {
	min-height: 550px;
}

.rating {
    display: flex;
    align-items: flex-end;
    margin-bottom: 10px;
}

.stars {
    margin-right: 3px;
    display: flex;
    align-items: flex-start;
}

.star-layout {
    width: 14px;
    height: 14px;
    display: flex;
}

img {
    max-width: 100%;
}

.star-layout-two {
    width: 14px;
    height: 14px;
    display: flex;
}

.f-price-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 10px;
    width: fit-content;
}

.f-price-underline {
    color: #b9b9b9;
    font-size: 12px;
    font-weight: 400;
    font-style: normal;
    text-align: right;
    text-decoration: line-through;
    width: fit-content;
}

.f-price-text {
	color: black;
	font-size: 20px;
	font-weight: 500;
	font-style: normal;
	margin-top: -1px;
	text-align: right;
	width: fit-content;
}

.f-button-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 50px;
    width: fit-content;
}

hr.vertical-line {
    display: inline-block;
    border: none;
    border-left: 1px solid #b9b9b9;
    height: 38px;
    margin: 0;
  }

.btn1 {
	border-radius: 3px;
   	background-color: #82ae46;
   	border: none;
   	height: 35px;
    width: 140px;
    color: #fff;
    font-size: 13px;
}

.btn1:hover {
	border-radius: 3px;
   	background-color: #3b6601;
   	border: none;
   	height: 35px;
    width: 140px;
    color: #fff;
    font-size: 13px;
}

  </style>

  <div class="container -min">
	<div class="submenu-layout">
	  <ul>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a></li>
	    <li><a class="submenu" href="#">주문조회</a></li>
	    <li><a class="submenu active" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a></li>
	    <li><a class="submenu" href="#">놀이터</a></li>
	  </ul>
	</div>
 	
 	<div class="favorite">
 		<div class="favorite-title-layout">
 			<div class="favorite-title valign-text-bottom">
 				<p style="font-size: 24px; color: black; font-weight: 1000; margin-bottom: -10px;">즐겨찾기</p>
 			</div>
 		</div>
 	</div>
 	
 	<div class="favorite-section">
 		<hr style="border-color: #f1f1f1; width: 100%; border: 1px solid; margin-bottom: 0px; margin-top: 0px;">
 		<div class="favorite-list">
 			<div class="f-product-info">
			 	<div style="position: relative;">
 					<a class="f-product-image-layout" href="#">
 						<img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg">
 					</a>
 				</div>	
 				<div class="f-product-wrap">
 					<div style="display: contents;"> 
 						<div class="f-product-name">
							<div class="f-product-text-layout">
								<a class="f-brand-text valign-text-middle" href="#">두바보</a>
								<a class="f-item-text valign-text-middle" href="#" style="font-size: 15px;">두바보 MDF 펜던트 (펜던트만) P13</a>
								<a href="#" style="display: contents">		
									<div class="rating">
										<div class="stars">
											<div class="star star-layout">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
										</div>
									</div>
								</a>	
							</div>
							<a class="f-price-layout" href="#">
								<div class="f-price-text valign-text-middle">
									3,960원
								</div>
								<div class="f-price-underline valign-text-middle">
									7,500원
								</div>								
							</a> 						
 						</div>
 					</div>
 				</div>
 				<div class="f-button-layout">
 					<hr class="vertical-line">
 					<button class="btn1">장바구니 담기</button>							
 					<hr class="vertical-line">
 					<a href="#">삭제</a>
 				</div>
 			</div>	
 		</div>	
 		
 		<!-- 위 내용 반복임 c:foreach 사용해서 구현할것. -->
 		<hr style="border-color: #f1f1f1; width: 100%; border: 1px solid; margin-bottom: 0px; margin-top: 0px;">
 		<div class="favorite-list">
 			<div class="f-product-info">
			 	<div style="position: relative;">
 					<a class="f-product-image-layout" href="#">
 						<img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg">
 					</a>
 				</div>	
 				<div class="f-product-wrap">
 					<div style="display: contents;"> 
 						<div class="f-product-name">
							<div class="f-product-text-layout">
								<a class="f-brand-text valign-text-middle" href="#">두바보</a>
								<a class="f-item-text valign-text-middle" href="#" style="font-size: 15px;">두바보 MDF 펜던트 (펜던트만) P13</a>
								<a href="#" style="display: contents">		
									<div class="rating">
										<div class="stars">
											<div class="star star-layout">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
										</div>
									</div>
								</a>	
							</div>
							<a class="f-price-layout" href="#">
								<div class="f-price-text valign-text-middle">
									3,960원
								</div>
								<div class="f-price-underline valign-text-middle">
									7,500원
								</div>								
							</a> 						
 						</div>
 					</div>
 				</div>
 				<div class="f-button-layout">
 					<hr class="vertical-line">
 					<button class="btn1">장바구니 담기</button>							
 					<hr class="vertical-line">
 					<a href="#">삭제</a>
 				</div>
 			</div>	
 		</div>
 		
 		
 	</div>
  
	
  </div>

