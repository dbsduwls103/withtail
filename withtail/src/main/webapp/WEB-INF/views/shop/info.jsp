<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <style>
	
	.info-btn {
		border-color: #82ae46;
		color: #82ae46; 
	}
	
	.info-btn:hover {
		background-color: #82ae46;
		color: white;
		
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
	
  </style>
  </head>

    <div class="hero-wrap hero-bread" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="index.html">Product</a></span> <span>Product Single</span></p>
            <h1 class="mb-0 bread">Product Single</h1>
          </div>
        </div>
      </div>
    </div>
	
    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="images/product-1.jpg" class="image-popup"><img src="${pageContext.request.contextPath}/resources/images/product-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3>Bell Pepper</h3>
    				<div class="rating d-flex">
							<p class="text-left mr-4">
								<a href="#" class="mr-2">5.0</a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
							</p>
							<p class="text-left mr-4">
								<a href="#" class="mr-2" style="color: #000;">100 <span style="color: #bbb;">Rating</span></a>
							</p>
							<p class="text-left">
								<a href="#" class="mr-2" style="color: #000;">500 <span style="color: #bbb;">Sold</span></a>
							</p>
						</div>
						<p class="originalPrice"><span><del>$200.00</del></span></p>
						<p class="discountRate" style="color: red;"><span>40%</span></p>
    					<p class="price"><span>$120.00</span></p>
    					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until.
						</p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		              <div class="select-wrap">
	                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                  <select name="" id="" class="form-control">
	                  	<option value="">Small</option>
	                    <option value="">Medium</option>
	                    <option value="">Large</option>
	                    <option value="">Extra Large</option>
	                  </select>
	                </div>
		            </div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="ion-ios-remove"></i>
	                	</button>
	            		</span>
	             	<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
	             	<span class="input-group-btn ml-2">
	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="ion-ios-add"></i>
	                 </button>
	             	</span>
	          	</div>
	          	<div class="w-100"></div>
	          	<div class="col-md-12">
	          		<p style="color: #000;">600 kg available</p>
	          	</div>
          	</div>
	          	<div class="d-flex">
					<p class="mr-2"><a data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample" class="btn btn-black py-3 px-5">장바구니 추가/주문하기</a></p>
					<p><a href="#" class="btn btn-black py-3 px-5">찜</a></p>
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
	          <img src="${pageContext.request.contextPath}/resources/images/test-img.jpg" class="img-fluid" alt="Colorlib Template">
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
	      <div class="row justify-content-center mb-3 pb-3">
	        <div class="col-md-12 heading-section text-center ftco-animate">
	          <span class="subheading">Review</span>
	          <h2 class="mb-4">Products Review</h2>
	          <p>리뷰를 작성해 주시면 위드테일과 위드테일 고객님에게 큰 도움이 됩니다.</p>
	          <p><a href="#" class="btn btn-black py-3 px-5">Write a review</a></p>
	          
	          <div class="review-container">
	          	<div class="review-header">
					<p>리뷰헤더리뷰헤더</p>
				</div>
				
		          <div class="col-md-12 d-flex ftco-animate" style="border-bottom: 1px solid #ccc; width: 100%">
		            <div class="blog-entry align-self-stretch d-md-flex mt-3 mb-0" style="width:100%;">
		              <div class="block-20" style="background-image: url('${pageContext.request.contextPath}/resources/images/image_1.jpg');"></div>
		              <div class="text d-block pl-md-4">
						<div class="meta mb-3">
							<div class="d-flex mb-5 justify-content-end">
								<p class="text-left mr-4">
									<div class="mr-3" style="display:flex">
										<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
										<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">         
	                                 	</div>
                                 	</div>
								</p>
								<div class="float-right mr-3">관리자</div>
								<div class="float-right mr-3">2019년 7월 20일</div>
								<div class="float-right"><a class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
							
						</div>
						<p class="mt-3">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</p>
					  </div>
		            </div>
		          </div>
		          
		          <div class="col-md-12 d-flex ftco-animate" style="border-bottom: 1px solid #ccc; width: 100%">
		            <div class="blog-entry align-self-stretch d-md-flex mt-3 mb-0" style="width:100%;">
		              <div class="block-20" style="background-image: url('${pageContext.request.contextPath}/resources/images/image_1.jpg');"></div>
		              <div class="text d-block pl-md-4">
						<div class="meta mb-3">
							<div class="d-flex mb-5 justify-content-end">
								<p class="text-left mr-4">
									<div class="mr-3" style="display:flex">
										<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
										<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">         
	                                 	</div>
                                 	</div>
								</p>
								<div class="float-right mr-3">관리자</div>
								<div class="float-right mr-3">2019년 7월 20일</div>
								<div class="float-right"><a class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
							
						</div>
						<p class="mt-3">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</p>
					  </div>
		            </div>
		          </div>
		          
		          <div class="col-md-12 d-flex ftco-animate" style="border-bottom: 1px solid #ccc; width: 100%">
		            <div class="blog-entry align-self-stretch d-md-flex mt-3 mb-0" style="width:100%;">
		              <div class="block-20" style="background-image: url('${pageContext.request.contextPath}/resources/images/image_1.jpg');"></div>
		              <div class="text d-block pl-md-4">
						<div class="meta mb-3">
							<div class="d-flex mb-5 justify-content-end">
								<p class="text-left mr-4">
									<div class="mr-3" style="display:flex">
										<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
										<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">         
	                                 	</div>
	                                 	<div class="star-layout-two">
	                                    <img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">         
	                                 	</div>
                                 	</div>
								</p>
								<div class="float-right mr-3">관리자</div>
								<div class="float-right mr-3">2019년 7월 20일</div>
								<div class="float-right"><a class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
						<p class="mt-3">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</p>
					  </div>
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
	          <p><a href="#" class="btn btn-black py-3 px-5">Write a Question</a></p>
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
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>   		
    	</div>
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product-1.jpg" alt="Colorlib Template">
    						<span class="status">30%</span>
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Bell Pepper</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span class="mr-2 price-dc">$120.00</span><span class="price-sale">$80.00</span></p>
		    					</div>
	    					</div>
	    					<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
	    								<span><i class="ion-ios-heart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product-2.jpg" alt="Colorlib Template">
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Strawberry</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>$120.00</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
	    								<span><i class="ion-ios-heart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product-3.jpg" alt="Colorlib Template">
	    					<div class="overlay"></div>
	    				</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Green Beans</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>$120.00</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
	    								<span><i class="ion-ios-heart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product-4.jpg" alt="Colorlib Template">
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Purple Cabbage</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>$120.00</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
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
      <div class="container py-4">
        <div class="row d-flex justify-content-center py-5">
          <div class="col-md-6">
          	<h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
          	<span>Get e-mail updates about our latest shops and special offers</span>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <input type="text" class="form-control" placeholder="Enter email address">
                <input type="submit" value="Subscribe" class="submit px-3">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <footer class="ftco-footer ftco-section">
      <div class="container">
      	<div class="row">
      		<div class="mouse">
				<a href="#" class="mouse-icon">
					<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
				</a>
			</div>
      	</div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vegefoods</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Journal</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
	                <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">FAQs</a></li>
	                <li><a href="#" class="py-2 d-block">Contact</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
			  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</p>
          </div>
        </div>
      </div>
    </footer>
    
    <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
	  <div class="offcanvas-header my-4">
	    <h6 class="offcanvas-title" id="offcanvasExampleLabel">장바구니에 추가되었습니다.</h6>
	    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	  </div>
	  <div class="cart">
	  	<div class="product-thumbnail">
	  		<img alt="product-image" src="${pageContext.request.contextPath}/resources/images/main/product_sample.png" width="80" height="80">
	  	</div>
	  	<div class="product-name">
	  		<a>수수펫스튜디오 수수까까 30g (3종)</a>
	  	</div>
	  </div>
	  <div class="cart-information px-4 my-3">
	  		<span>
	  			<span>
	  				배송비
	  			</span>
	  			<span>
	  				무료
	  			</span>
	  			<span>
	  				입니다.
	  			</span>
	  		</span>
	  		<div class="progress" style="height: 5px;">
			  <div class="progress-bar" role="progressbar" aria-label="Success 1px high" style="background: #82ae46; width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
			</div>
			<span>
				<span>
					주문합계(5개의 제품): 
				</span>
				<span>
					&nbsp; 35,000원
				</span>
			</span>
			
			<div class="buttons my-3">
			<button type="button" class="btn btn-outline-success info-btn px-5">장바구니</button>
			<button type="button" class="btn btn-outline-success info-btn px-5">주문하기</button>
			</div>
			
	  </div>
	</div>
  
  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
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
		    behavior: "smooth",
		    block: "start" // 스크롤을 시작점으로 스무스하게 이동
		  });
		});

		var qnaButton = document.querySelector('.moveToQnA a');
		qnaButton.addEventListener('click', function(event) {
		  event.preventDefault();
		  var qnaSection = document.getElementById('qnaSection');
		  qnaSection.scrollIntoView({
		    behavior: "smooth",
		    block: "start" // 스크롤을 시작점으로 스무스하게 이동
		  });
		});
		
		var qnaButton = document.querySelector('.moveToDetail a');
		qnaButton.addEventListener('click', function(event) {
		  event.preventDefault();
		  var qnaSection = document.getElementById('detailSection');
		  qnaSection.scrollIntoView({
		    behavior: "smooth",
		    block: "start" // 스크롤을 시작점으로 스무스하게 이동
		  });
		});

		
	</script>

</html>