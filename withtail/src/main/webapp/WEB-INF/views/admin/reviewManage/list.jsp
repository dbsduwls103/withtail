<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">

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
    border-color: #f1f1f1;
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
    border-top: solid 2px #e9e9e9; 
}

.favorite-list:first-child{
	border-top: none;
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
    border: 1px solid;
    border-color: var(--aloy-gray4-stroke);
    border-radius: 5px;
    display: flex;
    gap: 10px;
    width: fit-content;
    overflow: hidden;
}

.f-product-image {
    height: 90px;
    min-width: 90px;
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

.btn1 {
	border-radius: 3px;
   	background-color: #82ae46;
   	border: none;
   	height: 35px;
    width: 140px;
    color: #fff;
    font-size: 13px;
}

.btn1:hover {
	border-radius: 3px;
   	background-color: #3b6601;
   	border: none;
   	height: 35px;
    width: 140px;
    color: #fff;
    font-size: 13px;
}

</style>

<script type="text/javascript">
<c:if test="${sessionScope.member.userId==dto.userId||sessionScope.member.membership>50}">
function deleteBoard() {
    if(confirm("리뷰를 삭제 하시 겠습니까 ? ")) {
	    let query = "num=${dto.num}&${query}";
	    let url = "${pageContext.request.contextPath}/bbs/delete?" + query;
    	//location.href = url;
    }
}
</c:if>
</script>  
 

 	 <div class="body-title">
		<h2><i class="fa-solid fa-pen"></i> 리뷰 관리 </h2>
    </div>
 	
 	<div class="favorite-section">
 		<div class="favorite-list">
 			<div class="f-product-info">
			 	<div style="position: relative;">
 					<a class="f-product-image-layout" href="#">
 						<img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg">
 					</a>
 				</div>	
 				<div class="f-product-wrap">
 					<div style="display: contents;"> 
 						<div class="f-product-name">
							<div class="f-product-text-layout">
							<div>2023.06.15</div>
								<!--상품 상세보기 페이지 연결  -->
								<a class="f-item-text valign-text-middle" href="#" style="font-size: 15px;">제조사<br>두바보 MDF 펜던트 (펜던트만) P13</a>
									<div class="rating">
										<div>김땡땡&nbsp;&nbsp;|&nbsp;&nbsp; </div>
										<div class="stars">
											<div class="star star-layout">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
											<div class="star-layout-two">
												<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
											</div>
										</div>
									</div>
							</div>
							<!-- 리뷰글보기 링크연결 -->
							<a class="f-price-layout" onclick="location.href='${pageContext.request.contextPath}/admin/reviewManage/article';">
								<div class="f-price-text valign-text-middle">
									리뷰내용 입니다.
								</div>
							</a> 						
 						</div>
		 				<div class="f-button-layout">
		 					<a onclick="deleteBoard();">삭제</a>
		 				</div>
 					</div>
 				</div>
 			</div>	
 		</div>	
 		
 	</div>
 		
	<div class="page-navigation">
		123
	</div>
 		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/reviewManage/list';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/inquiryManage/list" method="post">
						<select name="condition" class="form-select">
							<option value="userId" ${condition=="userId"?"selected='selected'":""}>아이디</option>
							<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
							<option value="reg_date" ${condition=="reg_date"?"selected='selected'":""}>등록일</option>
							<option value="content" ${condition=="content"?"selected='selected'":""}>내용</option>
						</select>
						<input type="text" name="keyword" value="${keyword}" class="form-control">
						<button type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="100">
					&nbsp;
				</td>
			</tr>
		</table>	

