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
		let url = "${pageContext.request.contextPath}/admin/dogmapManage/delete?" + query;
	
		if(confirm("위 게시글을 삭제 하시 겠습니까 ? ")) {
			location.href = url;
		} 
	}
</c:if>
</script>

<div class="body-container">
    <div class="body-title">
		<h2><i class="fas fa-clipboard-list"></i> 댕댕여지도 </h2>
    </div>
    
    <div class="body-main">

		<table class="table table-border table-article">
			<thead>
				<tr>
					<td colspan="2" align="center">
						시설명 ${dto.placeName}
					</td>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td colspan="2">
						지역 : ${dto.city}
					</td>
				</tr>
				<tr>
					<td colspan="2">
						분야 : ${dto.category}
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						대표키워드 : ${dto.keyword}
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
				 		우편번호 : 54248${dto.zip}
					</td>
				</tr>
				<tr>
					<td colspan="2">
						주소 : 서울시${dto.addr1} ${dto.addr2}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		홈페이지 : ${dto.homepage}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		전화번호 : ${dto.tel}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		소개 : ${dto.content}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		주요시설 : ${dto.mainact}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		이용요금 : ${dto.price}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		주차장 유무 : ${dto.parking}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		강아지 목욕시설 : ${dto.dogbath}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		비품 제공 : ${dto.amenity}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		펫 동반 식당 : ${dto.petResotrant}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		애견 몸무게 제한 : ${dto.weightLimit}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		실내/실외 : ${dto.inOut}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		대표 사진 : ${dto.photoName}
					</td>
				</tr>
				<tr>
					<td colspan="2">
						이전글 :
						<c:if test="${not empty preReadDto}">
							<a href="${pageContext.request.contextPath}/admin/dogMapManage/article?${query}&num=${preReadDto.num}">${preReadDto.subject}</a>
						</c:if>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						다음글 :
						<c:if test="${not empty nextReadDto}">
							<a href="${pageContext.request.contextPath}/admin/dogMapManage/article?${query}&num=${nextReadDto.num}">${nextReadDto.subject}</a>
						</c:if>
					</td>
				</tr>
			</tbody>
		</table>
			
		<table class="table">
			<tr>
				<td width="50%" align="left">
			    	<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/admin/dogmapManage/write';">수정</button>

	    			<button type="button" class="btn" onclick="deleteOk();">삭제</button>
				</td>
			
				<td align="right">
					<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/admin/dogmapManage/list?${query}';">리스트</button>
				</td>
			</tr>
		</table>
		
	</div>
</div>
