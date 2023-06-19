<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">
<style type="text/css">
.body-main {
	max-width: 900px;
}
</style>

<script type="text/javascript">
<c:if test="${sessionScope.member.membership==99}">
	function deleteOk() {
		let query = "num=${dto.num}&${query}";
		let url = "${pageContext.request.contextPath}/admin/couponManage/delete?" + query;
	
		if(confirm("위 쿠폰을 삭제 하시 겠습니까 ? ")) {
			location.href = url;
		} 
	}
</c:if>
</script>

<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-tags"></i> 쿠폰 </h2>
    </div>
    
    <div class="body-main">

		<table class="table table-border table-article">
			<thead>
				<tr>
					<td colspan="2" align="center">
						${dto.name}
					</td>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td width="30%">
						이름 : 가입이벤트
					</td>
				</tr>
				<tr>
					<td width="50%" align="left">
						할인율 : 10%
					</td>
				</tr>

				<tr>
					<td width="50%" align="left">
						시작일 : 2000-01-01
					</td>
				</tr>
				<tr>
					<td width="50%" align="left">
						종료일 : 2000-01-31
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						이전쿠폰 :
						<c:if test="${not empty preReadDto}">
							<a href="${pageContext.request.contextPath}/admin/couponManage/article?${query}&num=${preReadDto.num}">${preReadDto.subject}</a>
						</c:if>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						다음쿠폰 :
						<c:if test="${not empty nextReadDto}">
							<a href="${pageContext.request.contextPath}/admin/couponManage/article?${query}&num=${nextReadDto.num}">${nextReadDto.subject}</a>
						</c:if>
					</td>
				</tr>
			</tbody>
		</table>
			
		<table class="table">
			<tr>
				<td width="50%" align="left">
			    	<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/admin/couponManage/write';">수정</button>

	    			<button type="button" class="btn" onclick="deleteOk();">삭제</button>
				</td>
			
				<td align="right">
					<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/admin/couponManage/list?${query}';">리스트</button>
				</td>
			</tr>
		</table>
		
	</div>
</div>
