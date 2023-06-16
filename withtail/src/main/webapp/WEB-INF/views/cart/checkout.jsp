<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>

main {
	background-color: #f8f8f8;
}
.order{
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    padding: 30px 0px;
}

.order-title-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
}

.order-title {
    flex: 1;
    margin-top: -1px;
    color: black;
    font-size: 24px;;
    font-weight: 700;
    font-style: normal;
}

.-min {
	min-height: 550px;
}

.order-section {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 20px;
}

.order-information-container {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    flex: 1;
    min-width: 588px;
}

.order-information-wrap {
    align-items: center;
    align-self: stretch;
    background-color: rgb(255 255 255);
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 20px;
    justify-content: center;
    padding: 20px 30px;
}

.delivery-layout {
    align-items: flex-start;
    align-self: stretch;
    display: flex;
    flex-direction: column;
    gap: 25px;
}

.information-title-layout {
    align-items: center;
    align-self: stretch;
    display: flex;
    gap: 10px;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.information-title {
    flex: 1;
    margin-top: -1px;
    color: black;
    font-size: 19px;
    font-weight: 500;
}

.minimal-text-btn {
    align-items: flex-start;
    display: flex;
    gap: 10px;
    padding: 2px;
}

.text {
    margin-top: -1px;
    min-width: 27px;
    text-align: center;
    color: rgb(68 148 241);
    font-size: 15px;
    font-weight: 400;
}

.delivery-information {
    align-items: flex-start;
    align-self: stretch;
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.list {
    margin-top: -1px;
    width: 70px;
	font-size: 15px;
    font-weight: 300;
}

.text-1 {
    flex: 1;
    margin-top: -1px;
    font-size: 15px;
    font-weight: 400;
}

.x-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
    word-break: break-all;
}

.add-address-text {
    color: rgb(139 139 139);
    font-size: 15px;
    font-weight: 400;
    font-style: normal;
    text-align: center;
    width: fit-content;
}

.address-box.selected {
    background-color: white;
}

.address-icon-bar {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    justify-content: flex-end;
}

.icon {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 10px;
    height: 20px;
    min-width: 20px;
}

.registered-address-box {
    align-items: center;
    background-color: rgb(248 248 248);
    border: 1px none;
    border-radius: 20px;
    display: flex;
    padding: 1px 5px;
}

.registered-address-name {
    margin-top: -1px;
    min-width: 52px;
    color: rgb(139 139 139);
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
}

.right-icon-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex: 1;
    gap: 2px;
    justify-content: flex-end;
}

.minimal-text-btn {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 10px;
    padding: 2px;
}

.text-2 {
    margin-top: -1px;
    min-width: 22px;
    text-align: center;
    color: rgb(139 139 139);
    font-size: 12px;
    font-weight: 400;
    font-style: normal;
}

.address-text-wrap {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: space-between;
}

.address-text-layout-1 {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 4px;
}

.address-box.selected .registered-address-name-1 {
    color: rgb(68 148 241);
}

.registered-address-name-1 {
    align-self: stretch;
    margin-top: -1px;
    color: black;
    font-size: 15px;
    font-weight: 500;
    font-style: normal;
}

.registered-address-1 {
    color: #999393;
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
    overflow: hidden;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    display: -webkit-box !important;
    -webkit-box-orient: vertical;
    align-self: stretch;
}

.phone-number-1 {
    color: black;
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
    align-self: stretch;
    margin-top: -21px;
}

.message-1 {
    color: rgb(139 139 139);
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
    overflow: hidden;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    line-clamp: 2;
    display: -webkit-box !important;
    -webkit-box-orient: vertical;
    align-self: stretch;
}

.address-check-btn {
    align-items: center;
    border: 1px none;
    border-radius: 3px;
    display: flex;
    flex-direction: column;
    height: 24px;
    justify-content: center;
    width: 60px;
}

.address-box1 {
    align-items: center;
    background-color: white;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex: 1;
    flex-direction: column;
    gap: 10px;
    height: 200px;
    justify-content: center;
    padding: 10px 15px;
    flex-grow: 0 !important;
    flex-basis: calc(33% - 5px) !important;
}

.address-box {
    align-items: flex-start;
    background-color: rgb(248 248 248);
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex: 1;
    flex-direction: column;
    gap: 7px;
    height: 200px;
    padding: 10px 15px;
    word-break: break-all;
    flex-grow: 0 !important;
    flex-basis: calc(33% - 5px) !important;
}

.coupon-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.coupon {
    align-items: flex-start;
    background-color: rgb(255 255 255);
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 5px;
    padding: 16px;
    flex-basis: calc(50% - 5px);
    min-height: 138px;
    justify-content: space-between;
}

.coupon:hover {
    align-items: flex-start;
    background-color: #f5fbff;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 5px;
    padding: 16px;
    flex-basis: calc(50% - 5px);
    min-height: 138px;
    justify-content: space-between;
}

.coupon:checked {
    align-items: flex-start;
    background-color: #f5fbff;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 5px;
    padding: 16px;
    flex-basis: calc(50% - 5px);
    min-height: 138px;
    justify-content: space-between;
}

.coupon-upper {
    align-self: stretch;
    border: 1px none;
    display: flex;
}

.coupon-text-layout {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
}

.coupon-title {
    flex: 1;
    margin-top: -1px;
    white-space: nowrap;
    font-size: 14px;
    font-weight: 500;
    color: black;
}

.coupon-text {
    font-size: 24px;
    font-weight: 700;
    color: black;
}

.coupon-lower {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 5px;
}

.restriction {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    
}

.restriction-text {
    align-self: stretch;
    display: inline-block;
    font-size: 11px;
    font-weight: 300;
    color: rgb(139 139 139);
    margin-bottom: 0px;
}

.count1 {
    align-items: flex-end;
    font-size: 14px;
    color: gray;
	margin-right: 11px;
}

.point-wrap {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 25px;
}

.point-layout {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 10px;
    width: 100%;
    justify-content: space-between;
}

.information-title {
    width: fit-content;
    color: black;
    font-size: 19px;
    font-weight: 500;
}

.point {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 4px;
    justify-content: flex-end;
}

</style>

<div class="container -min">
	<div class="order">
		<div class="order-title-layout">
			<div class="order-title">주문 / 결제</div>
		</div>
		<div class="order-section">
			<div class="order-information-container">
				<div class="order-information-wrap">
					<div class="delivery-layout ">
						<div class="information-title-layout">
							<div class="information-title valign-text-middle">배송지 정보</div>
							<div class="minimal-text-btn">
								<div class="text valign-text-middle" onclick="showInputField()">
									변경</div>
							</div>
						</div>

						<!-- 주소지 추가 -->
						<div class="x-layout two-row-scroll">
							<!-- 새로운 주소지 추가 -->
							<a href="#" class="address-box1">
								<div>
									<div
										class="add-address-text valign-text-middle notosanskr-normal-stack-15px">
										+ <br> 새로운 주소 추가
									</div>
								</div>
							</a>
							<!-- 기본 배송지 -->
							<div class="address-box selected">
								<div class="address-icon-bar">
									<div class="icon">
										<div class="registered-address-box">
											<div class="registered-address-name">기본배송지</div>
										</div>
									</div>
									<div class="right-icon-layout">
										<div class="minimal-text-btn">
											<a href="#" class="text-2 valign-text-middle"> 수정 </a>
										</div>
										<span>&nbsp;&nbsp;|&nbsp;&nbsp; </span>
										<div class="minimal-text-btn">
											<a href="#" class="text-2 valign-text-middle"> 삭제 </a>
										</div>
									</div>
								</div>
								<div class="address-text-wrap">
									<div class="address-text-layout-1">
										<div class="registered-address-name-1 valign-text-middle">
											최수징</div>
										<p class="registered-address-1 valign-text-middle">경기도 고양시
											일산서구 무슨로123 무슨아프트 110동 404호 10371</p>
										<div class="phone-number-1 valign-text-middle">
											010-1111-1111</div>
										<p class="message-1 valign-text-middle">택배함에 넣어주세요.</p>
									</div>
									<div class="address-check-btn">
										<button type="button" class="">선택</button>
									</div>
								</div>
							</div>
							<!-- 일반 배송지1 -->
							<div class="address-box">
								<div class="address-icon-bar">
									<div class="icon"></div>
									<div class="right-icon-layout">
										<div class="minimal-text-btn">
											<a href="#" class="text-2 valign-text-middle"> 수정 </a>
										</div>
										<span>&nbsp;&nbsp;|&nbsp;&nbsp; </span>
										<div class="minimal-text-btn">
											<a href="#" class="text-2 valign-text-middle"> 삭제 </a>
										</div>
									</div>
								</div>
								<div class="address-text-wrap">
									<div class="address-text-layout-1">
										<div class="registered-address-name-1 valign-text-middle">
											김성훈</div>
										<p class="registered-address-1 valign-text-middle">경기도 화성시
											일산서구 무슨로123 무슨아프트 110동 404호 10371</p>
										<div class="phone-number-1 valign-text-middle">
											010-2222-2222</div>
										<p class="message-1 valign-text-middle">택배함에 넣어주세요.</p>
									</div>
									<div class="address-check-btn">
										<button type="button" class="">선택</button>
									</div>
								</div>
							</div>












							<!-- 
            <div class="delivery-information">
              <div class="x-layout">
                <div class="list valign-text-middle">
                  받는 사람
                </div>
                <div class="text-1 valign-text-middle" id="recipientValue">
                  최수징
                </div>								
              </div>
              <div class="x-layout">
                <div class="list valign-text-middle">
                  배송지
                </div>
                <p class="text-1 valign-text-middle" id="addressValue">
                  무슨도 무슨시 무슨무슨로 120(무슨종, 무슨아티플 2차 아파트) 111동 111호
                </p>								
              </div>
              <div class="x-layout">
                <div class="list valign-text-middle">
                  연락처
                </div>
                <div class="text-1 valign-text-middle" id="contactValue">
                  010-1111-1111
                </div>								
              </div>
            </div>
             -->


						</div>
					</div>
					<hr
						style="width: 100%; border-color: #a2a2a2; margin-bottom: 0px; margin-top: 0px; border-width: 1px;">
					
					<!-- 쿠폰선택 -->
					<div class="accordion accordion-flush" id="accordionFlushExample"
						style="width: 1050px; --bs-accordion-active-color: #fff; --bs-accordion-active-bg: #fff; --bs-accordion-btn-focus-box-shadow: 0 0 0 0.25rem rgb(255 255 255/ 25%);
								--bs-accordion-border-color: fff">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="pl-0 pt-0 accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="false" aria-controls="flush-collapseOne">
									<div class="information-title valign-text-middle">쿠폰</div>
									<div class="information-title valign-text-middle count1">보유 쿠폰 2장</div>
								</button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body pl-0">
									<div class="coupon-layout">
										<div class="coupon" style="cursor: pointer;">
											<div class="coupon-upper">
												<div class="coupon-text-layout">
													<div class="coupon-title valign-text-middle">
														위드테일과 첫만남★ 5,000원 할인 쿠폰
													</div>
													<div class="coupon-text valign-text-middle">
														5,000원
													</div>
												</div>
												<input type="checkbox">
											</div>
											<div class="coupon-lower">
												<div class="restriction">
													<p class="restriction-text valign-text-middle">
														<span>- 사용기간 : ~</span>
														<span>2023. 6. 16 오전 8:30:57</span>
														<span>까지</span>
													</p>
													<p class="restriction-text valign-text-middle">
														<span>- 최소주문금액</span>
														<span>30,000</span><span>원</span>
													</p>
												</div>
											</div>
										</div>
										<!-- 2번쨰 쿠폰 -->
										<div class="coupon" style="cursor: pointer;">
											<div class="coupon-upper">
												<div class="coupon-text-layout">
													<div class="coupon-title valign-text-middle">
														위드테일과 첫만남★ 5,000원 할인 쿠폰
													</div>
													<div class="coupon-text valign-text-middle">
														5,000원
													</div>
												</div>
												<input type="checkbox">
											</div>
											<div class="coupon-lower">
												<div class="restriction">
													<p class="restriction-text valign-text-middle">
														<span>- 사용기간 : ~</span>
														<span>2023. 6. 16 오전 8:30:57</span>
														<span>까지</span>
													</p>
													<p class="restriction-text valign-text-middle">
														<span>- 최소주문금액</span>
														<span>30,000</span><span>원</span>
													</p>
												</div>
											</div>
										</div>
									</div>									
								</div>
							</div>
							<hr style="width: 100%; border-color: #a2a2a2; margin-bottom: 0px; margin-top: 0px; border-width: 1px;">
							<div class="point-wrap">
								<div class="point-layout medium">
									<div class="information-title valign-text-middle">
										적립금
									</div>
									<div class="point">
										<input type="text" placeholder="0원">
										<button type="button">전액 사용</button>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	function showInputField() {
		var recipientValue = document.getElementById("recipientValue").innerHTML;
		var addressValue = document.getElementById("addressValue").innerHTML;
		var contactValue = document.getElementById("contactValue").innerHTML;

		document.getElementById("recipientValue").innerHTML = '<input type="text" id="recipientInput" value="' + recipientValue + '">';
		document.getElementById("addressValue").innerHTML = '<input type="text" id="addressInput" value="' + addressValue + '">';
		document.getElementById("contactValue").innerHTML = '<input type="text" id="contactInput" value="' + contactValue + '">';

		document.getElementsByClassName("text")[0].innerHTML = "돌아가기";
		document.getElementsByClassName("text")[0].onclick = saveInput;
	}

	function saveInput() {
		var recipientInputValue = document.getElementById("recipientInput").value;
		var addressInputValue = document.getElementById("addressInput").value;
		var contactInputValue = document.getElementById("contactInput").value;

		document.getElementById("recipientValue").innerHTML = recipientInputValue;
		document.getElementById("addressValue").innerHTML = addressInputValue;
		document.getElementById("contactValue").innerHTML = contactInputValue;

		document.getElementsByClassName("text")[0].innerHTML = "변경";
		document.getElementsByClassName("text")[0].onclick = showInputField;
	}
	
	// 모든 쿠폰을 선택합니다
	const coupons = document.querySelectorAll('.coupon');

	// 각 쿠폰에 대해 이벤트를 추가합니다
	coupons.forEach(coupon => {
	  const checkbox = coupon.querySelector('input[type="checkbox"]');
	  
	  // 쿠폰을 클릭할 때 이벤트를 처리합니다
	  coupon.addEventListener('click', () => {
	    // 체크박스의 상태를 변경합니다
	    checkbox.checked = !checkbox.checked;

	    if (checkbox.checked) {
	      // 체크박스가 선택되었을 때 배경색을 파란색으로 변경합니다
	      coupon.style.backgroundColor = '#f5fbff';
	    } else {
	      // 체크박스가 선택 해제되었을 때 배경색을 원래대로 돌립니다
	      coupon.style.backgroundColor = '';
	    }
	  });
	});
	
	


</script>
