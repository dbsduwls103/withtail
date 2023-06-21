<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

          <div class="row">
          	<!-- 아이템1 -->
             <div class="col-md-6 col-lg-3"> <!-- ftco-animate 왜 작동안함? -->
                <div class="product">
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
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

 