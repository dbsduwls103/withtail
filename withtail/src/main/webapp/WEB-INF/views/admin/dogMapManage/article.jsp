<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">
<style type="text/css">
.out{
 display: flex; align-items: center;  flex-direction: row; justify-content: center;
}

.body-main {
	width: 960px;
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

<div class="out">
    
    <div class="body-main">
    <div class="body-title">
		<h2><i class=" fa-solid fa-democrat"></i> 댕댕여지도 </h2>
    </div>

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
						지역 : 지역${dto.city}
					</td>
				</tr>
				<tr>
					<td colspan="2">
						분야 : 분야${dto.category}
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						대표키워드 : 대표키워드${dto.keyword}
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
				 		우편번호 : 우편번호${dto.zip}
					</td>
				</tr>
				<tr>
					<td colspan="2">
						주소 : 서울시${dto.addr1} ${dto.addr2}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		홈페이지 : homepage${dto.homepage}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		전화번호 : tel${dto.tel}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		소개 : content${dto.content}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		주요시설 : mainact${dto.mainact}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		이용요금 : price${dto.price}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		주차장 유무 : Yes${dto.parking}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		강아지 목욕시설 : Yes${dto.dogbath}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		비품 제공 : Yes${dto.amenity}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		펫 동반 식당 : Yes${dto.petResotrant}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		애견 몸무게 제한 : Yes${dto.weightLimit}
					</td>
				</tr>
				<tr>
					<td colspan="2">
				 		실내/실외 : 실내${dto.inOut}
					</td>
				</tr>
				<tr>
					<td colspan="2">
					대표 사진 : ${dto.photoName} <br>
					<img src="${pageContext.request.contextPath}/resources/images/bg.png" height=300 width=400>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						이전글 :
						<c:if test="${not empty preReadDto}">
							<a href="${pageContext.request.contextPath}/admin/dogmapManage/article?${query}&num=${preReadDto.num}">${preReadDto.subject}</a>
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
			    	<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/admin/dogMapManage/write';">수정</button>

	    			<button type="button" class="btn" onclick="deleteOk();">삭제</button>
				</td>
			
				<td align="right">
					<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/admin/dogMapManage/list?${query}';">리스트</button>
				</td>
			</tr>
		</table>
		
	</div>
</div>
