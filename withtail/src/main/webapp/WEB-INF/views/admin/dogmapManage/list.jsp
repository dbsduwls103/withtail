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
		<h2><i class="fas fa-clipboard-list"></i> 댕댕여지도 </h2>
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
					<th>시설명</th>
					<th class="wx-100">지역</th>
					<th class="wx-100">분야</th>
					<th class="wx-100">대표키워드</th>
				</tr>
			</thead>
		 
		 	<tbody>				

					<tr> 
						<td>${dto.num}1</td>
						<td class="left">
							<a href="${pageContext.request.contextPath}/admin/dogmapManage/article">${dto.placeName}제목</a>
						</td>
						<td>${dto.city}</td>
						<td>${dto.category}152</td>
						<td>${dto.keyword}7867</td>
						
					</tr>
			</tbody>
		</table>
		 
		<div class="page-navigation">
			123
		</div>
		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/dogmapManage/list';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/dogmapManage/list" method="post">
						<select name="condition" class="form-select">
							<option value="placeName" ${condition=="subject"?"selected='selected'":""}>시설명</option>
							<option value="city" ${condition=="startDate"?"selected='selected'":""}>지역</option>
							<option value="category" ${condition=="endDate"?"selected='selected'":""}>분야</option>
							<option value="keyword" ${condition=="discount"?"selected='selected'":""}>대표키워드</option>
						</select>
						<input type="text" name="keyword" value="${keyword}" class="form-control">
						<button type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/dogmapManage/write';">글올리기</button>
				</td>
			</tr>
		</table>

	</div>
</div>