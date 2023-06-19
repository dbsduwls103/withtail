<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	a {
		color: #212529;
	}
	
	.inquiry-h3 {
		color: #555;
		font-weight: bold;
		margin-bottom: 1.5rem;
	}
	
	.table {
		border-top: 2px solid #333;
	}
	
	.table tbody tr td {
	    padding: 10px 10px;
	    border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
	}
	
	.td-tit {
		background: #eee !important;
	}
	
	.form-control {
		border-radius: 0.375rem;
		height: auto !important;
	}
	
	.btn {
		border-radius: 0.375rem;
	}
</style>

<script>
function sendOk() {
	
}
</script>

<section class="ftco-section" style="min-height: 550px;">
	<div class="container">
			<h3 class="text-center inquiry-h3">1:1 문의</h3>
			
			<form name="inquiryForm" method="post">
				<table class="table table-bordered mx-auto" style="border-collapse: collapse; min-width: 800px !important; max-width: 800px !important;">
					<tbody>
						<tr>
							<td class="td-tit">구 분</td>
							<td>
								<select name="category" class="form-select">
									<option value="상품">상품</option>
									<option value="배송">배송</option>
									<option value="결제">결제</option>
									<option value="기타">기타</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="td-tit">제 목</td>
							<td>
								<input type="text" name="subject" class="form-control">
							</td>
						</tr>
						<tr>
							<td class="td-tit">작성자</td>
							<td class="text-start" style="text-align: left !important;">
								김자바
							</td>
						</tr>
						<tr>
							<td class="td-tit">내용</td>
							<td>
								<textarea name="content" class="form-control" style="resize: none; height: 200px !important;"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="d-flex gap-2 justify-content-center">
					<button type="button" class="btn btn-secondary" onclick="sendOk();">등록하기</button>
					<button type="reset" class="btn btn-outline-secondary">다시입력</button>
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/inquiry/list';">등록취소</button>
				</div>
			</form>
	</div>
</section>