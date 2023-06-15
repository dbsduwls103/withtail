<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">
<style type="text/css">
.body-main {
	max-width: 900px;
}

.badge {
	display: inline-block; padding:2px 3px; background: #0d6efd; color: #fff; font-weight: 500;
	font-size: 11px;
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
		<h2><i class="fas fa-clipboard-list"></i> 공지사항 </h2>
    </div>
    
    <div class="body-main">

		<table class="table">
			<tr>
				<td align="left" width="50%">
					1개(1/1 페이지)
				</td>
				<td align="right">
					&nbsp;
				</td>
			</tr>
		</table>
		
		<table class="table table-border table-list">
			<thead>
				<tr>
					<th class="wx-60">번호</th>
					<th>제목</th>
					<th class="wx-100">작성자</th>
					<th class="wx-100">작성일</th>
					<th class="wx-70">조회수</th>
					<th class="wx-50">첨부</th>
					<th class="wx-50">표시</th>
				</tr>
			</thead>
		 
		 	<tbody>
		 		<!-- 공지일때 -->
					<tr> 
						<td><span class="badge">공지</span></td>
						<td class="left">
							<a href="#">제목입니다</a>
						</td>
						<td>관리자</td>
						<td>0000.00.00</td>
						<td>1</td>
						<td>
							<c:if test="">
								<a href="#"><i class="fa-solid fa-file-zipper"></i></a>
							</c:if>
						</td>
						<td>&nbsp;</td>
					</tr>
				
				<!--일반게시물  -->
					<tr> 
						<td>1</td>
						<td class="left">
							<a href="#">제목입니다</a>
							<c:if test="">
								<img src='#'>
							</c:if>
						</td>
						<td>관리자</td>
						<td>0000.00.00</td>
						<td>1</td>
						<td>
							<c:if test="">
								<a href="#"><i class="fa-solid fa-file-zipper"></i></a>
							</c:if>		      
						</td>
						<td>표시</td>
					</tr>
					
			</tbody>
		</table>
		 
		<div class="page-navigation">
			123
		</div>
		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/noticeManage/list';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/noticeManage/list" method="post">
						<select name="condition" class="form-select">
							<option value="all" ${condition=="all"?"selected='selected'":""}>모두</option>
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
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/noticeManage/write';">글올리기</button>
				</td>
			</tr>
		</table>

	</div>
</div>
