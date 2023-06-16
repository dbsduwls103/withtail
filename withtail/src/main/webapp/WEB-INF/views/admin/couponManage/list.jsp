<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">
<style type="text/css">
.body-main {
	max-width: 900px;
}

.badge {
	display: inline-block; padding:2px 3px; background: #0d6efd; color: #fff; font-weight: 500;
	font-size: 11px;
}
</style>

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}
</script> 

<div class="body-container">
    <div class="body-title">
		<h2><i class="fas fa-clipboard-list"></i> 쿠폰 관리 </h2>
    </div>
    
    <div class="body-main">

		<table class="table">
			<tr>
				<td align="left" width="50%">
					${dataCount}개(${page}/${total_page} 페이지)
				</td>
				<td align="right">
					&nbsp;
				</td>
			</tr>
		</table>
		
		<table class="table table-border table-list">
			<thead>
				<tr>
					<th class="wx-60">번호</th>
					<th>제목</th>
					<th class="wx-100">시작일</th>
					<th class="wx-100">종료일</th>
					<th class="wx-50">구분</th>
					<th class="wx-50">가격</th>
				</tr>
			</thead>
		 
		 	<tbody>				

					<tr> 
						<td>${dto.num}</td>
						<td class="left">
							<a href="#">${dto.name}</a>
						</td>
						<td>${dto.startDate}</td>
						<td>${dto.endDate}</td>
						<td>
							<c:choose>
								<c:when test="${dto.category==0}">
									<a><i class="fa-solid fa-category">할인가</i></a>
								</c:when>
								<c:when test="${dto.category==1}">
									<a><i class="fa-solid fa-category">할인율</i></a>
								</c:when>		
								<c:otherwise>
								</c:otherwise>	 
							</c:choose>     
						</td>
						<td>
							<c:choose>
								<c:when test="${dto.category==0}">
									<a href="#"><i class="fa-solid fa-price">${dto.price}</i></a>
								</c:when>
								<c:when test="${dto.category==1}">
									<a href="#"><i class="fa-solid fa-price">${dto.price}%</i></a>
								</c:when>
								<c:otherwise>
								</c:otherwise>		 
							</c:choose>     
						</td>
					</tr>
					
					
					
					<tr>
						<td>1</td>
						<td><a href="${pageContext.request.contextPath}/admin/couponManage/article">가입이벤트</a></td>
						<td>2000-01-01</td>
						<td>2000-01-31</td>
						<td>할인율</td>
						<td>10%</td>
					</tr>
					
			</tbody>
		</table>
		 
		<div class="page-navigation">
			123
		</div>
		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/couponManage/list';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/couponManage/list" method="post">
						<select name="condition" class="form-select">
							<option value="subject" ${condition=="subject"?"selected='selected'":""}>제목</option>
							<option value="startDate" ${condition=="startDate"?"selected='selected'":""}>시작일</option>
							<option value="endDate" ${condition=="endDate"?"selected='selected'":""}>종료일</option>
							<option value="discount" ${condition=="discount"?"selected='selected'":""}>할인가/할인율</option>
							<option value="price" ${condition=="price"?"selected='selected'":""}>가격</option>
						</select>
						<input type="text" name="keyword" value="${keyword}" class="form-control">
						<button type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/couponManage/write';">글올리기</button>
				</td>
			</tr>
		</table>

	</div>
</div>