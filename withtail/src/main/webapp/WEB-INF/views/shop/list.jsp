<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<style>
.-prodsort {
    border-top: 1px solid #f1f1f1;
    padding: 15px 0 7px 0;
    border-bottom: 1px solid #f1f1f1;
    margin-bottom: 25px;
    margin-top: -27px;
}

.ftco-section {
    padding: 2em 0 !important;
    position: relative;   
}

</style>

	 <div class="hero-wrap hero-bread" style="background-image: url('${pageContext.request.contextPath}/resources/images/main/main_ban01.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">Products</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
       <div class="container">
          <div class="col-md-12 mb-3 text-center" style="font-size: 30px;" >
             강아지
          </div>
       
          <div>
             <div class="col-md-12 mb-5 text-center">
                <ul class="product-category">
                   <li><a href="#" class="active">주식</a></li>
                   <li><a href="#">간식</a></li>
                   <li><a href="#">패션</a></li>
                   <li><a href="#">산책·외출</a></li>
                   <li><a href="#">홈·리빙</a></li>
                   <li><a href="#">장난감</a></li>
                   <li><a href="#">목욕·위생</a></li>   
                </ul>
             </div>
          </div>
          
          <div class="-prodsort">
            <p style="text-align: left; margin-bottom: 7px; display: inline-block; width: 70%;">제품 목록 > 강아지 > 총 4544 제품</p>
            <div style="text-align: right; margin-bottom: 7px; display: inline-block;">
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">신상품&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">상품명&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">높은가격&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">낮은가격&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">인기상품</p></a>                           
             </div>
          </div>
          
          <div class="row">
             <div class="col-md-6 col-lg-3 ftco-animate">
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
             <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
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


             <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <span class="status">30%</span>
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Tomatoe</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Brocolli</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Carrots</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Fruit Juice</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <span class="status">30%</span>
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Onion</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Apple</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Garlic</a></h3>
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
                   <a href="#" class="img-prod"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/shop/product_sample.jpg" alt="Colorlib Template">
                      <div class="overlay"></div>
                   </a>
                   <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="#">Chilli</a></h3>
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
       </div>
    </section>


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>