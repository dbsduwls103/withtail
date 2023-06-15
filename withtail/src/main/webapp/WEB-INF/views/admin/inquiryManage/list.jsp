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
function searchList() {
	const f = document.searchForm;
	f.submit();
}
</script>

<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-person-circle-question"></i> 1:1 문의 </h2>
    </div>
    
    <div class="body-main">

		<table class="table">
			<tr>
				<td align="left" width="50%">
					1개(1/1 페이지)
				</td>
				<td align="right">&nbsp;</td>
			</tr>
		</table>
		
		<table class="table table-border table-list">
			<thead>
				<tr>
					<th class="wx-100">분류</th>
					<th>제목</th>
					<th class="wx-100">작성자</th>
					<th class="wx-80">문의일자</th>
					<th class="wx-80">처리결과</th>

				</tr>
			</thead>
		 	<tbody>
					<tr> 
						<td>배송</td>
						<td class="left">
							<a href="#">닭가슴살 주세요</a>
						</td>
						<td>최포포</td>
						<td>2023-06-15</td>
						<td>답변대기</td>
					</tr>
		  	</tbody>
		</table>
		 
		<div class="page-navigation">
			1 2 3 
		</div>
		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/inquiryManage/list';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/inquiryManage/list" method="post">
						<select name="condition" class="form-select">
							<option value="all" ${condition=="all"?"selected='selected'":""}>제목+내용</option>
							<option value="userId" ${condition=="userId"?"selected='selected'":""}>아이디</option>
							<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
							<option value="reg_date" ${condition=="reg_date"?"selected='selected'":""}>등록일</option>
							<option value="subject" ${condition=="subject"?"selected='selected'":""}>제목</option>
							<option value="content" ${condition=="content"?"selected='selected'":""}>내용</option>
						</select>
						<input type="text" name="keyword" value="${keyword}" class="form-control">
						<button type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="100">
					&nbsp;
				</td>
			</tr>
		</table>

	</div>
</div>
