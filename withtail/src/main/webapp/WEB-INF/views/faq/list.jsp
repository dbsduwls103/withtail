<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	.faq-h3 {
		color: #555;
		font-weight: bold;
	}
	
	.font-bold {
		font-weight: bold;
	}
	
	.list-disc {
		list-style: disc;
	}
	
	
	.faqbox {
		border-top: 1px solid #424242;
		margin-top: 1.5rem;
	}
	
	.a-button:not(.collapsed) {
	    color: #82ae46;
	    background-color: #fff;
	    font-weight: bold;
	}
	
	.a-button:not(.collapsed)::after {
    	background-image: var(--bs-accordion-btn-icon);
	}
	
	.a-button:focus {
		box-shadow: none;
		border-bottom: 1px solid var(--bs-border-color);
	}
	
	.a-body {
		background: #f1f1f1;
	}

</style>

<section class="ftco-section">
	<div class="container">
		<h3 class="text-center faq-h3">자주 묻는 질문</h3>

		<div class="faqbox">
			<div class="accordion accordion-flush" id="accordionFlushExample">
				<!-- accordion-item -->
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-heading1">
						<button class="accordion-button collapsed a-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse1"
							aria-expanded="false" aria-controls="flush-collapse1">
							고객센터 이용시간</button>
					</h2>
					<div id="flush-collapse1" class="accordion-collapse collapse"
						aria-labelledby="flush-heading1"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body a-body">
							<p class="font-bold">02-123-4567 [위드테일 온라인 고객센터]</p>
							<p>
								위드테일 전화 상담 가능시간은<br> 평일 오전 10시 ~ 오후 6시 입니다. (점심시간 12:30 ~
								13:30)
							</p>
							<p>
								당일 오후 1 이후 입금건은 익일 발송되며, <br> 교환 / 반품/ 제품 문의는 상담시간 내 문의 주시면
								감사드리겠습니다.
							</p>
						</div>
					</div>
				</div>
				<!-- //accordion-item -->
				<!-- accordion-item -->
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-heading2">
						<button class="accordion-button collapsed a-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse2"
							aria-expanded="false" aria-controls="flush-collapse2">의류
							사이즈 문의</button>
					</h2>
					<div id="flush-collapse2" class="accordion-collapse collapse"
						aria-labelledby="flush-heading2"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body a-body">
							<p>
								의류는 스타일, 재질, 브랜드 별로 조금씩 사이즈가 다를 수 있습니다.<br> 가슴둘레.목둘레,등길이 세가지
								사이즈를 알고 계시면 가장 오차없이 착용이 가능합니다.<br> 세가지 사이즈 중 '가슴둘레'를 가장
								우선적으로 참고하여 선택해주세요.
							</p>
							<p>
								각 제품별 상세이미지로 의류 사이즈를 가늠하시면 도움이 되며,<br> 전체 사이즈 차트에 대한 안내는
								홈페이지 상단의 SIZE CHART 를 클릭하시면 보실 수 있습니다.<br> 감사합니다.
							</p>
						</div>
					</div>
				</div>
				<!-- //accordion-item -->
				<!-- accordion-item -->
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-heading3">
						<button class="accordion-button collapsed a-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse3"
							aria-expanded="false" aria-controls="flush-collapse3">교환
							및 반품에 대한 안내</button>
					</h2>
					<div id="flush-collapse3" class="accordion-collapse collapse"
						aria-labelledby="flush-heading3"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body a-body">
							<ul class="font-bold">
								<li class="list-disc">교환/환불 안내</li>
							</ul>
							<p>
								고객님의 단순 변심으로 교환, 반품을 하실 경우<br> 1:1 문의 게시판에 교환 및 반품사유에 대한
								내용(개인 과실 여부, 색상교환, 사이즈 교환 등 포함)을 남겨주시거나<br> 고객센터로
								전화(02-123-4567)주시면 접수가 됩니다.
							</p>
							<p>교환/반품 접수가 되면 회수 기사님이 2-3일 내(영업일 기준) 방문 예정이며, 받으셨던 박스에 넣어서
								상품 전달해 주시면 됩니다. 상품 수거/확인 후 반품배송비 차감한 금액이 부분 환불됩니다. (브랜드에 따라 배송비
								동봉 또는 계좌 입금)</p>
	
							<ul class="font-bold">
								<li class="list-disc">교환 및 반품이 가능한 경우</li>
							</ul>
							<p>
								상품 도착일로부터 7일 이내 / 출고 이후의 환불 요청은 상품 회수 확인 후 처리 됩니다.<br> (단,
								훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.)<br> 단순 변심 반품 및 교환의 경우 왕복
								배송비를 차감한 금액이 환불 됩니다.<br> (일부 수입제품의 상품 특성에 따라 반품.교환이 어려운 경우
								상품설명에 기입된 기준에 우선합니다.)
							</p>
	
							<ul class="font-bold">
								<li class="list-disc">교환 및 반품이 불가능한 경우</li>
							</ul>
							<p>
								- 고객 부주의로 인해 제품이 훼손되어 상품가치가 상실된 경우<br> - 고객님의 사용 또는 일부 소비에
								의하여 상품의 가치가 현저히 감소한 경우<br> - 시간의 경과에 의하여 상품 등의 가치가 현저히 감소한
								경우<br> (자세한 내용은 Q&A 게시판 또는 이메일(withtail@naver.com) 유선전화
								02-123-4567로 문의 하시기 바랍니다.)
							</p>
							<p>
								&gt;환불 시 반품 확인여부를 확인한 후 결제 금액을 환불해 드립니다.<br> &gt;신용카드로 결제하신
								경우는 신용카드 승인을 취소하여 결제 대금이 청구되지 않게 합니다.<br> &nbsp;(단, 신용카드
								결제일자에 맞추어 대금이 청구 될 수 있으면 이 경우 익월 신용카드 대금 청구 시 카드사에서 환급처리 됩니다.)
							</p>
						</div>
					</div>
				</div>
				<!-- //accordion-item -->
				<!-- accordion-item -->
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-heading4">
						<button class="accordion-button collapsed a-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse4"
							aria-expanded="false" aria-controls="flush-collapse4">의류
							사이즈 문의</button>
					</h2>
					<div id="flush-collapse4" class="accordion-collapse collapse"
						aria-labelledby="flush-heading4"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body a-body">
							<p>
								제품 주문시간부터 3일 이내에 입금이 되지 않을 경우 주문 자동 취소가 되며,<br> 주문서의 신청해주신
								입금자명과 실제 입금자명이 다를 경우,<br> 또는 제품의 구매금액과 다르게 입금하실 경우 입금이 자동취소
								되실 수 있습니다.
							</p>
							<p>
								주문자와 입금자명이 상이할 경우, 베럴즈 고객센터 02-123-5678 로 연락 주시면<br> 가장 신속하게
								처리하여 드립니다. 감사합니다.
							</p>
						</div>
					</div>
				</div>
				<!-- //accordion-item -->
				<!-- accordion-item -->
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-heading5">
						<button class="accordion-button collapsed a-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapse5"
							aria-expanded="false" aria-controls="flush-collapse5">배송
							관련 문의</button>
					</h2>
					<div id="flush-collapse5" class="accordion-collapse collapse"
						aria-labelledby="flush-heading5"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body a-body">
							<p>
								위드테일 배송은 오후 1시 30분 이전에 입금된 건에 한해서, 당일 배송처리를 하며, 재고상황에 따라 지연될 수
								있습니다.<br> 배송은 CJ 대한통운택배를 통해 이루어 집니다.
							</p>
							<p>
								*배송주소[물류센터] :경기 이천시 호법면 중부대로 897번길 82-14 위킵 이천센터 우프컴퍼니 앞 /
								02-123-4567<br> *배송지역 : 전국 지역 (제주도 및 기타 도서 산간지역은 차이가 있을 수
								있습니다)<br> *배송비용 : 5만원 미만 구매시 택배비 3,000원 (제주도 및 기타 도서 산간지역은
								추가금액이 발생할 수 있습니다)<br> *배송기간 : 1~3일 평균 (토/일/휴무일 제외)<br>
								*배송조회 : CJ 대한통운택배사 사이트에서 조회하실 수 있습니다.<br> -CJ대한통운택배
								https://www.doortodoor.co.kr 문의전화 1588-1255
							</p>
						</div>
					</div>
				</div>
				<!-- //accordion-item -->
			</div>
		</div>
	</div>
</section>