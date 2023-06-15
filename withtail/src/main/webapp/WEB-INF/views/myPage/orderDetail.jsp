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

.-min {
	min-height: 550px;
}

.od-detail-view {
    align-items: flex-start;
    background-color: var(--aloy-white);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    padding: 30px 0px;
    width: 100%;
}

.od-detail-title-layout {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    height: 35px;
}

.od-detail-section {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 20px;
}

.od-products-wrap {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
}

.order-detail-date {
    align-items: center;
    align-self: stretch;
    background-color: rgb(248 248 248);
    border-color: rgb(219 219 219);
    border-top-style: solid;
    border-top-width: 1px;
    display: flex;
    gap: 10px;
    height: 64px;
    padding: 15px 16px;
}

.od-date {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 5px;
    width: fit-content;
}

.od-date-text-reg {
    margin-top: -1px;
    width: fit-content;
    color: rgb(111 110 110);
    font-weight: 400;
    font-style: normal;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.od-date-text-med {
    color: rgb(18 18 18);
    font-weight: 500;
    margin-top: -1px;
    width: fit-content;
}

.od-number {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    gap: 5px;
}

.od-num-reg {
    margin-top: -1px;
    width: fit-content;
    color: rgb(111 110 110);
    font-weight: 400;
    font-style: normal
}

.od-num-med {
    color: rgb(68 148 241);
    font-weight: 500;
    margin-top: -1px;
    width: fit-content;
    font-style: normal;
}

.od-delivery-layout {
    align-items: center;
    align-self: stretch;
    background-color: var(--aloy-white);
    border-style: none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 20px 16px;
}

.od-delivery {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 25px;
}

.od-delivery-title-layout {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
}

.od-delivery-title {
    color: black;
   	font-size: 19px;
    font-weight: 500;
    font-style: normal;
}

.od-delivery-information {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 7px;
}

.x-wrap {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
    margin-bottom: -12px;
}

.od-item-text {
    margin-top: -1px;
    width: 80px;
    color: black;
    font-size: 15px;
    font-weight: 300;
    font-style: normal;
}

.od-item-text{
    color: black;
    font-size: 15px;
    font-weight: 300;
    font-style: normal;
}

.x-text {
    align-self: stretch;
    white-space: normal;
    word-break: break-all;
    color: #8b8484;
    font-size: 15px;
    font-weight: 300;
    font-style: normal;
    margin-bottom: 0px;
}

.od-address-layout {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
}

.od-name-text {
    flex: 1;
    margin-top: -1px;
    color: #8b8484;
    font-size: 15px;
    font-weight: 300;
    font-style: normal;

}

.od-product-list {
    align-items: center;
    align-self: stretch;
    background-color: #fff;
    border-color: rgb(219 219 219);
    border-top-style: solid;
    border-top-width: 1px;
    display: flex;
    flex-direction: column;
}
  </style>

  <div class="container -min">
	<div class="submenu-layout">
	  <ul>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a></li>
	    <li><a class="submenu active" href="${pageContext.request.contextPath}/myPage/orders">주문조회</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a></li>
	    <li><a class="submenu" href="#">놀이터</a></li>
	  </ul>
	</div>
	
	<div class="od-detail-view">
		<div class="od-detail-title-layout">
			<p style="font-size: 24px; color: black; font-weight: 1000; margin-bottom: 0px;">주문 상세 조회</p>
		</div>	
		<div class="od-detail-section">
			<div class="od-products-wrap">
				<div class="order-detail-date">
					<div class="od-date">
						<div class="od-date-text-reg valign-text-middle">
							주문일
						</div>
						<div class="od-date-text-med">
							2023. 6. 15. 오전 11:01:36&nbsp;&nbsp;|&nbsp;&nbsp;
						</div>
						<div class="od-number">
							<div class="od-num-reg valign-text-middle">
								주문번호
							</div>
							<div class="od-num-med valign-text-middle">
								#801
							</div>
						</div>
					</div>
				</div>
				
				<div class="od-delivery-layout">
					<div class="od-delivery">
						<div class="od-delivery-title-layout">
							<div class="od-delivery-title valign-text-middle">
								배송 정보
							</div>
						</div>
						<div class="od-delivery-information">
							<div class="x-wrap">
								<div class="od-item-text valign-text-middle">
									주문자 정보
								</div>
								<p class="od-name-text valign-text-middle">최수징 (010-1111-1111)</p>
							</div>
							<div class="x-wrap">
								<div class="od-item-text valign-text-middle">
									배송지 정보
								</div>
								<div class="od-address-layout">								
									<p class="x-text valign-text-middle">[11111] 경기도 무슨시 무슨무슨로 120(무슨동, 무슨아파트) 120동 403호</p>
									<p class="x-text valign-text-middle">대문 앞에 놓아주세요.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="od-product-list">
				</div>
				
			</div>
		</div>
	</div>
	
  </div>
 	
