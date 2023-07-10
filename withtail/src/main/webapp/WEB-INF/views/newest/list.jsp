<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<style>
		.hotdeal-tit {
			font-size: 12px;
			color: #616161;
			font-weight: 400;
		}
		
		.hotdeal-tit a {
			color: #616161;
		}
		
		.hotdeal-tit span {
			color: #999;
			display: inline-block;
			margin-left: 5px;
			margin-right: 5px;
		}
		
		/**/
		.hotdeal-tit-h3 {
			font-size: 25px;
    		font-weight: bold;
    		color: #333;
    		padding-left: 12px;
   		    padding-top: 40px;
    		padding-bottom: 20px;
    		letter-spacing: 0.1em;
		}
		
		.hotdeal-sort {
			border-top: 1px solid #f1f1f1;
    		padding: 15px 0;
    		border-bottom: 1px solid #f1f1f1;
		}
		
		.li-span {
			margin-left: 5px;
			margin-right: 5px;
			display: inline-block;
			color: #999;
		}
		
		.sort-list > a {
		    color: #666;
		    font-size: 13px;
    		letter-spacing: 0.01em;
		    display: inline-block;
		    cursor: pointer;
		    border-left: 1px solid #dadada;
		    line-height: 10px;
		    padding: 3px 12px 3px 12px;
		}
		
		.color-bk {
			color: #000;
		}
	</style>

	<section class="ftco-section" style="padding-top: 0;">
		<div class="container">
			<!--  
			<p class="hotdeal-tit">
				<a href="${pageContext.request.contextPath}/">위드테일</a> <span>&gt;</span> <a href="#">신상</a>
			</p>
			-->
			<img src="${pageContext.request.contextPath}/resources/images/main/main_ban01.jpg" class="d-block w-100" alt="신상 배너">
		</div>
		
    	<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
	          <div class="col-md-12 ftco-animate">
	            <h3 class="hotdeal-tit-h3">신상</h3>
	            <div class="hotdeal-sort">
	            	<ul class="d-flex">
	            		<li class="col-lg-6 col-md-6">
	            			제품 목록<span class="li-span">&gt;</span><span class="color-bk">신상</span><span class="li-span">&gt;</span>총 <span class="color-bk">98</span> 제품
	            		</li>
	            		<li class="col-lg-6 col-md-6 sort-list text-right" style="padding-right: 0;">
	            			<a href="#">신상품</a>
	            			<a href="#">상품명</a>
	            			<a href="#">낮은가격</a>
	            			<a href="#">높은가격</a>
	            			<a href="#">인기상품</a>
	            			<a href="#">사용후기</a>
	            		</li>
	            	</ul>
	            </div>
	          </div>
        	</div>   		
    	</div>
    	
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main/product_sample.png" alt="Colorlib Template">
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

		</div>
		
		<div class="row mt-5">
          	<div class="col text-center">
            	<div class="block-27 page-nav">
	              ${dataCount == 0 ? "등록된 상품이 없습니다." : paging}
            	</div>
          	</div>
          </div>
          
          <div class="col-md-12 d-flex mt-5 mb-5" style="align-items: center; padding-left: 0; padding-right: 0;">
			<div class="col col-md-2 d-flex" style="align-items: center;">
				&nbsp;
			</div>
			<div class="col col-md-8 text-center">
				<form name="prodForm" class="d-flex gap-2 align-items-center justify-content-center">
					<select name="condition" class="form-select" style="width: auto !important;">
						<option value="itemName">상품명</option>
					</select>
					<input type="text" name="keyword" class="form-control" style="border-radius: 0.375rem; width: 200px;">
					<button type="button" class="btn btn-outline-secondary" style="display: inline-block; border-radius: 0.375rem;">검색</button>
				</form>
			</div>
			<div class="col col-md-2 text-right">
				&nbsp;
			</div>
		</div>
		
    	</div>
    </section>