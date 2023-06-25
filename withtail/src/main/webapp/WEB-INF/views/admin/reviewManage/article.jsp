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

.photo-layout img { width: 570px; height: 450px; }

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
		    let query = "num=${dto.num}&${query}";
		    let url = "${pageContext.request.contextPath}/admin/reviewManage/delete?" + query;
	    	//location.href = url;
	    }
	}

function deleteReply() {
    if(confirm("답변을 삭제 하시 겠습니까 ? ")) {
	    let query = "num=${dto.num}&${query}";
	    let url = "${pageContext.request.contextPath}/admin/reviewManage/delete?" + query;
    	//location.href = url;
    }
}


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
						<td style="width: 60px; padding-bottom: 0px;"><img alt="f-product-image" class="f-product-image" src="${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg"></td>
						<td style="padding: 0px;">제조사<br>두바보 MDF 펜던트 (펜던트만) P13</td>
					</tr>
					<tr >
						<td style="width: 60px;"></td>
						<td style="padding: 0px;">김땡땡</td>
						<td style="padding: 0px; text-align: right;">2023.06.15</td>
					</tr>
					<tr style="border-bottom: 1px solid #eee; ">
						<td style="width: 60px;"></td>
						<td align="center" style="padding-top: 5px;">
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
							리뷰 내용 입니다
						</td>
					</tr>
					<tr style="border-bottom: none;">
						<td colspan="2" height="110">
								<!-- foreach문으로 사진리스트 돌리기 -->
							<div class="img-box">
									
									<img src="${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg"
										onclick="imageViewer('${pageContext.request.contextPath}/resources/images/icon/d3b9142c2ad60c913e9763341b85fabe.jpg');">
							
							</div>
						</td>	
					</tr>
					
				</tbody>
			</table>
			
			<table class="table table-borderless mb-2">
				<tr style="border-bottom: 1px solid black; "  >
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
			<br>
			<table class="table mb-0">
				<thead>
					<tr style=" border-bottom: 1px solid #eee;">
						<td>관리자</td>
						<td style="text-align: right;">2023.06.15 <a onclick="deleteReply();"> | 삭제</a></td>
					</tr>

				</thead>
				
				<tbody>
					<tr>
						<td colspan="2" valign="top" height="150" style="border-bottom: none;">
							답변 내용 입니다
						</td>
					</tr>
				</tbody>
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


<div class="dialog-photo">
      <div class="photo-layout"></div>
</div>