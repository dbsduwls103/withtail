<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">

<style type="text/css">
.body-main {
	max-width: 900px;
}

.row-flex { display: flex; justify-content: space-between; }
.left-item {
	width:30px; margin-right: 1px;    padding:10px 10px;
    width:30px;
    text-align: center;
	font-weight: 600;
	color: #fff;
}
.right-item {
	flex-grow: 1;
    overflow: hidden;
    text-overflow: ellipsis;
    word-spacing: nowrap;
    box-sizing: border-box;
    padding: 10px 7px;
	font-weight: 600;
	color: #fff;
}
.left-question { background: #0d6efd; }
.right-question { background: #0d6efd; }

.left-answer { background: #198754; }
.right-answer { background: #198754; }
</style>

<script type="text/javascript">
function deleteInquiry(num) {
	if(confirm("문의를 삭제 하시겠습니까 ?")) {
		let query = "num="+num+"&${query}";
		let url = "${pageContext.request.contextPath}/admin/inquiryManage/delete?"+query;
		location.href = url;
	}
}

function deleteAnswer(num) {
	if(confirm("답변을 삭제 하시겠습니까 ?")) {
		let query = "num="+num+"&${query}";
		let url = "${pageContext.request.contextPath}/admin/inquiryManage/deleteAnswer?"+query;
		location.href = url;
	}
}

function sendAnswerOk() {
	const f = document.answerForm;
	if(!f.answer.value.trim()) {
		alert("답변을 입력 하세요");
		f.answer.focus();
		return;
	}
	
	f.action = "${pageContext.request.contextPath}/admin/inquiryManage/answer";
	f.submit();
}
</script>

<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-person-circle-question"></i> 1:1 문의 </h2>
    </div>
    
    <div class="body-main">

		<table class="table table-border table-article">
			<tbody>
				<tr style="border: none;">
					<td colspan="2" style="padding: 10px 0 0 0;">
						<div class="row-flex">
							<div class="left-item left-question">Q</div>
							<div class="right-item right-question">[배송] 닭가슴살 주세요</div>
						</div>
					</td>
				</tr>
				<tr>
					<td width="50%" align="left">
						작성자 : 최포포(popo123)
					</td>
					<td width="50%" align="right">
						문의일자 : 2023-06-15
					</td>
				</tr>
				
				<tr>
					<td colspan="2" valign="top" height="150">
						닭가슴살 언제 오나요.
					</td>
				</tr>
			</tbody>
		</table>
		
			<table class="table table-border table-article">
				<tbody>
					<tr style="border: none;">
						<td colspan="2" style="padding: 0 0 0 0;">
							<div class="row-flex">
								<div class="left-item left-answer">A</div>
								<div class="right-item right-answer">[답변] 그만 드세요</div>
							</div>
						</td>
					</tr>
					<tr>
						<td width="50%" align="left">
							담당자 : 관리자
						</td>
						<td width="50%" align="right">
							답변일자 : 2023-06-17
						</td>
					</tr>
					
					<tr>
						<td colspan="2" valign="top" height="150">
							닭가슴살 과잉 섭취로 주문 취소 했습니다.
						</td>
					</tr>
				</tbody>
			</table>

        <!--  위에 지우고 사용하세용
		<c:if test="${not empty dto.answer}">
			<table class="table table-border table-article">
				<tbody>
					<tr style="border: none;">
						<td colspan="2" style="padding: 0 0 0 0;">
							<div class="row-flex">
								<div class="left-item left-answer">A</div>
								<div class="right-item right-answer">[답변] ${dto.subject}</div>
							</div>
						</td>
					</tr>
					<tr>
						<td width="50%" align="left">
							담당자 : ${dto.answerName}
						</td>
						<td width="50%" align="right">
							답변일자 :  ${dto.answer_date}
						</td>
					</tr>
					
					<tr>
						<td colspan="2" valign="top" height="150">
							${dto.answer}
						</td>
					</tr>
				</tbody>
			</table>
		</c:if>               
        -->
				
		<table class="table">
			<tr>
				<td width="50%" align="left">
					<button type="button" class="btn" onclick="deleteInquiry('${dto.num}');">질문삭제</button>
				    <button type="button" class="btn" onclick="deleteAnswer('${dto.num}');">답변삭제</button>
				</td>
			
				<td align="right">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/';">리스트</button>
				</td>
			</tr>
		</table>
		
			<div class="reply">
				<form name="answerForm" method="post">
					<div class='form-header'>
						<span class="bold">답변달기</span><span> - 문의에 대한 답변을 입력 하세요</span>
					</div>
					
					<table class="table reply-form">
						<tr>
							<td>
								<textarea class='form-control' name='answer'></textarea>
							</td>
						</tr>
						<tr>
						   <td align='right'>
						        <button type='button' class='btn' onclick="sendAnswerOk()">답변 등록</button>
						        <input type="hidden" name="num" value="${dto.num}">
						        <input type="hidden" name="page" value="${page}">
						        <input type="hidden" name="condition" value="${condition}">
						        <input type="hidden" name="keyword" value="${keyword}">
						    </td>
						 </tr>
					</table>
				</form>
			</div>
			
			
			<!-- 위에 지우고 사용해주세용
			<c:if test="${empty dto.answer}">
				<div class="reply">
					<form name="answerForm" method="post">
						<div class='form-header'>
							<span class="bold">답변달기</span><span> - 문의에 대한 답변을 입력 하세요</span>
						</div>
						
						<table class="table reply-form">
							<tr>
								<td>
									<textarea class='form-control' name='answer'></textarea>
								</td>
							</tr>
							<tr>
							   <td align='right'>
							        <button type='button' class='btn' onclick="sendAnswerOk()">답변 등록</button>
							        <input type="hidden" name="num" value="${dto.num}">
							        <input type="hidden" name="page" value="${page}">
							        <input type="hidden" name="condition" value="${condition}">
							        <input type="hidden" name="keyword" value="${keyword}">
							    </td>
							 </tr>
						</table>
					</form>
				</div>
			</c:if>			
			-->
	</div>
</div>
