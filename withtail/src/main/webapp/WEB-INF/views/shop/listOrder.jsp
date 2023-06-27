<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 상품 표 -->
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
		<tbody>
			<tr class="order-group">
				<td>
					<h6 class="prod-tit">${dto.itemName}</h6>
					<p class="op-tit">- 옐로우 / M</p>
				</td>
				<td>
					<div class="d-flex">
						<span class="input-group-btn mr-2">
							<button type="button" class="quantity-left-minus btn qt-btn"
								data-type="minus" data-field="">
								<i class="ion-ios-remove"></i>
							</button>
						</span>
						<input type="text" name="quantity"
							class="form-control input-number quantity" value="1" min="1"
							max="100"
							style="border-radius: 5px; width: 60px !important; display: inline-block;">
						<input type='hidden' name='itemNums' value="${itemNum}">
						<input type='hidden' name='subNums' value="${subNum}">
						<input type='hidden' name='subNums2' value="${subNum2}">
						<span class="input-group-btn ml-2">
							<button type="button" class="quantity-right-plus btn qt-btn"
								data-type="plus" data-field="">
								<i class="ion-ios-add"></i>
							</button>
						</span>
					</div>
				</td>
				<td class="op-price" data-optionPrice="${optionPrice}">${opPriceResult}원</td>
				<td><a href="#" class="x-btn"> <i
						class="fa-regular fa-rectangle-xmark"></i>
				</a></td>
			</tr>
		</tbody>
	</table>
</div>
<!-- //상품 표 -->

<!-- 총 결제금액 -->
<div class="">
	<p class="originalPrice text-right">
		<span style="color: #000">총 결제금액</span>
	</p>
	<p class="price text-right" style="font-size: 25px;">
		<span style="font-size: 25px;">17,000원</span>
	</p>
</div>
<!-- //총 결제금액 -->