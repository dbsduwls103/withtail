<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		 <div class="-prodsort mb-5">
            <ul class="d-flex">
	            		<li class="col-lg-6 col-md-6">
	            			제품 목록<span class="li-span">&gt;</span><span class="color-bk">${category.ctName}</span><span class="li-span">&gt;</span>총 <span class="color-bk">${dataCount}</span> 제품
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
          

          <div class="row">
          <!-- 아이템1 -->
			<c:forEach var="dto" items="${list}" varStatus="status">
				<div class="col-md-6 col-lg-3 animate__animated animate__fadeInUp">
					<div class="product">
						<a href="${pageContext.request.contextPath}/shop/info" class="img-prod">
							<img class="img-fluid" src="${pageContext.request.contextPath}/uploads/shop/${dto.mainImage}"
								alt="${dto.itemName}">
							<span class="status ${dto.discount==0 ? 'hidden' : ''}">${dto.discount}%</span>
							<div class="overlay"></div>
						</a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="${pageContext.request.contextPath}/shop/info">${dto.itemName}</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span class="mr-2 price-dc ${dto.discount==0 ? 'hidden' : ''}"><fmt:formatNumber value="${dto.price}" type="currency"/></span>
										<span class="price-sale"><fmt:formatNumber value="${dto.dcPrice}" type="currency"/></span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="${pageContext.request.contextPath}/shop/info"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="${pageContext.request.contextPath}/shop/info"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="${pageContext.request.contextPath}/shop/info"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			  </c:forEach>
			<!-- //아이템1 -->
             
          </div>
          
          <!--  
          <div class="row mt-5">
          	<div class="col text-center">
            	<div class="block-27 page-nav">
	              <ul>
	                <li><a href="#">&lt;</a></li>
	                <li class="active"><span>1</span></li>
	                <li><a href="#">2</a></li>
	                <li><a href="#">3</a></li>
	                <li><a href="#">4</a></li>
	                <li><a href="#">5</a></li>
	                <li><a href="#">&gt;</a></li>
	              </ul>
            	</div>
          	</div>
          </div>
          -->
          
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

 