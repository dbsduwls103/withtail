<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {
	max-width: 850px;
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

img {width: 50px;}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">

<script type="text/javascript">
<c:if test="${sessionScope.member.userId==dto.userId||sessionScope.member.membership>50}">
	function deleteBoard() {
	    if(confirm("게시글을 삭제 하시 겠습니까 ? ")) {
		    let query = "num=${dto.num}&${query}";
		    let url = "${pageContext.request.contextPath}/bbs/delete?" + query;
	    	location.href = url;
	    }
	}
</c:if>
</script>




    <div class="body-title">
		<h2><i class="fas fa-clipboard-list"></i> 리뷰 관리 </h2>
    </div>
<div class="container">
	<div class="body-container">	
		
		<div class="body-main">

			<table class="table mb-0">
				<thead>
					<!-- 상품상세페이지로 연결 -->
					<tr class="">
						<td style="width: 60px;"><img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg"></td>
						<td style="padding: 0px;">제조사<br>두바보 MDF 펜던트 (펜던트만) P13</td>
					</tr>
					<tr >
						<td style="padding-bottom: 0px;">김땡땡</td>
						<td style="padding-bottom: 0px; text-align: right;">2023.06.15</td>
					</tr>
					<tr style="border-bottom: 1px solid #eee; ">
						<td colspan="2" align="center" style="padding-top: 5px;">
							<div class="stars">
								<div class="star star-layout">
									<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">
								</div>
								<div class="star-layout-two">
									<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">			
								</div>
								<div class="star-layout-two">
									<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star-on.svg" width="12" height="12">			
								</div>
								<div class="star-layout-two">
									<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
								</div>
								<div class="star-layout-two">
									<img alt="star" src="${pageContext.request.contextPath}/resources/svg/star.svg" width="12" height="12">			
								</div>
							</div>
						</td>
					</tr>
					
				</thead>
				
				<tbody>
					
					<tr>
						<td colspan="2" valign="top" height="150" style="border-bottom: none;">
							리뷰 내용입니다
						</td>
					</tr>
					
					
				</tbody>
			</table>
			
			<table class="table table-borderless mb-2">
				<tr>
					<td width="50%">
				    	
						<c:choose>
				    		<c:when test="${sessionScope.member.userId==dto.userId || sessionScope.member.membership>50}">
				    			<button type="button" class="btn btn-light" onclick="deleteBoard();">삭제</button>
				    		</c:when>
				    		<c:otherwise>
				    			<button type="button" class="btn btn-light" disabled="disabled">삭제</button>
				    		</c:otherwise>
				    	</c:choose>
					</td>
					<td style="text-align: right" >
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/bbs/list?${query}';">리스트</button>
					</td>
				</tr>
			</table>
			
			
			
			
			
			
			<div class="reply">
				<form name="replyForm" method="post">
					<div class='form-header'>
						<span class="bold">답변 내용</span>
					</div>
					
					<table class="table table-borderless reply-form">
						<tr>
							<td>
								<textarea class='form-control' name="content" style="height: 150px;"></textarea>
							</td>
						</tr>
						<tr>
						   <td align='right'>
						        <button type='button' class='btn btn-light btnSendReply'>답변 등록</button>
						    </td>
						 </tr>
					</table>
				</form>
				
			</div>

		</div>
	</div>
</div>