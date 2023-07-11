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
				
/*페이징*/
.block-27 ul li a, .block-27 ul li span {
    color: #666;
    vertical-align: middle;
}

.block-27 ul li span.disabled {
	color: #999;
}
		}
	</style>

<script>
$(function(){
	console.log("세션 : " + "${sessionScope.animal}");
	
	let animal = parseInt(localStorage.getItem('animal'));
	
	if (!animal){
		animal = 1;
	}

	$.ajax({
		url : '${pageContext.request.contextPath}/switchImage',
		method : 'POST',
		data : {animal : animal},
		success: function(response){
			console.log('home : ' + response.animal);
		},
		error:function(){
			console.log("실패");
		}
	});
});
</script>




	<section class="ftco-section" style="padding-top: 0;">
		<div class="container">
			<!--  
			<p class="hotdeal-tit">
				<a href="${pageContext.request.contextPath}/">위드테일</a> <span>&gt;</span> <a href="#">랭킹</a>
			</p>
			-->
			<img src="${pageContext.request.contextPath}/resources/images/main/main_ban01.jpg" class="d-block w-100" alt="랭킹 배너">
		</div>
		
    	<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
	          <div class="col-md-12 ftco-animate">
	            <h3 class="hotdeal-tit-h3">랭킹</h3>
	           
	          </div>
        	</div>   		
    	</div>
	<div class="container">
		<div class="row">
			<c:forEach var="dto" items="${list}" varStatus="status">
				<div class="col-md-6 col-lg-3 ftco-animate">

					<div class="product">
			
							<a href="${pageContext.request.contextPath}/shop/info/${dto.itemNum}" class="img-prod"><img class="img-fluid"
								src="${pageContext.request.contextPath}/uploads/item/${dto.mainImage}"
								alt="${dto.itemName}"> 
							<c:if test="${dto.discount != 0}">
								<span class="status">${dto.discount}%</span>
							</c:if>
							</a>

						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">${dto.itemName}</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<c:if test="${dto.discount != 0}">
											<span class="mr-2 price-dc "><fmt:formatNumber value="${dto.itemPrice}" type="currency"/></span>
										</c:if>
											<span class="price-sale"><fmt:formatNumber value="${dto.finalPrice}" type="currency"/></span>

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
			</c:forEach>
			
			
			

			
			
			<div class="container">
    		<div class="row">
			
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
					</div>
				</div>
			</div>
			</div>
			</div>

	</div>
	</div>
	<!-- //상품 목록(foreach) 쓸 것 -->
    </section>


	