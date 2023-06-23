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

.profile-setting {
    align-items: flex-start;
    background-color: white;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    width: 100%;
    padding: 30px 0;
}

.profile-setting-title {
    color: black;
    font-size: 24px;
    font-weight: 700;
    margin-top: -1px;
    text-align: center;
    width: fit-content;
}

.profile-edit-container {
    align-items: flex-start;
    align-self: stretch;
    background-color: white;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 5px;
    justify-content: center;
    padding: 5px 0px;
}

.profile-edit-list {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    justify-content: center;
}

.profile-edit-text-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex: 1;
    gap: 10px;
    padding: 15px 25px;
}

.profile-edit-name {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 100px;
    align-self: start;
}

.profile-edit-name-text {
    margin-top: -1px;
    width: fit-content;
    color: var(--aloy-black);
    font-size: var(--font-size-16px);
    font-weight: 500;
    font-style: normal;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.profile-edit-value {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
}

.profile-edit-value-text {
    color: rgb(91 91 91);
    font-size: 15px;
    font-weight: 400;
    font-style: normal;
    flex: 1;
    margin-top: -1px;
}

hr {
	width: 100%; 
	margin-bottom: 0px;
	margin-top: 0px;
}

.bottom-min-text {
    display: flex;
    flex-direction: row;
    gap: 15px;
    padding-left: 10px;
}
.text-logout {
    display: flex;
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
    color: rgb(139 139 139);
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
	
	<div class="profile-setting">
		<p class="profile-setting-title">프로필</p>	
		<div class="profile-edit-container">
			<div class="profile-edit-list">
				<div class="profile-edit-text-layout">
					<div class="profile-edit-name">
						<div class="profile-edit-name-text valign-text-middle">
							이름
						</div>
					</div>
					<div class="profile-edit-value ">
						<div class="profile-edit-value-text valign-text-middle">
							${sessionScope.member.userName}
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="profile-edit-list">
				<div class="profile-edit-text-layout">
					<div class="profile-edit-name">
						<div class="profile-edit-name-text valign-text-middle">
							이메일
						</div>
					</div>
					<div class="profile-edit-value ">
						<div class="profile-edit-value-text valign-text-middle">
							${sessionScope.member.email}
						</div>
					</div>
				</div>
			</div>	
			<hr>
			<div class="profile-edit-list">
				<div class="profile-edit-text-layout">
					<div class="profile-edit-name">
						<div class="profile-edit-name-text valign-text-middle">
							비밀번호
						</div>
					</div>
					<div class="profile-edit-value ">
						<div class="profile-edit-value-text valign-text-middle">
							*********
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="profile-edit-list">
				<div class="profile-edit-text-layout">
					<div class="profile-edit-name">
						<div class="profile-edit-name-text valign-text-middle">
							휴대폰번호
						</div>
					</div>
					<div class="profile-edit-value ">
						<div class="profile-edit-value-text valign-text-middle">
							010-1111-1111
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom-min-text">
			<a class="text-logout" href="${pageContext.request.contextPath}/myPage/unregister">회원탈퇴</a>
			<p class="text-logout"> | </p>
			<a class="text-logout" href="#">로그아웃</a>
			<p class="text-logout"> | </p>
			<a class="text-logout" href="#">정보 수정</a>		
		</div>
	</div>
</div>