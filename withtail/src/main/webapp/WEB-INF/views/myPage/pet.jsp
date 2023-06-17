<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
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

.-min {
	min-height: 550px;
}

.petScreen {
	align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.add-content-container {
    align-items: center;
    background-color: white;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    padding: 30px 0px;
	width: 600px;
}
    
.add-content-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    width: 100%;
}

.petprofile-edit-btn {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 5px;
    justify-content: flex-end;
    padding: 0px 16px;
}

.minimal-text-btn {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 10px;
    padding: 2px;
    width: fit-content;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.text {
    font-size: 12px;
    font-weight: 400;
    margin-top: -1px;
    text-align: center;
    width: fit-content;
    color: rgb(91 91 91);
}

.separator {
    font-size: 12px;
    font-weight: 400;
    text-align: center;
    width: fit-content;
}

.input-content {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    justify-content: center;
    width: 400px;
}

.add-profile-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 15px;
    width: 400px;
}

.add-pet-image-layout {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 10px;
    height: 100px;
    width: 100px;
    position: relative;
}

.add-pet-image {
    height: 100px;
    min-width: 100px;
    object-fit: cover;
}

.pet-gender {
    position: absolute;
    top: 75px;
    left: 72px;
}

img {
    max-width: 100%;
}

.add-pets-name {
    color: rgb(68 148 241);
    font-size: 19px;
    font-weight: 500;
    text-align: center;
    width: 400px;
}

.add-pets-text-layout{
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 7px;
}

.add-pets-text-2 {
    align-self: stretch;
    color: black;
    font-size: 15px;
    font-weight: 400;
    text-align: center;
}

.btn10 {
	border: none;
    width: 400px;
    height: 57px;
    font-size: 14px;
    background-color: #82ae46;
    border-radius: 5px;
    color: white;
}
</style>

<div class="container -min">
	<div class="submenu-layout">
	  <ul>
	    <li><a class="submenu active" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/orders">주문조회</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a></li>
	    <li><a class="submenu" href="#">놀이터</a></li>
	  </ul>
	</div>
	
	<div class="petScreen">
		<div class="add-content-container">
			<div class="add-content-layout">
				<div class="petprofile-edit-btn">
					<div class="minimal-text-btn">
						<a class="text valign-text-middle" href="#">
							삭제
						</a>
					</div>
					<div class="separator"> |</div>
					<div class="minimal-text-btn">
						<a class="text valign-text-middle" href="#">
							수정
						</a>
					</div>
				</div>
				<div class="input-content">
					<div class="add-profile-layout">
						<div class="add-pet-image-layout">
							<img class="add-pet-image" alt="" src="${pageContext.request.contextPath}/resources/images/icon/dog1.png">
							<img class="pet-gender" width="25" height="25" alt="" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
						</div>
						<div class="add-pets-name valign-text-middle">
							아지
						</div>
						<div class="add-pets-text-layout">
							<div class="add-pets-text-2 valign-text-middle">
								생일 : 2010년 3월 5일 금요일 (13년 180일)
							</div>
							<div class="add-pets-text-2 valign-text-middle">
								무게 : 32.00kg
							</div>
							<div class="add-pets-text-2 valign-text-middle">
								품종 : 고든 세터
							</div>
							<div class="add-pets-text-2 valign-text-middle">
								관심 : 호흡기
							</div>
							<div class="add-pets-text-2 valign-text-middle">
								알러지 : 콩
							</div>
						</div>
					</div>
					<div>
						<button class="btn10" type="button">쇼핑하러 가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>		
</div>