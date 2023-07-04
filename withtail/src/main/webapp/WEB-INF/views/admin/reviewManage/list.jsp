<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.out{
 display: flex; align-items: center;  flex-direction: row; justify-content: center;
}

.body-main {
	width: 960px;
}
.favorite {
    align-items: flex-start;
    background-color: var(--aloy-white);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 30px;
    padding: 30px 0px;
    width: 100%;
}
	
.favorite-title-layout {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 10px;
}

.valign-text-bottom {
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
}

.favorite-title {
    color: var(--aloy-black);
    width: fit-content;
    font-size: var(--font-size-24px);
    font-weight: 700;
    font-style: normal;
}

.valign-text-bottom {
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
}

.favorite-section {
    align-items: flex-start;
    align-self: stretch;
    border-bottom: 1px solid;
    border-color: #ced4da;
    display: flex;
    flex-direction: column;
}

.favorite-list {

    align-items: center;
    align-self: stretch;
    background-color: var(--aloy-white);
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 20px 16px;
}

.favorite-section:first-child{
	border-bottom: none;
}
.favorite-list:first-child{
	border-top: 1px solid #ced4da;
	border-bottom: none;
}


.f-product-info {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 50px;
}

.f-product-image-layout {
    align-items: flex-start;
    background-color: var(--aloy-white);
    border: 1px solid #9e9e9e59;
    border-radius: 5px;
    display: flex;
    gap: 10px;
    width: fit-content;
    overflow: hidden;
}

.f-product-image {
    height: 120px;
    min-width: 120px;
    object-fit: cover;
    max-width: 100%;
}

.f-product-wrap {
	display: contents;
}

.f-product-name {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: center;
    cursor: pointer;
}

.f-product-text-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
}

.f-brand-text {
    margin-right: -201px;
    margin-top: -1px;
    color: var(--aloy-gray6);
    font-size: 13px;
    font-weight: 400;
    font-style: normal;
}

.f-product-name .valign-text-middle {
    cursor: pointer;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.f-item-text {
    overflow: hidden;
    display: -webkit-box !important;
    color: #545454;
    font-weight: 200;
    font-style: normal;
    font-weight: bold;
}

.-min {
	min-height: 550px;
}

.rating {
    display: flex;
    align-items: flex-end;
    margin-bottom: 10px;
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

img {
    max-width: 100%;
}

.star-layout-two {
    width: 14px;
    height: 14px;
    display: flex;
}

.f-price-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 10px;
    width: fit-content;
}

.f-price-underline {
    color: #b9b9b9;
    font-size: 12px;
    font-weight: 400;
    font-style: normal;
    text-align: right;
    text-decoration: line-through;
    width: fit-content;
}

.f-price-text {
	color: black;
	font-size: 15px;
	font-weight: 500;
	font-style: normal;
	margin-top: -1px;
	text-align: right;
	width: fit-content;
}

.f-button-layout {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 50px;
    width: fit-content;
}

hr.vertical-line {
    display: inline-block;
    border: none;
    border-left: 1px solid #b9b9b9;
    height: 38px;
    margin: 0;
  }

.btn{border-radius: 10px;}
.btn:hover{background: #6C757D; color: white}

.pointhover:hover{
  background-color: #82ae4654;
}

.score-star { font-size: 0; letter-spacing: -4px; }
.score-star .item {
	font-size: 18px; letter-spacing: -2px; display: inline-block;
	color: #ccc; text-decoration: none; vertical-align: middle;
}
.score-star .item:first-child{ margin-left: 0; }
.score-star .on { color: #FFE400; font-weight: bold; }

</style>

<script type="text/javascript">
<c:if test="${sessionScope.member.userId==dto.userId||sessionScope.member.membership>50}">
function deleteBoard(rvNum) {
    if(confirm("리뷰를 삭제 하시 겠습니까 ? ")) {
    	let query = "rvNum="+rvNum+"&${query}";
	    let url = "${pageContext.request.contextPath}/admin/reviewManage/deleteReview?" + query;
    	location.href = url;
    }
}
</c:if>
 
function searchList() {
	const f = document.searchForm;
	f.submit();
}
</script> 
 <div class="out">
<div class="body-main">
 	 <div class="body-title">
		<h2><i class="fa-solid fa-pen"></i> 리뷰 관리 </h2>
    </div>
 	<br><br>
 	<c:forEach var="dto" items="${list }">
 	<div class="favorite-section">
 		<div class="favorite-list pointhover">
 			<div class="f-product-info">
			 	<div style="position: relative;">
 					<a class="f-product-image-layout" href="#">
 						<img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/uploads/item/${dto.mainImage}">
 					</a>
 				</div>	
 				<div class="f-product-wrap">
 					<div style="display: contents;"> 
 						<div class="f-product-name">
							<div class="f-product-text-layout">
							<div>${dto.regDate }</div>
								<!--상품 상세보기 페이지 연결  -->
								<a class="f-item-text valign-text-middle" href="${pageContext.request.contextPath}/shop/info/${dto.itemNum}" style="font-size: 15px;">${dto.madeby }<br>${dto.itemName }</a>
									<div class="rating">
										<div>${dto.userName }&nbsp;(${dto.userId })&nbsp;&nbsp;|&nbsp;&nbsp; </div>
											<div class="score-star review-score-star">
												<c:forEach var="n" begin="1" end="5">
													<c:set var="star" value="${dto.star + ((dto.star%1>=0.5) ? (1-dto.star%1)%1 : -(dto.star%1))}"/>
													<span class="item fs-2 ${dto.star>=n?'on':''}">★</span>
												</c:forEach>
											</div>
									</div>
							</div>
							<!-- 리뷰글보기 링크연결 -->
							<a class="f-price-layout" href='${articleUrl}&rvNum=${dto.rvNum}'><!-- &rvNum=${dto.rvNum}&itemNum=${dto.itemNum }&mainImage=${dto.mainImage} -->
								<div class="f-price-text valign-text-middle">
									${dto.rvContent }
								</div>
							</a> 						
 						</div>
		 				<div class="f-button-layout">
		 					<a onclick="deleteBoard('${dto.rvNum}');">삭제</a>
		 				</div>
 					</div>
 				</div>
 			</div>	
 		</div>	
 		
 	</div>
 	</c:forEach>

 		
	<div class="page-navigation">
		${dataCount == 0 ? "등록된 리뷰가 없습니다." : paging}
	</div>
 		
		<table class="table" >
			<tr>
				<td align="left" width="100">
					<button style="height: 35px;" type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/reviewManage/list';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/reviewManage/list" method="post">
						<select name="condition" class="form-select" style="height: 35px;">
							<option value="userId" ${condition=="userId"?"selected='selected'":""}>아이디</option>
							<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
							<option value="regDate" ${condition=="regDate"?"selected='selected'":""}>등록일</option>
							<option value="content" ${condition=="content"?"selected='selected'":""}>내용</option>
						</select>
						<input style="height: 35px;" type="text" name="keyword" value="${keyword}" class="form-control">
						<button style="height: 35px;" type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="100">
					&nbsp;
				</td>
			</tr>
		</table>
		</div>	

</div>