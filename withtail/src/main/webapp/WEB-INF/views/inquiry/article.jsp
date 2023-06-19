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
	
	.bold {
		font-weight: bold;
	}
	
	.bp-tit {
		font-weight: 600;
	}
	
	.table-bordered thead th, .table-bordered thead td {
    	border-bottom: none;
	}
	
	.table tbody tr td {
    	padding: 10px;
	}
	
	.bar-span {
		color: #999;
		display: inline-block;
		margin-left: 5px;
		margin-right: 5px;
	}
	
	.state {
		border: 1px solid #999;
		border-radius: 50px;
		padding: 5px 10px;
	}
</style>

<section class="ftco-section" style="min-height: 550px;">
	<div class="container">
		<h3 class="text-center inquiry-h3">1:1 문의</h3>
		
		<table class="table table-bordered mx-auto mb-5" style="min-width: 800px !important; max-width: 800px !important;">
			<thead style="border-bottom: 2px solid #999;">
				<tr>
					<td class="bold" style="background: #999; color: #fff; width:100px;">Q</td>
					<td>
						<span class="bp-tit">[상품]</span> 상품문의입니다.
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<span class="state">답변대기</span>
					</td>
					<td style="text-align: right !important;">
						작성자 : 김자바<span class="bar-span">|</span>작성일 : 2023-06-19 09:00
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: left !important;">
						1번 상품에 대해 질문이 있는데요.<br>
						유통기한이 어떻게 되나요?
					</td>
				</tr>
			</tbody>
		</table>
		
		<table class="table table-bordered mx-auto" style="min-width: 800px !important; max-width: 800px !important;">
			<thead style="border-bottom: 2px solid #82ae46;">
				<tr>
					<td class="bold" style="background: #82ae46; color: #fff; width:100px; ">A</td>
					<td>
						<span class="bp-tit">[답변]</span> 상품문의에 대한 답변입니다.
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2" style="text-align: right !important;">
						담당자 : 관리자<span class="bar-span">|</span>작성일 : 2023-06-19 10:00
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: left !important;">
						김자바 회원님 안녕하세요.<br>
						해당 상품의 유통기한은 2024-06-30일까지입니다.<br>
						감사합니다.
					</td>
				</tr>
			</tbody>
		</table>
		
		<div class="col-md-12 d-flex mx-auto" style="max-width: 800px; padding-left: 0; padding-right: 0;">
			<div class="col-md-6 text-start" style="padding-left: 0; padding-right: 0;">
				<button type="button" class="btn btn-outline-secondary">문의삭제</button>
			</div>
			<div class="col-md-6 text-end" style="padding-left: 0; padding-right: 0;">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/inquiry/list';">리스트</button>
			</div>
		</div>
	</div>
</section>