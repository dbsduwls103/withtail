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
	
	.table > thead {
		background-color: rgba(50,50,100,0.04);
		color: #333;
	}
	
	.table tbody tr td {
	    text-align: center !important;
	    vertical-align: middle;
	    padding: 0.75rem;
	    border: 1px solid transparent !important;
	    border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
    }
    
    .form-control {
    	height: calc(2.25rem + 2px) !important;
	}
	
	.bw-100 {
		width: 100px;
	}
	.td-date {
		width: 150px;
	}
	
	.form-select:focus {
		outline: none;
		box-shadow: none;
		border: 1px solid #82ae46;
	}
	
	.form-control:focus {
		border: 1px solid #82ae46;
	}
	
	.btn:focus {
		border: 1px solid #82ae46 !important;
		box-shadow: none;
	}
	
	/*탭*/
	.tab-ul {
		font-size: 16px;
	}
	
	.tab-ul > li {
		border: 1px solid #999;
	}
	
	.tab-ul > li:nth-child(2) {
		border-left: 0;
		border-right: 0;
	}
	
	.tab-ul > li > a {
		display: block;
		padding: 10px 0;
		background: #eee;
		box-sizing: border-box;
	}
	
	.tab-ul > li > a:hover {
		background: #333;
		color: #fff;
		font-weight: 600;
	}
	
	.tab-ul > li > a.active {
		background: #82ae46;
		color: #fff;
		font-weight: 600;
	}
	
	.tab-ul .col-md-4 {
		padding-left: 0 !important;
		padding-right: 0 !important;
	}
	
	/* 이벤트 ul */
	.ev-ul {
		border-bottom: 1px solid #eee;
		padding-top: 10px;
		padding-bottom: 10px;
		height: 200px;
	}
	
	.ev-li {
		padding-left: 0 !important;
		padding-right: 0 !important;
		overflow: hidden;
	}
	
	/* 이벤트 ul 안 */
	.ev-content {
		margin-top: 0.7rem;
	}
	
	.ing-span {
		background: #82ae46;
		color: #fff;
		padding: 3px 20px;
		display: inline-block;
	}
	
	.exit-span {
		background: #999;
		color: #fff;
		padding: 3px 20px;
		display: inline-block;
	}
	
	.event_img {
		width: 100%;
		display: block;
		max-height: 100%;
		object-fit: cover;
		-webkit-transform: scale(1);
	    -moz-transform: scale(1);
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transform: scale(1);
	    -moz-transition: all 0.3s ease;
	    -o-transition: all 0.3s ease;
	    -webkit-transition: all 0.3s ease;
	    -ms-transition: all 0.3s ease;
	    transition: all 0.3s ease;
	}
	
	.ev-li > a:hover .event_img {
		-webkit-transform: scale(1.1);
	    -moz-transform: scale(1.1);
	    -ms-transform: scale(1.1);
	    -o-transform: scale(1.1);
	    transform: scale(1.1);
	}
	
	.ev-date {
		font-weight: 600;
		font-size: 18px;
		margin-bottom: 0 !important;
	}
</style>

<section class="ftco-section" style="min-height: 550px;">
	<div class="container">
		<h3 class="text-center notice-h3">이벤트</h3>
		
		<!-- 탭 -->
		<ul class="tab-ul col-md-12 d-flex text-center mb-3">
			<li class="col-md-4"><a href="#" class="active">전체 이벤트</a></li>
			<li class="col-md-4"><a href="#">진행중 이벤트</a></li>
			<li class="col-md-4"><a href="#">종료된 이벤트</a></li>
		</ul>
		<!-- //탭 -->
		
		<div class="ev-div">
			<ul class="col-md-12 d-flex ev-ul">
				<li class="col-md-4 ev-li">
					<a href="${pageContext.request.contextPath}/event/article">
						<img alt="이벤트 배너" src="${pageContext.request.contextPath}/resources/images/sample/event01.png" class="event_img">
					</a>
				</li>
				<li class="col-md-8">
					<div class="ev-content">
						<span class="ing-span mb-2">진행중</span>
						<h3><a href="${pageContext.request.contextPath}/event/article">구매후기 이벤트</a></h3>
						<p class="text-truncate" style="max-width: 550px;"><a href="#">구매후기를 올리시면 5명을 추첨하여 30% 할인 쿠폰을 드립니다.</a></p>
						<p class="ev-date">2023-06-19 ~ 2023-06-26</p>
					</div>
				</li>
			</ul>
			<ul class="col-md-12 d-flex ev-ul">
				<li class="col-md-4 ev-li">
					<a href="${pageContext.request.contextPath}/event/article">
						<img alt="이벤트 배너" src="${pageContext.request.contextPath}/resources/images/sample/event01.png" class="event_img">
					</a>
				</li>
				<li class="col-md-8">
					<div class="ev-content">
						<span class="exit-span mb-2">마감</span>
						<h3><a href="${pageContext.request.contextPath}/event/article">구매후기 이벤트</a></h3>
						<p class="text-truncate" style="max-width: 550px;"><a href="#">구매후기를 올리시면 5명을 추첨하여 30% 할인 쿠폰을 드립니다.</a></p>
						<p class="ev-date">2023-06-19 ~ 2023-06-26</p>
					</div>
				</li>
			</ul>
		</div>

		<!-- 페이징 -->
		<div class="row my-5">
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //페이징 -->

		<div class="col-md-12 d-flex" style="align-items: center; padding-left: 0; padding-right: 0;">
			<div class="col col-md-2 d-flex" style="align-items: center;">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/notice/list';" title="새로고침"><i class="bi bi-arrow-counterclockwise"></i></button>
			</div>
			<div class="col col-md-8 text-center">
				<form name="searchForm" class="d-flex gap-2 align-items-center justify-content-center">
					<select name="condition" class="form-select" style="width: auto !important;">
						<option value="all">제목+내용</option>
						<option value="reg_date">등록일</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="keyword" class="form-control" style="border-radius: 0.375rem; width: 200px;">
					<button type="button" class="btn btn-outline-secondary" style="display: inline-block; border-radius: 0.375rem;">검색</button>
				</form>
			</div>
			<div class="col col-md-2 text-right">
				&nbsp;
				<!--<button type="button" class="btn btn-outline-secondary" style="display: inline-block;" onclick="location.href='${pageContext.request.contextPath}/inquiry/write';">공지등록</button>-->
			</div>
		</div>
		
	</div>
</section>