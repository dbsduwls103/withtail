<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">

/* 모달대화상자 */
.ui-widget-header { /* 타이틀바 */
	background: none;
	border: none;
	border-bottom: 1px solid #ccc;
	border-radius: 0;
}
.ui-dialog .ui-dialog-title {
	padding-top: 5px; padding-bottom: 5px; 
}
.ui-widget-content { /* 내용 */
   /* border: none; */
   border-color: #ccc; 
}

.table-article tr>td { padding-left: 5px; padding-right: 5px; }

.img-box {
	max-width: 700px;
	padding: 5px;
	box-sizing: border-box;
	display: flex; /* 자손요소를 flexbox로 변경 */
	flex-direction: row; /* 정방향 수평나열 */
	flex-wrap: nowrap;
	overflow-x: auto;
}
.img-box img {
	width: 100px; height: 100px;
	margin-right: 5px;
	flex: 0 0 auto;
	cursor: pointer;
}

.photo-layout img { width: 515px; height: 450px; }

.bold { font-weight: bold;}


.user-wrap {
	width: 100%;
	margin: 10px auto;
	position: relative;
}
.user-wrap img {
	width: 100%;
	vertical-align: middle;
}
.user-text {
	position: absolute;
	top: 45%;
	left: 50%;
	width: 100%;
	transform: translate( -50%, -50% );
	font-weight: bold;
    font-size: 15px;
    font-family: 'ypseo';
    text-align:center;
    color: white;
}

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

.body-main {
	max-width: 1140px;
}
.btn{border-radius: 10px;}

.btn:hover{background: #6C757D; color: white}


.pointhover:hover{
  background-color: #82ae4654;
  
}
.score-star { font-size: 0; letter-spacing: -4px; text-align: left;}
.score-star .item {
	font-size: 18px; letter-spacing: -2px; display: inline-block;
	color: #ccc; text-decoration: none; vertical-align: middle;
}
.score-star .item:first-child{ margin-left: 0; }
.score-star .on { color: #FFE400; font-weight: bold; }


</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">

<script type="text/javascript">

//이미지 모달
function imageViewer(img) {
	const viewer = $(".photo-layout");
	let s="<img src='"+img+"'>";
	viewer.html(s);
	
	$(".dialog-photo").dialog({
		title:"이미지",
		width: 550,
		height: 540,
		modal: true
	});
}



function deleteBoard() {
	    if(confirm("리뷰를 삭제 하시 겠습니까 ? ")) {
		   // let url = "${pageContext.request.contextPath}/admin/reviewManage/delete?" + query;
	    	//location.href = url;
	    }
	}

function deleteReply() {
    if(confirm("답변을 삭제 하시 겠습니까 ? ")) {
	   // let url = "${pageContext.request.contextPath}/admin/reviewManage/delete?" + query;
    	//location.href = url;
    }
}

function sendAnswerOk() {
	const f = document.replyForm;
	if(!f.replyContent.value.trim()) {
		alert("답변을 입력 하세요");
		f.replyContent.focus();
		return;
	}
	
	f.action = "${pageContext.request.contextPath}/admin/reviewManage/reply";
	f.submit();
}

</script>




		<div class="body-main">
<div class="body-title">
<h2><i class="fas fa-clipboard-list"></i> 리뷰 관리 </h2>
</div>

			<table class="table mb-0" style="font-weight: bold;">
				<thead>
					<!-- 상품상세페이지로 연결 -->
					<tr class="">
						<td style="width: 60px; padding-bottom: 0px;"><img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/uploads/shop/${dto.mainImage}"></td>
						<td style="padding: 0px;">${dto.madeby }<br>${dto.itemName }</td>
					</tr>
					<tr >
						<td style="width: 60px;"></td>
						<td style="padding: 0px;">${dto.userName }</td>
						<td style="padding: 0px; text-align: right;">${dto.regDate }</td>
					</tr>
					<tr style="border-bottom: 1px solid #eee; ">
						<td style="width: 60px;"></td>
						<td align="center" style="padding-top: 0;">
								<div class="score-star review-score-star">
									<c:forEach var="n" begin="1" end="5">
										<c:set var="star" value="${dto.star + ((dto.star%1>=0.5) ? (1-dto.star%1)%1 : -(dto.star%1))}"/>
										<span class="item fs-2 ${dto.star>=n?'on':''}">★</span>
									</c:forEach>
								</div>
						</td>
					</tr>
					
				</thead>
				
				<tbody>
					
					<tr>
						<td colspan="2" valign="top" height="150" style="border-bottom: none; padding: 20px">
							${dto.rvContent }
						</td>
					</tr>
					<tr style="border-bottom: none;">
						<td colspan="2" height="110">
								<!-- foreach문으로 사진리스트 돌리기 -->
							
							
							<div style="display: flex">
							<c:if test="${not empty dto.rvMainImage }">
								<div class="img-box">
									<img src="${pageContext.request.contextPath}/uploads/review/${dto.rvMainImage}"
										onclick="imageViewer('${pageContext.request.contextPath}/uploads/review/${dto.rvMainImage}');">
								</div>
							</c:if>
							<c:forEach var="p" items="${list }">
								<div class="img-box">
									<img src="${pageContext.request.contextPath}/uploads/review/${p.saveName}"
										onclick="imageViewer('${pageContext.request.contextPath}/uploads/review/${p.saveName}');">
								</div>
							</c:forEach>
							</div>
						</td>	
					</tr>
					
				</tbody>
			</table>
			
			<table class="table table-borderless mb-2">
				<tr   >
					<td width="50%" style="padding-bottom: 30px;">
				    	
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
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/admin/reviewManage/list';">리스트</button>
					</td>
				</tr>
			</table>
			<c:if test="${not empty dto.replyContent}">
			<hr>
			<br>
			<table class="table mb-0">
				<thead>
					<tr style=" border-bottom: 1px solid #eee;">
						<td>관리자</td>
						<td style="text-align: right;">${dto.replyDate } <a onclick="deleteReply();"> | 삭제</a></td>
					</tr>

				</thead>
				
				<tbody>
					<tr>
						<td colspan="2" valign="top" height="150" style="border-bottom: none;">
							${replyContent }
						</td>
					</tr>
				</tbody>
			</table>
			</c:if>
			
			
			<c:if test="${empty dto.replyContent}">
			<div class="reply">
				<form name="replyForm" method="post">
					<div class='form-header'>
						<span class="bold">답변 달기</span><span> - 리뷰에 대한 답변을 입력 하세요</span>
					</div>
					
					<table class="table table-borderless reply-form">
						<tr>
							<td>
								<textarea class='form-control' name="replyContent" style="height: 150px;"></textarea>
							</td>
						</tr>
						<tr>
						   <td align='right'>
						        <button type='button' class='btn btn-light btnSendReply' onclick="sendAnswerOk()">답변 등록</button>
						    	  <input type="hidden" name="num" value="${dto.rvNum}">
						        <input type="hidden" name="page" value="${page}">
						        <input type="hidden" name="condition" value="${condition}">
						        <input type="hidden" name="keyword" value="${keyword}">
						    </td>
						 </tr>
					</table>
				</form>
				
			</div>
			</c:if>
		</div>


<div class="dialog-photo">
      <div class="photo-layout"></div>
</div>