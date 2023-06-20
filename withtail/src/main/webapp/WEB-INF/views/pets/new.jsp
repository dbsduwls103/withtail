<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/dogs.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/cats.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/newAnimal.js"></script>


<style>
main {
	background-color: #f8f8f8;
}

.step1 {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.-min {
	min-height: 450px;
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

.top-btn {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    justify-content: flex-end;
    padding: 0px 16px;
}

.icon-1 {
    height: 15px;
    width: 15px;
}

img {
	max-width: 100%;
	vertical-align: middle;
    border-style: none;
}

.add-content-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    justify-content: center;
    width: fit-content;
}

.add-step-title {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 600px;
}

.add-title {
    align-self: stretch;
    color: black;
    font-size: 24px;
    font-weight: 700;
    text-align: center;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.add-content {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 60px;
    justify-content: center;
    width: fit-content;
}

.hidden {
  display: none;
}

.add-pet-image-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 10px;
    justify-content: center;
    width: fit-content;
}

.add-pet-image {
    height: 100px;
    width: 100px;
    object-fit: cover;
}

img {
    max-width: 100%;
}

.add-text {
    text-align: center;
    width: fit-content;
    color: black;
    font-size: 16px;
    font-weight: 400;
    font-style: normal;
}

.input-content {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 11px;
    justify-content: center;
    width: 400px;
}

.step2 {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.icon {
    height: 15px;
    width: 18px;
    min-width: 20px;
}

.inp {
	width: 400px;
    height: 60px;
    border-radius: 5px;
    border: solid 1px #bebebe;
}

.btn-2 {
	width: 400px;
    height: 70px;
    border-radius: 5px;
    border: none;
    color: white;
    background-color: #bebebe;
}

input::placeholder {
	margin-left: 20px;
	color: #bebebe;
}

.step3 {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}



.step4 {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.step5 {
	align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.step6 {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.step7 {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.step8 {
	align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.img-viewer {
    cursor: pointer;
    width: 170px;
    height: 170px;
    border-radius: 45px;
    background-image: url(${pageContext.request.contextPath}/resources/images/icon/camera.png);
    position: relative;
    z-index: 9999;
    background-repeat: no-repeat;
    background-size: cover;
}

.step9 {
	align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px 0px;
    width: 100%;
}

.add-profile-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 15px;
    width: 400px;
}


.pet-gender {
    position: absolute;
    top: 75px;
    width: 25px;
    left: 72px;
    height: 25px;
}

.add-pets-name {
    color: rgb(68 148 241);
    font-size: 19px;
    font-weight: 500;
    text-align: center;
    width: 400px;
}

.add-pets-text-layout {
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

.btn-2.active {
  background-color: #82ae46;
}

.imgbox {
align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 10px;
    height: 100px;
    width: 100px;
    position: relative;
}

</style>

<div class="container -min">
	<form id="form">
		<!-- 나의반려동물은? -->
		<div class="step1">
			<div class="add-content-container">			
				<div class="top-btn">
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>
				</div>			
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							나의 반려동물은?
						</div>
					</div>
					<div class="add-content">
						<div class="add-pet-image-layout">
							<img class="add-pet-image" id="dogPhoto" src="${pageContext.request.contextPath}/resources/images/icon/dog1.png" style="cursor: pointer;">
							<div class="add-text">강아지</div>							
						</div>
						<div class="add-pet-image-layout">
							<img class="add-pet-image" id="catPhoto" src="${pageContext.request.contextPath}/resources/images/icon/cat2.png" style="cursor: pointer;">
							<div class="add-text">고양이</div>							
						</div>
					</div>				
				</div>
			</div>	
		</div>
		<!-- 이름을 알려주세요 -->
		<div class="step2" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							이름을 알려주세요.
						</div>
					</div>
					<div class="input-content">
						<input type="text" class="inp" placeholder="텍스트를 입력하세요.">
						<div class="error-text"></div>
					</div>				
					<div>
						<button type="button" class="btn-2" disabled>다음</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 성별 -->
		<div class="step3" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 성별은요?
						</div>
					</div>
					<div class="add-content">
						<div class="add-pet-image-layout">
							<img class="add-pet-image" id="" onclick="" src="${pageContext.request.contextPath}/resources/images/icon/male2.png" style="cursor: pointer;">
							<div class="add-text">남</div>							
						</div>
						<div class="add-pet-image-layout">
							<img class="add-pet-image" id="" onclick="" src="${pageContext.request.contextPath}/resources/images/icon/female.png" style="cursor: pointer;">
							<div class="add-text">여</div>							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 몸무게 -->
		<div class="step4" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 몸무게는요?
						</div>
					</div>
					<div class="input-content">
						<input type="text" class="inp" placeholder="텍스트를 입력하세요.">
						<div class="error-text"></div>
					</div>				
					<div>
						<button type="button" class="btn-2" disabled>다음</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 생일 -->
		<div class="step5" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 생일은 언제인가요?
						</div>
						<div class="error-text"></div>
					</div>
					<div class="input-content">
						<input type="date" class="inp" >
					</div>				
					<div>
						<button type="button" class="btn-2" disabled>다음</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 견종 -->
		<div class="step6" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 견종은요?
						</div>
					</div>
					<div class="input-content">
						<input type="text" class="inp" id="tags" placeholder="견종을 검색해주세요.">
					</div>				
					<div>
						<button type="button" class="btn-2" disabled>다음</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 묘종 -->
		<div class="step7" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 묘종은요?
						</div>
					</div>
					<div class="input-content">
						<input type="text" class="inp" id="tags1" placeholder="묘종을 검색해주세요.">
					</div>				
					<div>
						<button type="button" class="btn-2" disabled>다음</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 사진업로드 -->
		<div class="step8" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 사진을 골라주세요.
						</div>
					</div>
					<div class="input-content">
						<div class="img-viewer"></div>
						<input type="file" name="selectFile" accept="image/*" style="display: none;" class="form-control">	
						<p>사진은 1장 업로드 가능합니다.</p>					
					</div>				
					<div>
						<button type="button" class="btn-2">다음</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 폼제출 -->
		<div class="step9" style="display: none;">
			<div class="add-content-container">
				<div class="top-btn" style="justify-content: space-between;">
					<div>
						<img class="icon" alt="" src="${pageContext.request.contextPath}/resources/images/icon/back.png">
					</div>
					<a href="${pageContext.request.contextPath}/myPage/myPage">
						<img class="icon-1" alt=""  src="${pageContext.request.contextPath}/resources/images/icon/close.png">
					</a>				
				</div>
				<div class="add-content-layout">
					<div class="add-step-title">
						<div class="add-title valign-text-middle">
							아지의 프로필이 완료되었습니다.
						</div>
					</div>
					<div class="input-content">
						<div class="add-profile-layout">
							<div class="imgbox">
								<img class="add-pet-image" alt="" src="${pageContext.request.contextPath}/resources/images/icon/dog1.png">
								<img class="pet-gender" alt="" src="${pageContext.request.contextPath}/resources/images/icon/male.png">
							</div>
							<div class="add-pets-name valign-text-middle">
								아지
							</div>
							<div class="add-pets-text-layout">
								<div class="add-pets-text-2 valign-text-middle">
									생일 : 2023년 06월 20일 화요일(0년 0일)
								</div>
								<div class="add-pets-text-2 valign-text-middle">
									무게 : 24kg
								</div>
								<div class="add-pets-text-2 valign-text-middle">
									품종 : 말티즈
								</div>
							</div>
						</div>				
					</div>				
					<div>
						<button type="button" class="btn-2" onclick="location.href='${pageContext.request.contextPath}/'" >쇼핑하러 가기</button>
					</div>
				</div>
			</div>
		</div>
		
	</form>
</div>

