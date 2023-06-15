<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<style>
.table {
   font-size: 14px !important;  
}

.table tbody tr td {
    text-align: center !important;
    vertical-align: middle;
    padding: 10px 10px !important;
    border: 1px solid transparent !important;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
}

@media (min-width: 1200px) {
   .container {
       max-width: 1365px !important;
   }
}

.ftco-cart span {
   margin-bottom: 3px;      
   font-size: 13px;                  
}

.ftco-cart .form-control {
    height: 40px !important;
    text-align: center;
    bordeR: 1px solid rgba(0, 0, 0, 0.05) !important;
    color: #000000 !important;
    padding: 0;
    font-size: 13px;
    width: 120px !important;
}

.table .thead-primary tr th {
    color: #808080 !important;
}

.-price {
    width: 200px;
    font-size: 21px;
    padding: 10px 15px 9px 15px;
    color: #888;
    border-bottom: 1px solid #444;
}

.-head {
    width: 130px;
    text-align: left;
    color: #999;
}

.-ul {
   text-align: right; 
   list-style-type: none;
   margin-bottom: 0px;
}

.-btn1 {
   border: 1px solid #008e61 !important;
   background: #fff;
   color: #008e61 !important;
   text-shadow: none;
    font-size: 13px;
   padding: 0px 7px;
    height: 21px !important;

}

.help {
    margin: 40px 0 0;
    line-height: 18px;
}

.help > h3 {
    font-size: 11px !important;
    font-weight: normal;
    border-top: 1px solid #eaeaea;
    border-bottom: 1px solid #eaeaea;
    background: none !important;
    padding: 15px 20px 13px 21px !important;
}

.help .content {
    padding: 0 9px 12px;
}

.help .content ul {
    margin: 15px 0 0 -27px;
}

.help .content li.item1 {
    background-position: -484px 0;
}

.help > .content > ul > li {
    font-size: 13px;
    color: #888;;
   margin : 5px 18px;
   line-height: 140%;
}

.help .content li {
    padding: 0 0 0 25px;
    color: #757575;
    background: url(http://img.echosting.cafe24.com/skin/base_ko_KR/common/ico_number.png) no-repeat;
}

.help .content li.item2 {
    background-position: -434px -100px;
}

.help .content li.item3 {
    background-position: -384px -200px;
}

#-footer {
    padding: 50px 0 0 0;
    margin: 20px 0 0 0;
    position: relative;
}

#-footer .-size, #-footerbackup .-size, #-copyright > .-size {
    width: 1230px;
    margin-left: 0px; 
    position: relative;
}

.-footerbox {
    border-top: none;
    padding: 0 0 0px 0;
}

.-footerbox .-footerus {
   width: 100%;
    margin: 0 0 40px 0;
    font-size: 0;
    border-bottom: 1px solid #f0f0f0;
}

.-footerbox .-footerus a:first-child {
    padding-left: 0;
}

.-footerbox .-footerus a {
    font-size: 13px;
    color: #333;
}

.-footerbox .-footerus a, .-footerbox table th, .-new .-footer-help-runtime, .-footer-bank p {
    letter-spacing: 0;
}

.-footerbox .-footerus a {
    display: inline-block;
    font-size: 11px;
    line-height: 50px;
    position: relative;
    letter-spacing: 0.1em;
}

.-footerbox table th {
    color: #333;
    font-size: 9px;
    font-weight: bold;
    letter-spacing: 0.15em;
    padding: 7px 0 15px 0;
    text-align: left;
}

.-footerbox table td a {
    color: #666;
    font-size: 11px;
    padding: 3px 0;
    letter-spacing: 0.1em;
    display: block;
    text-transform: uppercase;
}

.-footerbox table td {
    vertical-align: top;
}

.ftco-section {
    padding: 1em 0 !important;
    position: relative;
}
</style>


<div class="hero-wrap hero-bread" style="background-image: url('${pageContext.request.contextPath}/resources/images/main/main_ban01.jpg');">
      
    </div>
    <section class="ftco-section ftco-cart">
         <div class="container">
            <p style="margin-left: 4px; margin-bottom: -14px;">일반상품이 <span style="font-size: 17px; text-decoration: underline; font-weight: 500">2&nbsp;</span>개 있습니다. 구매시 참고해주세요.<p>
            <div class="row">
             <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                   <table class="table">
                      <thead class="thead-primary" style="background: #fbfafa;">
                        <tr class="text-center">
                          <th><input type="checkbox"></th>
                          <th>이미지</th>
                          <th>상품정보</th>
                          <th>판매가</th>
                          <th>수량</th>
                          <th>적립금</th>
                          <th>배송구분</th>
                          <th>배송비</th>
                          <th>합계</th>
                          <th>선택</th>
                        </tr>
                      </thead>
                      <tbody>
                      <!-- c:foreach로 반복문으로 짜서 할 것. -->
                        <tr class="text-center">
                          <td class="product-remove"><input type="checkbox"></td>
                          
                          <td class="image-prod"><div class="img" style="background-image:url(${pageContext.request.contextPath}/resources/images/main/product_sample.png);"></div></td>
                          
                          <td class="product-name">
                             <h3>수수펫스튜디오 수수까까 30g (3종)</h3>
                             <p>육류에 알러지가 있는 친구들을 위한 건강한 간식입니다.</p>
                          </td>
                          
                          <td class="price">4,000원</td>
                          
                         <td class="quantity">
                          <div style="display: flex; justify-content: space-between;">
                            <span>
                              <button type="button" class="quantity-left-minus btn" data-type="minus" data-field="">
                                <i class="ion-ios-remove"></i>
                              </button>
                            </span>
                            <span style="margin: 0 10px;"> <!-- 간격을 띄우기 위해 마진을 추가 -->
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                            </span>
                            <span>
                              <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                <i class="ion-ios-add"></i>
                              </button>
                            </span>
                          </div>
                        </td>
                          
                          <td class="total">230원</td>
                          <td class="total">기본배송</td>
                          <td class="total">5,000원 조건</td>
                          <td class="total">40,000원</td>
                          <td class="total">기본배송</td>
                        </tr><!-- END TR-->

                        <tr class="text-center">
                          <td class="product-remove"><input type="checkbox"></td>
                          
                          <td class="image-prod"><div class="img" style="background-image:url('${pageContext.request.contextPath}/resources/images/main/product_sample.png');"></div></td>
                          
                          <td class="product-name">
                             <h3>Bell Pepper</h3>
                             <p>Far far away, behind the word mountains, far from the countries</p>
                          </td>
                          
                          <td class="price">$15.70</td>
                          
                          <td class="quantity">
                             <div style="display: flex; justify-content: space-between;">
                            <span>
                              <button type="button" class="quantity-left-minus btn" data-type="minus" data-field="">
                                <i class="ion-ios-remove"></i>
                              </button>
                            </span>
                            <span style="margin: 0 10px;"> <!-- 간격을 띄우기 위해 마진을 추가 -->
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                            </span>
                            <span>
                              <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                <i class="ion-ios-add"></i>
                              </button>
                            </span>
                          </div>
                         </td>
                          
                          <td class="total">230원</td>
                          <td class="total">기본배송</td>
                          <td class="total">5,000원 조건</td>
                          <td class="total">40,000원</td>
                          <td class="total">기본배송</td>
                        </tr><!-- END TR-->
                        <tr>
                          <td colspan="10" style="padding-bottom: 20px !important; padding-top: 20px !important; background: #fbfafa;">
                            <div style="display: flex; justify-content: space-between; align-items: center;">
                              <span style="float: left; margin-right: auto;">[새벽배송/신선식품배송]</span>
                              <div style="float: right;">
                                <span>상품구매금액</span>
                                <span style="font-weight: 1000; font-size: 14px;">29,000</span>
                                <span>+ 배송비 5,000</span>
                                <span>- 상품할인금액 5,800</span>
                                <span>= 합계:</span>
                                <span style="font-weight: 1000; font-size: 17px; color: black;"> 28,200</span>
                                <span> 원</span>
                              </div>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                 </div>
             </div>
          </div>
          <div style="margin-bottom: 35px;">
             <p style="display: inline-block;">
                <span>선택상품을&nbsp;</span>
                <button type="button" style="border: 1px solid #008e61 !important;
                background: #fff;
                  color: #008e61 !important;
                  text-shadow: none;
                   font-size: 13px;
                   padding: 0px 7px;
                   height: 21px !important;">삭제</button>
               </p> 
               <p style="display: inline-block; float: right;"> 
                   <button type="button" style="border: 1px solid #008e61 !important;
                background: #fff;
                  color: #008e61 !important;
                  text-shadow: none;
                   font-size: 13px;
                   padding: 0px 7px;
                   height: 21px !important;">장바구니비우기</button>
                </p>
             </div>
             
             <div style="padding: 20px 0 30px 30px; border-top: double #666; border-bottom: double #eaeaea;">
                <ul class="-ul">
                   <li class="-head" style="display: inline-block; ">총 상품금액</li>
                   <li class="-price" style="display: inline-block; font-weight: 1000; ">29,000 원</li>
                </ul>
                <ul class="-ul">
                   <li class="-head" style="display: inline-block; ">총 배송비</li>
                   <li class="-price" style="display: inline-block; font-weight: 1000; ">+ 5,000 원</li>
                </ul>
                <ul class="-ul">
                   <li style="display: inline-block;"><button type="button" style="border: 1px solid #008e61 !important;
                background: #fff;
                  color: #008e61 !important;
                  text-shadow: none;
                   font-size: 13px;
                   padding: 0px 7px;
                   height: 21px !important;
                   margin-right: 35px;">총 할인금액 내역보기</button></li>
                   <li class="-head" style="display: inline-block; ">총 할인금액</li>
                   <li class="-price" style="display: inline-block; font-weight: 1000; ">- 5,800 원</li>
                </ul>
                <ul class="-ul">
                   <li class="-head" style="display: inline-block; ">결제 예정금액</li>
                   <li class="-price" style="display: inline-block; font-weight: 1000; color: #008e61;">= 28,200 원</li>
                </ul>            
             </div>
             <div style="margin-top: 30px;">
                <p style="display: inline-block;">
                <button type="button" class="-btn1" style="padding: 0 18px; height: 41px !important;">쇼핑계속하기</button>
               </p> 
               <p style="display: inline-block; float: right;"> 
                   <button type="button" class="-btn1" style="padding: 0 18px; height: 41px !important;; ">선택 상품만 주문</button>
                   <button type="button" class="-btn1" style="padding: 0 18px; height: 41px !important;;">전체상품 주문</button>
                </p>
             </div>
             
             <div class="help">
                <h3>&gt; 위드테일 배송 이용안내<span style="font-size: 10px; color: #d6d6d6">&nbsp;&nbsp;&nbsp;- 이 항목은 읽어두시면,많은 도움이 됩니다.</span></h3>
                <div class="content">
                   <ul style="list-style: none;">
                      <li class="item1">브랜드별 배송 제품은 각 브랜드에서 직접 발송됩니다. 교환 반품시에는 브랜드별로 배송비가 부과됩니다.</li>   
                      <li class="item2">할인 쿠폰은 다음 주문 단계에서 적용 가능합니다.</li>
                      <li class="item3">위드테일에서 구매하신 제품의 문의는 사이트 우측 하단의 채팅상담 아이콘을 통해 접수하시면 더욱 빠릅니다.</li>                 
                   </ul>           
                </div>
                <h3>> 주문과 결제 안내<span style="font-size: 10px; color: #d6d6d6">&nbsp;&nbsp;&nbsp;- 이 항목은 읽어두시면,많은 도움이 됩니다.</span></h3>
             <div class="content">
                   <ul style="list-style: none;">
                      <li class="item1">상품 주문 후 상품준비중 단계에서만 고객 취소가 가능하며, 배송준비중 단계에서는 고객센터를 통해서만 가능합니다.</li>   
                      <li class="item2">배송중 단계에서는 반품 배송비 등이 부과될 수 있으며, 고객센터 운영시간 안에 접수해 주셔야 가능합니다.</li>                
                   </ul>           
                </div>   
         </div>
      </div>

      </section>

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
   </script>