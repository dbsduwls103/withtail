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

.my-point-container {
    padding: 30px 0;
    align-items: flex-start;
    background-color: white;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    width: 100%;
}

.title {
    color: black;
    text-align: center;
    width: fit-content;
    font-size: 24px;
    font-weight: 700;
    margin-bottom: -25px;
}

.my-point-upper {
    align-items: center;
    align-self: stretch;
    background-color: rgb(248 248 248);
    display: flex;
    border-radius: 5px;
    flex-direction: column;
    gap: 10px;
    justify-content: center;
    padding: 30px 0;
}

.my-point-text-layout {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.my-point-title {
    align-self: stretch;
    color: rgb(91 91 91);
    text-align: center;
    white-space: nowrap;
    font-size: 19px;
    font-weight: 400;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.my-point-text {
    align-self: stretch;
    color: black;
    text-align: center;
    font-size: 30px;
    font-weight: 700;
}

.my-point-lower {
    align-items: flex-start;
    align-self: stretch;
    background-color: white;
    border-top: 1px solid;
    border-color: rgb(241 241 241);
    display: flex;
    flex-direction: row;
}

.my-point-tab {
    align-items: flex-start;
    border-bottom-style: solid;
    border-bottom-width: 3px;
    padding: 15px 16px;
    width: fit-content;
	display: inline-block;
}

.my-point-tab-text {
    color: black;
    white-space: nowrap;
    width: fit-content;
}

.my-point-tab.active {
  border-bottom-color:  #82ae46;
}

.sel1 {
	margin-left: 737px;
    margin-top: 9px;
    height: 41px;
    width: 90px;
    border: solid 1px #c7c7c7;
    border-radius: 5px;
    color: #615858;
}

.detailed-point-wrap {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    padding: 15px 10px;
}

.detailed-point-layout {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    gap: 3px;
}

.order-view-section {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.order-view-list {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
}

.order-date-layout {
    align-items: flex-start;
    align-self: stretch;
    background-color: rgb(248 248 248);
    border-color: rgb(219 219 219);
    border-top-style: solid;
    border-top-width: 1px;
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.order-date {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    padding: 10px 16px;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
    color: black;
}

.date {
    font-weight: 500;
    font-style: normal;
}

.order-detail-button {
    flex: 1;
    margin-top: -1px;
    text-align: right;
}

.order-detail-button {
    font-weight: 400;
    font-style: normal;
}

.order-view-product-wrap {
    align-items: center;
    align-self: stretch;
    background-color: rgb(255 255 255);
    border: 1px none;
    display: flex;
    justify-content: center;
}

.order-list-layout {
    align-items: flex-start;
    align-self: stretch;
    background-color: rgb(255 255 255);
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-color: rgb(241 241 241);
    display: flex;
    gap: 20px;
    padding: 20px 16px;
}

.product-info-layout {
    display: flex;
    flex-direction: row;
    align-items: center;
    padding: 0px;
    gap: 20px;
    width: 100%;
}

.product-info {
    align-items: center;
    border: 1px none;
    display: flex;
    flex: 1;
    gap: 20px;
}

.product-image-layout {
    align-items: flex-start;
    background-color: rgb(255 255 255);
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    width: fit-content;
}

.product-image {
    height: 60px;
    min-width: 60px;
    object-fit: cover;
}

.product-name {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    gap: 5px;
    justify-content: center;
}

.x-text {
    color: var(--aloy-black);
    font-size: var(--font-size-15px);
    font-weight: 400;
    font-style: normal;
    align-self: stretch;
}

.ov-price-layout {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 5px;
}

.price-text {
    color: rgb(18 18 18);
    font-size: 16px;
    font-weight: 500;
    font-style: normal;
}

.ov-counting-text {
    color: var(--aloy-gray6);
    font-size: var(--font-size-12px);
    font-weight: 400;
    font-style: normal;
}

.ov-text-btn {
    align-items: flex-end;
    border: 1px none;
    flex-direction: column;
    gap: 6px;
    width: 140px;
}

.order-view-product-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: center;
}

.ov-status-text {
    flex: 1;
    margin-top: -1px;
    text-align: center;
    color: black;
    font-weight: 500;
    font-style: normal;
    width: 77px;
    font-size: 15px;
}


.ov-status-text-container {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    flex-direction: column;
    width: 130px;
}

.ov-status-text-wrap {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
}

.ov-status-text-layout {
    align-items: center;
    align-self: stretch;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-color: rgb(248 248 248);
    border-left-style: solid;
    border-left-width: 1px;
    display: flex;
    flex: 1;
    gap: 10px;
    justify-content: flex-end;
    padding: 40px 0px;
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
	
	<div class="my-point-container ">
		<p class="title">적립금</p>
			<div class="my-point-container">
				<div class="my-point-upper">
					<div class="my-point-text-layout">
						<div class="my-point-title valign-text-middle">
							현재 적립금
						</div>
						<p class="my-point-text valign-text-middle">0원</p>
					</div>
				</div>
				<div class="my-point-lower">
					<ul>
						<li class="my-point-tab"><a  class="my-point-tab-text valign-text-middle" href="#">전체 내역</a></li>
						<li class="my-point-tab"><a  class="my-point-tab-text valign-text-middle" href="#">적립 내역</a></li>
						<li class="my-point-tab"><a  class="my-point-tab-text valign-text-middle" href="#">사용 내역</a></li>
					</ul>	
					<select name="period" class="sel1">
						    <option value="">기간</option>
						    <option value="3month">3개월</option>
						    <option value="6month">6개월</option>
						    <option value="1year">1년</option>
						    <option value="2year">2년</option>
						    <option value="3year">3년</option>				    
					</select>				
				</div>
				<hr style="width: 100%; margin-bottom: 0px; margin-top:-21px;">
				<div class="order-view-section">
					<div class="order-view-list">
						<div class="order-date-layout">
							<div class="order-date">
								<div class="date valign-text-middle">
									<span>2023년 6월 15일 목요일 &nbsp;&nbsp;|&nbsp;&nbsp;#801&nbsp;&nbsp;|&nbsp;&nbsp;구매적립<!-- 주문번호 --></span>
								</div>
								<a href="${pageContext.request.contextPath}/myPage/orderDetail" class="order-detail-button valign-text-middle" style="color: rgb(68 148 241);">주문 상세 보기&nbsp;&nbsp;&nbsp;&nbsp;></a>
							</div>
						</div>
						
						<!-- 한번에 주문했을떄의 상품 리스트 (상품1) -->
						<div class="order-view-product-wrap">
							<div class="order-view-product-layout">
								<div class="order-list-layout">
									<div class="product-info-layout">
										<div class="product-info">
											<div class="product-image-layout">
												<div class="product-image">
													<img alt="product-image" src="${pageContext.request.contextPath}/resources/images/main/product_sample.png" class="product-image">
												</div>
											</div>
											<div class="product-name">
												<a href="#" class="x-text valign-text-middle">KONG 테니스공 장난감(대)</a>
												<a href="#" class="ov-price-layout">
													<div class="price-text valign-text-middle">
														9,740원
													</div>
													<div class="ov-counting-text valign-text-middle">
														(1개)
													</div>
												</a>
												<div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="ov-status-text-container">
								<div class="ov-status-text-wrap">
									<div class="ov-status-text-layout">
										<div class="ov-status-text valign-text-middle">
											+ 370 원 
										</div>
									</div> 
								</div>
							</div>
						</div>
						<!-- 다른 날 상품 구입 -->
						<div class="order-date-layout">
							<div class="order-date">
								<div class="date valign-text-middle">
									<span>2023년 6월 18일 일요일 &nbsp;&nbsp;|&nbsp;&nbsp;#802&nbsp;&nbsp;|&nbsp;&nbsp;결제 시 사용<!-- 주문번호 --></span>
								</div>
								<a href="${pageContext.request.contextPath}/myPage/orderDetail" class="order-detail-button valign-text-middle" style="color: rgb(68 148 241);">주문 상세 보기&nbsp;&nbsp;&nbsp;&nbsp;></a>
							</div>
						</div>
						
						<!-- 한번에 주문했을떄의 상품 리스트 (상품1) -->
						<div class="order-view-product-wrap">
							<div class="order-view-product-layout">
								<div class="order-list-layout">
									<div class="product-info-layout">
										<div class="product-info">
											<div class="product-image-layout">
												<div class="product-image">
													<img alt="product-image" src="${pageContext.request.contextPath}/resources/images/main/product_sample.png" class="product-image">
												</div>
											</div>
											<div class="product-name">
												<a href="#" class="x-text valign-text-middle">KONG 테니스공 장난감(대)</a>
												<a href="#" class="ov-price-layout">
													<div class="price-text valign-text-middle">
														9,740원
													</div>
													<div class="ov-counting-text valign-text-middle">
														(1개)
													</div>
												</a>
												<div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="ov-status-text-container">
								<div class="ov-status-text-wrap">
									<div class="ov-status-text-layout">
										<div class="ov-status-text valign-text-middle">
											- 370 원 
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
  // DOM 요소를 선택합니다.
  var tabLinks = document.querySelectorAll('.my-point-tab');

  // 각 탭에 대한 클릭 이벤트를 설정합니다.
  tabLinks.forEach(function(tab) {
    tab.addEventListener('click', function(event) {
      event.preventDefault();

      // 모든 탭의 클래스를 제거합니다.
      tabLinks.forEach(function(link) {
        link.classList.remove('active');
      });

      // 클릭된 탭에 클래스를 추가합니다.
      this.classList.add('active');
    });
  });
</script>