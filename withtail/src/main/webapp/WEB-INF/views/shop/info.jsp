<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <style>
    .hidden {
		display: none;
	}

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
	
	/*상품 토탈 테이블*/
	.table {
	    min-width: 400px !important;
	    margin-bottom: 0 !important;
	}
	
	.table th {
		border-top: 1px solid #999;
	}
	
	.table thead th {
		border-bottom: 1px solid #eaeaea;
		color: #444;
		font-size: 15px;
	}
	
	.table tbody tr td {
	    padding: 10px 10px;
	    border: 1px solid transparent !important;
	    border-bottom: 1px solid #eaeaea !important;
	}
	
	.quantity {
		display: inline-block;
		width: 60px !important;
	}
	
	.prod-tit {
		color: #333;
		margin-bottom: 0;
		font-size: 15px;
	}
	
	.op-tit {
		color: #888;
		font-size: 13px;
	}
	
	.op-price {
		font-weight: 600;
	}
	
	.x-btn {
		color: #999;
	}
	
	.qt-btn {
		border-radius: 5px !important;
	}
	
	/* 옵션 */
	.option {
		vertical-align: middle;
		display: inline-block;
	}
	
	.op-div {
		margin-bottom: 10px;
	}
	.op-div:last-of-type {
		margin-bottom: 0;
	}
	
	.op-div select {
		min-width: 200px;
	}
	
	.product-details .form-group .select-wrap select {
		letter-spacing: 0;
	}
	
	/* 추가 이미지 */
	.sm-img li {
		
	}
	.sm-img li img:not(.img-active) {
		cursor: pointer;
		vertical-align: middle;
		opacity: .3;
		-ms-filter: alpha(opacity=30);
    	filter: alpha(opacity=30);
    	-moz-user-select: none;
	    -webkit-transition: all 0.3s ease;
	    -moz-transition: all 0.3s ease;
	    -ms-transition: all 0.3s ease;
	    -o-transition: all 0.3s ease;
	    transition: all 0.3s ease;
	    box-shadow: 0 3px 5px rgba(0,0,0,0);
    	filter: url(data:image/svg+xml;utf8,&lt;svg xmlns=\'http://www.w3.org/2000/svg\'&gt;&lt;filter id=\'grayscale\'&gt;&lt;feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/&gt;&lt;/filter&gt;&lt;/svg&gt;#grayscale);
    	filter: gray;
    	-webkit-filter: grayscale(100%);
	}
	
	.sm-img li img.img-active {
		opacity: 1;
		filter: none;
	}
	
	.sm-img li:hover img {
		opacity: 1;
		filter: none;
	}
	
	/*상품 상세 아래*/
	.bb-green {
		border-bottom: 2px solid #82ae46;
		padding-bottom: 2px !important;
		color: #82ae46 !important;
	}
	
  </style>
  
  <script type="text/javascript">
  	// 상품 추가 이미지 처음 메인 이미지 필터 없앰
  	$(function(){
  		$(".sm-img li:nth-child(1) img").addClass("img-active");
  	});
  
  	// 상품 추가 이미지 클릭시 이벤트
  	$(function(){
		$(".sm-img li img").click(function(){
			$(".sm-img li img").removeClass("img-active");
			let url = $(this).attr("src");
			$(".lg-img").attr("href", url);
			$(".lg-img img").attr("src", url);
			$(this).addClass("img-active");
		});
	});
  </script>
  
  <script type="text/javascript">
  	function login() {
		location.href="${pageContext.request.contextPath}/member/login";
	}

	function ajaxProd(url, method, query, dataType, fn) {
		$.ajax({
			type:method,
			url:url,
			data:query,
			dataType:dataType,
			success:function(data) {
				fn(data);
			},
			beforeSend:function(jqXHR) {
				jqXHR.setRequestHeader("AJAX", true);
			},
			error:function(jqXHR) {
				if(jqXHR.status === 403) {
					login();
					return false;
				} else if(jqXHR.status === 400) {
					alert("요청 처리가 실패 했습니다.");
					return false;
				}
		    	
				console.log(jqXHR.responseText);
			}
		});
	}
  </script>

  <script type="text/javascript">
  	$(function(){
		// 필수 옵션-1
		$(".requiredOption").change(function(){
			$(".requiredOption2 option").each(function(){
				if($(this).is(":first-child")) {
					return true; // continue
				}
				
	        	$(this).remove();
	        });
			
			let option2Num = $(this).val();
			if(! option2Num) {
				return false;
			}
			
			let option1Num = $(".requiredOption").attr("data-optionNum");
			let option1Sub = $(".requiredOption2").attr("data-optionNum2");
			
			let url = "${pageContext.request.contextPath}/shop/info/listOptionDetail2";
			$.get(url, {option1Num:option1Num, option1Sub:option1Sub, option2Num:option2Num}, function(data){
				$(data).each(function(index, item){
					let option2Num = item.option2Num;
					let option2Name = item.option2Name;
					let extraPrice = item.extraPrice;
					let rExtraPrice = extraPrice.toLocaleString();
					
					$(".requiredOption2").append("<option value='"+option2Num+"' data-extra='"+extraPrice+"'>"+option2Name+" (+"+rExtraPrice+"원)</option>");
				});
			});
		});
		
		// 필수 옵션-2
		$(".requiredOption2").change(function(){
			if(! $(this).val()) {
				return false;
			}
			let itemNum = "${dto.itemNum}";
			if(! itemNum) {
				return false;
			}
			
			let subNum = $(".requiredOption").val();
			let subNum2 = $(this).val();
			
			let b = true;
			$(".order-area input[name=subNums2]").each(function(){
				let snum = $(this).closest("tr.order-group").find("input[name=subNums]").val();
				let snum2 = $(this).val();
				if(subNum === snum && subNum2 === snum2) {
					alert("선택된 옵션입니다.");
					$(".requiredOption").val("");
					$(".requiredOption").trigger("change");
					b = false;
					return false;
				}
			});
			if(! b) {
				return false;
			}
			
			let optionValue = $(".requiredOption :selected").text();
			let optionValue2 = $(".requiredOption2 :selected").text();
			let extraPrice = $(".requiredOption2 :selected").attr("data-extra");
			
			let optionPrice = Number("${dto.itemPrice}") + Number(extraPrice);
			let opPriceResult = optionPrice.toLocaleString();
			
			let oriPrice = Number("${dto.dcPrice}") + Number(extraPrice);
			
			let s = "- " + optionValue + "/" + optionValue2;
			
			let out = "";
			out = '<tr class="order-group">';
			out += '	<td>';		
			out += '		<h6 class="prod-tit">${dto.itemName}</h6>';
			out += '			<p class="op-tit">'+s+'</p>';
			out += '	</td>';
			out += '	<td>';
			out += '		<div class="d-flex">';
			out += '			<span class="input-group-btn mr-2">';
			out += '				<button type="button" class="quantity-left-minus btn qt-btn" data-type="minus" data-field="">';
			out += '					<i class="ion-ios-remove"></i>';
			out += '				</button>';
			out += '			</span>';
			out += '			<input type="text" name="qtys" class="form-control input-number quantity" value="1" min="1" max="100" style="border-radius: 5px; width: 60px !important; display: inline-block;">';
			out += '			<input type="hidden" name="itemNums" value="+itemNum+">';
			out += '			<input type="hidden" name="subNums" value="+subNum+">';
			out += '			<input type="hidden" name="subNums2" value="+subNum2+">';
			out += '			<span class="input-group-btn ml-2">';
			out += '				<button type="button" class="quantity-right-plus btn qt-btn" data-type="plus" data-field="">';
			out += '					<i class="ion-ios-add"></i>';
			out += '				</button>';
			out += '			</span>';
			out += '		</div>';
			out += '	</td>';
			out += '	<td class="op-price" data-optionPrice="'+optionPrice+'" data-oriPrice="'+oriPrice+'">'+opPriceResult+'원</td>';
			out += '	<td>';
			out += '		<a href="#" class="x-btn">';
			out += '			<i class="fa-regular fa-rectangle-xmark"></i>';
			out += '		</a>';
			out += '	</td>';
			out += '</tr>';
			
			$("tbody.order-tbody").append(out);
			
			totalProdPrice();
		});
  	});
  
  	function totalProdPrice() {
		let totalQty = 0;
		let totalPrice = 0;
		$(".order-group").each(function(){
			let qty = parseInt($(this).find("input[name=qtys]").val());
			let opPrice = parseInt($(this).find(".op-price").attr("data-optionPrice"));
			let oriPrice = parseInt($(this).find(".op-price").attr("data-oriPrice"));
			
			totalQty += qty;
			totalPrice += (oriPrice * qty);
		});
		
		let s = totalPrice.toLocaleString();
		
		$(".total-qty").text("("+totalQty+"개)");
		$(".total-price").text(s);
	}
  	
  	$(function(){
  		// 수량 증가
  		$(".order-area").on("click", ".quantity-right-plus", function(e){
  			let $order = $(this).closest("tr.order-group");
  			let qty = parseInt($order.find("input[name=qtys]").val()) + 1;
  			$order.find("input[name=qtys]").val(qty);
  			let opPrice = $order.find(".op-price").attr("data-optionPrice");
  			let oriPrice = $order.find(".op-price").attr("data-oriPrice");
  			let itemPrice = parseInt(oriPrice) * qty;
  			let totalPrice = itemPrice.toLocaleString();
  			
  			//let $total = $(this).closest(".order-area");
  			$order.find(".op-price").text(totalPrice+"원");
  			
  			totalProdPrice();
  		});
  		
  		// 수량 빼기
  		$(".order-area").on("click", ".quantity-left-minus", function(e){
  			let $order = $(this).closest("tr.order-group");
  			let qty = parseInt($order.find("input[name=qtys]").val()) - 1;
  			
  			if(qty <= 0) {
  				alert("구매 수량은 한개 이상입니다.");
  				$(".requiredOption").val("");
  				$(".requiredOption").trigger("change");
  				
  				totalProductPrice();
  				
  				return false;
  			}
  			
  			$order.find("input[name=qtys]").val(qty);
  			let opPrice = $order.find(".op-price").attr("data-optionPrice");
  			let oriPrice = $order.find(".op-price").attr("data-oriPrice");
  			let itemPrice = parseInt(oriPrice) * qty;
  			let totalPrice = itemPrice.toLocaleString();
  			
  			//let $total = $(this).closest(".order-area");
  			$order.find(".op-price").text(totalPrice+"원");
  			
  			totalProdPrice();
  			
  		});
  	});
  </script>
  
  </head>

	<section class="ftco-section pb-0">
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<div class="row">
				<div class="col-lg-6 mb-5 animate__animated animate__fadeInUp" style="padding-left: 0 !important;">
					<a href="${pageContext.request.contextPath}/uploads/item/${dto.mainImage}" class="image-popup lg-img">
						<img src="${pageContext.request.contextPath}/uploads/item/${dto.mainImage}"
							class="img-fluid" alt="${dto.itemName}">
					</a>
					<ul class="d-flex sm-img">
						<c:forEach var="vo" items="${listProdImage}">
							<li class="col col-lg-2 mt-2" style="padding-left: 0; padding-right: 0;">
								<img class="img-fluid" alt="상품추가이미지" src="${pageContext.request.contextPath}/uploads/item/${vo.photoName}">
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-6 product-details animate__animated animate__fadeInUp">
					<h4 style="text-align: right;">${dto.itemName}</h4>
					<hr>
	
					<div class="rating d-flex"></div>
					<div class="">
						<p class="originalPrice text-right">
							<span><del><fmt:formatNumber value="${dto.itemPrice}" pattern="#,###" />원</del></span>
						</p>
						<p class="price text-right" style="font-size: 25px;">
							<span class="${dto.discount==0 ? 'hidden' : ''}" style="color: red; font-size: 25px;">${dto.discount}%</span>
							<span class="ml-2" style="font-size: 25px;"><fmt:formatNumber value="${dto.dcPrice}" pattern="#,###" />원</span>
						</p>
					</div>
					<hr style="margin-bottom: 0">
					<div class="text-right">
						<div>
							<a class="text-top">적립금</a>
						</div>
						
						<span style="color: #82ae46; font-size: 20px">
							<fmt:formatNumber value="${dto.itemPoint}" pattern="#,###" />
						</span>
						<span>원</span>
					</div>
					<hr style="margin-bottom: 0; margin-top: 3px;">
					<div class="text-right">
						<div>
							<a class="text-top">배송비</a>
						</div>
						
						<span style="color: #82ae46; font-size: 20px">
							<fmt:formatNumber value="${dto.deliveryFee}" pattern="#,###" />
						</span>
						<span>원</span>
					</div>
					<hr style="margin-top: 3px">

				<div class="my-3">
					<c:if test="${not empty listOption[0]}">
						<!-- 옵션1 -->
						<div class="form-group d-flex w-100 justify-content-end align-items-center op-div">
							<span class="option mr-3">${listOption[0].option1Name}</span>
							<div class="select-wrap">
								<div class="icon">
									<span class="ion-ios-arrow-down"></span>
								</div>
								<select name="" id="" class="form-control requiredOption"
									data-optionNum="${listOption[0].option1Num}"
									style="border-radius: 5px">
									<option value="">-- ${listOption[0].option1Name} --</option>
									<c:forEach var="vo" items="${listOptionDetail}">
										<option value="${vo.option2Num}">
											${vo.option2Name} ${vo.extraPrice==0 ? "" : "(+"+vo.extraPrice+"원)"}
										</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<!-- //옵션1 -->
						<!-- 옵션2 -->
						<div class="form-group d-flex w-100 justify-content-end align-items-center op-div">
							<span class="option mr-3">${listOption[1].option1Name}</span>
							<div class="select-wrap">
								<div class="icon">
									<span class="ion-ios-arrow-down"></span>
								</div>
								<select name="" id="" class="form-control requiredOption2"
									data-optionNum2="${listOption[1].option1Num}"
									style="border-radius: 5px;">
									<option value="">-- ${listOption[1].option1Name} --</option>
								</select>
							</div>
						</div>
						<!-- //옵션2 -->
					</c:if>
				</div>

				<div class="order-area">
					<div class="totalProducts mb-3">
						<table class="table bordered">
							<thead>
								<tr>
									<th>이름</th>
									<th>수량</th>
									<th>가격</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody class="order-tbody">
								<c:if test="${empty listOption[0]}">
									<tr class="order-group">
										<td>
											<h6 class="prod-tit">${dto.itemName}</h6>
											<!--<p class="op-tit">- 옐로우 / M</p>-->
										</td>
										<td>
											<div class="d-flex">
												<span class="input-group-btn mr-2">
													<button type="button" class="quantity-left-minus btn qt-btn"
														data-type="minus" data-field="">
														<i class="ion-ios-remove"></i>
													</button>
												</span>
												<input type="text" name="qtys"
													class="form-control input-number quantity" value="1" min="1"
													max="100"
													style="border-radius: 5px; width: 60px !important; display: inline-block;">
												<input type='hidden' name='itemNums' value="${itemNum}">
												<span class="input-group-btn ml-2">
													<button type="button" class="quantity-right-plus btn qt-btn"
														data-type="plus" data-field="">
														<i class="ion-ios-add"></i>
													</button>
												</span>
											</div>
										</td>
										<td class="op-price" data-optionPrice="${dto.itemPrice}" data-oriPrice="${dto.dcPrice}">
											<fmt:formatNumber value="${dto.itemPrice}" pattern="#,###" />원
										</td>
										<td><a href="#" class="x-btn"> <i
												class="fa-regular fa-rectangle-xmark"></i>
										</a></td>
									</tr>
								</c:if>
							</tbody>
						</table>
					</div>
					<!-- //상품 표 -->
					
					<!-- 총 상품금액 -->
					<div class="">
						<p class="originalPrice text-right">
							<span style="color: #000">총 상품금액</span>
							<span class="total-qty">
								<c:choose>
									<c:when test="${empty listOption[0]}">
										(1개)
									</c:when>
									<c:otherwise>
										(0개)
									</c:otherwise>
								</c:choose>
							</span>
						</p>
						<p class="price text-right" style="font-size: 25px;">
							<span style="font-size: 25px;">
								<span class="total-price">
									<c:choose>
										<c:when test="${empty listOption[0]}">
											<fmt:formatNumber value="${dto.dcPrice}" pattern="#,###" />
										</c:when>
										<c:otherwise>
											0
										</c:otherwise>
									</c:choose>
								</span>원
							</span>
						</p>
					</div>
					<!-- //총 상품금액 -->
				</div>
				
				<hr>
				
				<div class="d-flex justify-content-end">
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
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<div class="navigator">
				<div class="moveToDetail">
					<a href="#detailSection" class="bb-green">상품상세</a>
				</div>
				<div class="moveToReview">
					<a href="#reviewSection">리뷰</a>
				</div>
				<div class="moveToQnA">
					<a href="#qnaSection">배송/교환/환불</a>
				</div>
			</div>
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Detail</span>
					<h2 class="mb-4">상품상세</h2>
					<div>
						${dto.itemContent}
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-animate" id="reviewSection">
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<div class="navigator">
				<div class="moveToDetail">
					<a href="#detailSection">상품상세</a>
				</div>
				<div class="moveToReview">
					<a href="#reviewSection" class="bb-green">리뷰</a>
				</div>
				<div class="moveToQnA">
					<a href="#qnaSection">배송/교환/환불</a>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Review</span>
					<h2 class="mb-4">상품리뷰</h2>
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
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<div class="navigator">
				<div class="moveToDetail">
					<a href="#detailSection">상품상세</a>
				</div>
				<div class="moveToReview">
					<a href="#reviewSection">리뷰</a>
				</div>
				<div class="moveToQnA">
					<a href="#qnaSection" class="bb-green">배송/교환/환불</a>
				</div>
			</div>
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Q&A</span>
					<h2 class="mb-4">배송/교환/환불</h2>
					<p>상품에 대해 궁금한점을 질문해주세요. 위드테일에서 답변해드립니다.</p>
					<p>
						<a href="#" class="btn btn-black py-3 px-5">Write a Question</a>
					</p>
				</div>
			</div>
		</div>
		</section>
	
	<section class="ftco-section">
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">Related Products</span>
					<h2 class="mb-4">이 상품의 연관상품</h2>
				</div>
			</div>
		</div>
		<div class="container" style="padding-left: 0; padding-right: 0;">
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
				src="${pageContext.request.contextPath}/uploads/item/${dto.mainImage}"
				width="80" height="80">
		</div>
		<div class="product-name">
			<a>${dto.itemName}</a>
		</div>
	</div>
	<div class="cart-information px-4 my-3">
		<span> <span> 배송비 </span> <span> ${dto.deliveryFee}원 </span> <span> 입니다.
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