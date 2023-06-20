<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	a {
		color: #212529;
	}
	
	.notice-h3 {
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
	
	.notice-h3 > a {
		color: #555;
	}
	.notice-h3 > a:hover {
		color: #555 !important;
	}
	
	.event_img {
		width: 100%;
		display: block;
	}
	
	.ev-tit {
		font-weight: 600;
		font-size: 18px;
	}
	
	.ing-span {
		background: #82ae46;
		color: #fff;
		padding: 3px 10px;
		display: inline-block;
		border-radius: 0.375rem;
		font-size: 14px;
		vertical-align: middle;
		font-weight: normal;
	}
	
	.va-m {
		vertical-align: middle;
	}
	
	.name-span {
		font-weight: 600;
	}
	
	.num-span {
		font-weight: 600;
		color: red;
	}
	
	/* 당첨자 모달 */
	.winner-div {
		display: inline-block;
		padding: 5px 10px;
	}
	
</style>

<section class="ftco-section" style="min-height: 550px;">
	<div class="container">
		<h3 class="text-center notice-h3">
			<a href="${pageContext.request.contextPath}/event/list">이벤트</a>
		</h3>
		
		<table class="table table-bordered mx-auto" style="min-width: 800px !important; max-width: 800px !important;">
			<tbody style="border-top: 2px solid #999;">
				<tr>
					<td colspan="2" class="ev-tit" style="border-bottom: 1px solid #999 !important;">
						<span class="ing-span mr-2">진행중</span><span class="va-m">구매후기 이벤트</span>
					</td>
				</tr>
				<tr>
					<td style="text-align: left !important;">
						이벤트 기간 : 2023-06-19 09:00 ~ 2023-06-26 17:00
					</td>
					<td style="text-align: right !important;">
						작성자 : 관리자<span class="bar-span">|</span>조회 : 0
					</td>
				</tr>
				<tr>
					<td style="text-align: left !important;">
						당첨일자 : 2023-06-26 18:00
					</td>
					<td style="text-align: right !important;">
						당첨인원 : 5명
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<p style="margin: 0; padding: 1rem 0; font-size: 16px;">
							축하합니다. <span class="name-span">김자바</span>님은 이벤트에 <span class="num-span">1등</span>으로 당첨되었습니다.
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: left !important; vertical-align: top;">
						<img alt="이벤트 배너" src="${pageContext.request.contextPath}/resources/images/sample/event01.png" class="event_img mb-2">
						구매후기를 올리시면 5명을 추첨하여 30% 할인 쿠폰을 드립니다.
					</td>
				</tr>
				<tr>
					<td colspan="2" style="padding: 20px 0;">
						<button type="button" class="btn btn-outline-secondary btnEventWinnerList">이벤트 당첨자 확인</button>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: left !important;">이전글 : </td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: left !important;">다음글 : </td>
				</tr>
			</tbody>
		</table>
		
		<div class="col-md-12 d-flex mx-auto" style="max-width: 800px; padding-left: 0; padding-right: 0;">
			<div class="col-md-6 text-start" style="padding-left: 0; padding-right: 0;">
				<!--<button type="button" class="btn btn-outline-secondary">삭제</button>-->
			</div>
			<div class="col-md-6 text-end" style="padding-left: 0; padding-right: 0;">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/event/list';">리스트</button>
			</div>
		</div>
	</div>
	
	<!-- 모달 -->
	<script type="text/javascript">
		$(function(){
			$(".btnEventWinnerList").click(function(){
				$("#eventWinnerModal").modal("show");	
			});
		});
	</script>
	
	<div class="modal fade" id="eventWinnerModal" tabindex="-1" aria-labelledby="eventWinnerModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="eventWinnerModalLabel">이벤트 당첨자 리스트</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center">
	                 <div class="row row-cols-4 g-1">
	                 		<div class="col">
	                 			<div class="border winner-div">
									<span>
										1등 :
									</span>
									<span style="font-weight: 500;">
										김*바(kim**)
									</span>
								</div>
	                 		</div>
	                 </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //모달 -->
</section>