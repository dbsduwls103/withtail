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
    	
    	
    			
    		<table class="table table-hover board-list">
				<tbody>
					<c:forEach var="dto" items="${list}" varStatus="status">
						<tr>
							<td>${dataCount - (page-1) * size - status.index}</td>
							<td>${dto.itemName}</td>
							<td>${dto.price}</td>
							<td>${dto.discount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
    			
		<div class="page-navigation">
			${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
		</div>
    			<!-- //상품 목록(foreach) 쓸 것 -->
    </section>


	