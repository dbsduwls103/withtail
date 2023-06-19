<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <style>
    .review-button {
    	background-color: white;
    	border-radius: 5px;
		border-color: #82ae46;
		color: #82ae46; 
		
    }
    
    .review-button:hover {
    	background-color: #82ae46;
		color: white;
    }
    
	.text-right {
		text-align: right;
	}

	.text-right .text-top {
		text-align: right;
		font-size: 11px;
		color: #000 !important;
	}

	
	.info-btn {
		border-radius: 5px !important;
		border-color: #82ae46 !important;
		color: #82ae46 !important; 
	}
	
	.info-btn:hover {
		background-color: #82ae46 !important;
		color: white !important;
		
	}
	
	.buttons {
		display: flex;
		gap: 10px;
		
	}
	
	.cart {
	  display: flex;
	  align-items: center;
	  margin-bottom: 10px;
	  padding: 20px 16px;
	  gap: 20px;
	  border-top: 1px solid #E6E6E6;
	  border-bottom: 1px solid #E6E6E6;
	}
	
	.product-thumbnail img {
	  border: 1px solid #E6E6E6;
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
	
	.scroll-to-top {
	  position: fixed;
	  bottom: 20px;
	  right: 20px;
	  background-color: #f2f2f2;
	  padding: 10px;
	  border-radius: 5px;
	  z-index: 999;
	  display: none; /* 페이지 상단에 있지 않을 때 숨김 */
	}
	
	.scroll-to-top.show {
	  display: block; /* 페이지 상단으로 스크롤 될 때 보임 */
	}
	
	.navigator {
	  display: flex;
	  justify-content: flex-start;
	  align-items: center;
	  background-color: rgba(50,50,100,0.04);
	  
	}
	
	
	.navigator a {
	  display: inline-block;
	  padding: 5px 10px;
	  text-decoration: none;
	  color: #333;
	  margin-left: 20px;
	}
	
	.navigator a:hover {
	  color: #82ae46;
	}
	
	.subheading {
		margin-top: 15px;
	}
	
	.review-header {
		margin-top: 3px;
		margin-bottom: 3px;
		
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}

	
	hr {
		border-top: 1px solid #ccc;
	}
	
	p {
		margin-bottom: 0px;
	}
	
  </style>
  </head>

	<section class="ftco-section pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5 ftco-animate">
					<a href="images/product-1.jpg" class="image-popup"><img
						src="${pageContext.request.contextPath}/resources/images/product-1.jpg"
						class="img-fluid" alt="Colorlib Template"></a>
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">
					<h4>프루티바스켓 해충방지 아웃도어 롤링오일</h4>
					<hr>
	
					<div class="rating d-flex"></div>
					<div class="">
						<p class="originalPrice text-right">
							<span><del>20,000원</del></span>
						</p>
						<p class="price text-right" style="font-size: 25px;">
							<span style="color: red; font-size: 25px;">40%</span><span class="ml-2"  style="font-size: 25px;">12,000원</span>
						</p>
					</div>
					<hr style="margin-bottom: 0">
					<div class="text-right">
						<div>
							<a class="text-top">적립금</a>
						</div>
						
						<span style="color: #82ae46; font-size: 20px">
							500
						</span>
						<span>원</span>
					</div>
					<hr style="margin-bottom: 0; margin-top: 3px;">
					<div class="text-right">
						<div>
							<a class="text-top">배송비</a>
						</div>
						
						<span style="color: #82ae46; font-size: 20px">
							5,000
						</span>
						<span>원</span>
					</div>
					<hr style="margin-top: 3px">
					<div class="my-3">
						<div style="padding-left:339px">
							<div class="form-group d-flex w-100">
								<div class="select-wrap">
									<div class="icon">
										<span class="ion-ios-arrow-down"></span>
									</div>
									<select name="" id="" class="form-control" style="border-radius: 5px">
										<option value="">Small</option>
										<option value="">Medium</option>
										<option value="">Large</option>
										<option value="">Extra Large</option>
									</select>
								</div>
							</div>
						</div>
						<div class="input-group d-flex my-3" style="padding-left:267px">
							<span class="input-group-btn mr-2">
								<button type="button" class="quantity-left-minus btn"
									data-type="minus" data-field="" style="border-radius: 5px">
									<i class="ion-ios-remove"></i>
								</button>
							</span> <input type="text" id="quantity" name="quantity"
								class="form-control input-number" value="1" min="1" max="100" style="border-radius: 5px">
							<span class="input-group-btn ml-2">
								<button type="button" class="quantity-right-plus btn"
									data-type="plus" data-field="" style="border-radius: 5px">
									<i class="ion-ios-add"></i>
								</button>
							</span>
						</div>
						<div class="w-100"></div>
						<div class="col-md-12"></div>
					</div>
					<hr>
	
					<div class="rating d-flex"></div>
					<div class="">
						<p class="originalPrice text-right">
							<span style="color: #000">총 결제금액</span>
						</p>
						<p class="price text-right" style="font-size: 25px;">
							<span style="font-size: 25px;">17,000원</span>
						</p>
					</div>
					<hr>
					<div class="d-flex" style="padding-left:242px;">
						<p class="mr-2">
							<button data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" type="button" class="btn btn-outline-success info-btn px-5" style="box-shadow: none;">장바구니</button>
						</p>
						
							<button type="button" class="btn btn-outline-success info-btn px-5" style="box-shadow: none;">찜</button>
						
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-animate" id="detailSection">
		<div class="container">
			<div class="navigator">
				<div class="moveToDetail">
					<a href="#detailSection">Detail</a>
				</div>
				<div class="moveToReview">
					<a href="#reviewSection">Review</a>
				</div>
				<div class="moveToQnA">
					<a href="#qnaSection">Q&A</a>
				</div>
			</div>
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Detail</span>
					<h2 class="mb-4">Products Detail</h2>
					<img
						src="${pageContext.request.contextPath}/resources/images/test-img.jpg"
						class="img-fluid" alt="Colorlib Template">
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-animate" id="reviewSection">
		<div class="container">
			<div class="navigator">
				<div class="moveToDetail">
					<a href="#detailSection">Detail</a>
				</div>
				<div class="moveToReview">
					<a href="#reviewSection">Review</a>
				</div>
				<div class="moveToQnA">
					<a href="#qnaSection">Q&A</a>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Review</span>
					<h2 class="mb-4">Products Review</h2>
					<div class="review-container">
	
						<div class="col-md-12 d-flex ftco-animate"
							style="border-bottom: 1px solid #ccc; width: 100%">
						<div class="blog-entry align-self-stretch d-md-flex mt-3 mb-0"
							style="width: 100%;">
							<div class="block-20"
								style="background-image: url('${pageContext.request.contextPath}/resources/images/image_1.jpg');"></div>
							<div class="text d-block pl-md-4">
								<div class="meta mb-3">
									<div class="d-flex mb-5 justify-content-end">
										<p class="text-left mr-4">
										<div class="mr-3" style="display: flex">
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star.svg"
													width="12" height="12">
											</div>
										</div>
										</p>
										<div class="float-right mr-3">관리자</div>
										<div class="float-right mr-3">2019년 7월 20일</div>
										<div class="float-right">
											<a class="meta-chat"><span class="icon-chat"></span> 3</a>
										</div>
									</div>
	
								</div>
								<p class="mt-3">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</p>
							</div>
						</div>
					</div>
	
					<div class="col-md-12 d-flex ftco-animate"
						style="border-bottom: 1px solid #ccc; width: 100%">
						<div class="blog-entry align-self-stretch d-md-flex mt-3 mb-0"
							style="width: 100%;">
							<div class="block-20"
								style="background-image: url('${pageContext.request.contextPath}/resources/images/image_1.jpg');"></div>
							<div class="text d-block pl-md-4">
								<div class="meta mb-3">
									<div class="d-flex mb-5 justify-content-end">
										<p class="text-left mr-4">
										<div class="mr-3" style="display: flex">
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star.svg"
													width="12" height="12">
											</div>
										</div>
										</p>
										<div class="float-right mr-3">관리자</div>
										<div class="float-right mr-3">2019년 7월 20일</div>
										<div class="float-right">
											<a class="meta-chat"><span class="icon-chat"></span> 3</a>
										</div>
									</div>
	
								</div>
								<p class="mt-3">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</p>
							</div>
						</div>
					</div>
	
					<div class="col-md-12 d-flex ftco-animate"
						style="border-bottom: 1px solid #ccc; width: 100%">
						<div class="blog-entry align-self-stretch d-md-flex mt-3 mb-0"
							style="width: 100%;">
							<div class="block-20"
								style="background-image: url('${pageContext.request.contextPath}/resources/images/image_1.jpg');"></div>
							<div class="text d-block pl-md-4">
								<div class="meta mb-3">
									<div class="d-flex mb-5 justify-content-end">
										<p class="text-left mr-4">
										<div class="mr-3" style="display: flex">
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star-on.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star.svg"
													width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star"
													src="${pageContext.request.contextPath}/resources/svg/star.svg"
														width="12" height="12">
												</div>
											</div>
											</p>
											<div class="float-right mr-3">관리자</div>
											<div class="float-right mr-3">2019년 7월 20일</div>
											<div class="float-right">
												<a class="meta-chat"><span class="icon-chat"></span> 3</a>
											</div>
										</div>
									</div>
									<p class="mt-3">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="text-right">
				<button type="button" class="btn btn-outline-success review-button ftco-animate mt-1">리뷰 쓰기</button>
			</div>
		</div>
	</section>



	<section class="ftco-section ftco-animate" id="qnaSection">
		<div class="container">
			<div class="navigator">
				<div class="moveToDetail">
					<a href="#detailSection">Detail</a>
				</div>
				<div class="moveToReview">
					<a href="#reviewSection">Review</a>
				</div>
				<div class="moveToQnA">
					<a href="#qnaSection">Q&A</a>
				</div>
			</div>
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Q&A</span>
					<h2 class="mb-4">Question And Answer</h2>
					<p>상품에 대해 궁금한점을 질문해주세요. 위드테일에서 답변해드립니다.</p>
					<p>
						<a href="#" class="btn btn-black py-3 px-5">Write a Question</a>
					</p>
				</div>
			</div>
		</div>
		</section>
	
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Products</span>
					<h2 class="mb-4">Related Products</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="${pageContext.request.contextPath}/resources/images/product-1.jpg"
							alt="Colorlib Template"> <span class="status">30%</span>
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Bell Pepper</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span class="mr-2 price-dc">$120.00</span><span
											class="price-sale">$80.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="${pageContext.request.contextPath}/resources/images/product-2.jpg"
							alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Strawberry</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="${pageContext.request.contextPath}/resources/images/product-3.jpg"
							alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Green Beans</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="${pageContext.request.contextPath}/resources/images/product-4.jpg"
							alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Purple Cabbage</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</section>
	
	<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
		
	</section>
	<footer class="ftco-footer ftco-section">
	
	</footer>

<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1"
	id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
	<div class="offcanvas-header my-4">
		<h6 class="offcanvas-title" id="offcanvasExampleLabel">장바구니에
			추가되었습니다.</h6>
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
			aria-label="Close"></button>
	</div>
	<div class="cart">
		<div class="product-thumbnail">
			<img alt="product-image"
				src="${pageContext.request.contextPath}/resources/images/main/product_sample.png"
				width="80" height="80">
		</div>
		<div class="product-name">
			<a>수수펫스튜디오 수수까까 30g (3종)</a>
		</div>
	</div>
	<div class="cart-information px-4 my-3">
		<span> <span> 배송비 </span> <span> 무료 </span> <span> 입니다.
		</span>
		</span>
		<div class="progress my-3" style="height: 5px;">
			<div class="progress-bar" role="progressbar"
				aria-label="Success 1px high"
				style="background: #82ae46; width: 25%;" aria-valuenow="25"
				aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<span> <span> 주문합계(5개의 제품): </span> <span> &nbsp;
				35,000원 </span>
		</span>

		<div class="buttons my-3">
			<button type="button" class="btn btn-outline-success info-btn px-5">장바구니</button>
			<button type="button" class="btn btn-outline-success info-btn px-5">주문하기</button>
		</div>

	</div>
</div>

<script>
	$(document).ready(function() {

		var quantitiy = 0;
		$('.quantity-right-plus').click(function(e) {

			// Stop acting like a button
			e.preventDefault();
			// Get the field name
			var quantity = parseInt($('#quantity').val());

			// If is not undefined

			$('#quantity').val(quantity + 1);

			// Increment

		});

		$('.quantity-left-minus').click(function(e) {
			// Stop acting like a button
			e.preventDefault();
			// Get the field name
			var quantity = parseInt($('#quantity').val());

			// If is not undefined

			// Increment
			if (quantity > 0) {
				$('#quantity').val(quantity - 1);
			}
		});

	});

	// 네비게이터 클릭 시 섹션으로 스크롤 이동
	var qnaButton = document.querySelector('.moveToReview a');
	qnaButton.addEventListener('click', function(event) {
		event.preventDefault();
		var qnaSection = document.getElementById('reviewSection');
		qnaSection.scrollIntoView({
			behavior : "smooth",
			block : "start" // 스크롤을 시작점으로 스무스하게 이동
		});
	});

	var qnaButton = document.querySelector('.moveToQnA a');
	qnaButton.addEventListener('click', function(event) {
		event.preventDefault();
		var qnaSection = document.getElementById('qnaSection');
		qnaSection.scrollIntoView({
			behavior : "smooth",
			block : "start" // 스크롤을 시작점으로 스무스하게 이동
		});
	});

	var qnaButton = document.querySelector('.moveToDetail a');
	qnaButton.addEventListener('click', function(event) {
		event.preventDefault();
		var qnaSection = document.getElementById('detailSection');
		qnaSection.scrollIntoView({
			behavior : "smooth",
			block : "start" // 스크롤을 시작점으로 스무스하게 이동
		});
	});
</script>

</html>