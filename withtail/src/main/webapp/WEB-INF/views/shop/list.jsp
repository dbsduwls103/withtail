<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

          <div class="row">
          	<!-- 아이템1 -->
             <div class="col-md-6 col-lg-3 animate__animated animate__fadeInUp">
                <div class="product">
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <span class="status">30%</span>
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">수수펫스튜디오 수수까까 30g (3종)</a></h3>
                      <div class="d-flex">
                         <div class="pricing">
                            <p class="price"><span class="mr-2 price-dc">&#8361;9500</span><span class="price-sale">&#8361;7000</span></p>
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
             <!-- //아이템1 -->
             
          </div>
          
          <div class="row mt-5">
          	<div class="col text-center">
            	<div class="block-27">
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
          
          <div class="col-md-12 d-flex mt-5 mb-5" style="align-items: center; padding-left: 0; padding-right: 0;">
			<div class="col col-md-2 d-flex" style="align-items: center;">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/tailPath/boardList';" title="새로고침"><i class="bi bi-arrow-counterclockwise"></i></button>
			</div>
			<div class="col col-md-8 text-center">
				<form name="searchForm" class="d-flex gap-2 align-items-center justify-content-center">
					<select name="condition" class="form-select" style="width: auto !important;">
						<option value="all">제목+내용</option>
						<option value="reg_date">등록일</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="keyword" class="form-control" style="border-radius: 0.375rem; width: 200px;">
					<button type="button" class="btn btn-outline-secondary" style="display: inline-block; border-radius: 0.375rem;">검색</button>
				</form>
			</div>
			<div class="col col-md-2 text-right">
				<button type="button" class="btn btn-outline-secondary" style="display: inline-block;" onclick="location.href='${pageContext.request.contextPath}/tailPath/boardWrite';">등록하기</button>
			</div>
		</div>

 