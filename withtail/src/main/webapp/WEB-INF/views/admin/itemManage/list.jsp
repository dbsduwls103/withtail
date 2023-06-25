<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">

<style type="text/css">
.body-main {
	max-width: 900px;
}

.btn {
color: #333;
border: 1px solid #999;
background-color: #fff;
padding: 3px;
border-radius: 4px;
font-weight: 500;
font-size: 12px;
cursor: pointer;
font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
vertical-align: baseline;
}

.imgbox {
     width: 90px;
     height: 90px;
     padding: 10px;
     border: 1px solid #999;
     margin: 10px auto;
}

.btn-light {
    padding: 5px;
    margin: 3px;
    background-color: #fff;
    border-radius: 4px;
}

</style>

	  <style>
	         #modal.modal-overlay {
	            width: 100%;
	            height: 100%;
	            position: absolute;
	            left: 0;
	            top: 0;
	            display: flex;
	            flex-direction: column;
	            align-items: center;
	            justify-content: center;
	            background: rgba(255, 255, 255, 0.25);
	            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	            backdrop-filter: blur(1.5px);
	            -webkit-backdrop-filter: blur(1.5px);
	            border-radius: 10px;
	            border: 1px solid rgba(255, 255, 255, 0.18);
	        }
	        #modal .modal-window {
	            background: rgba( 69, 139, 197, 0.70 );
	            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
	            backdrop-filter: blur( 13.5px );
	            -webkit-backdrop-filter: blur( 13.5px );
	            border-radius: 10px;
	            border: 1px solid rgba( 255, 255, 255, 0.18 );
	            width: 400px;
	            height: 500px;
	            position: relative;
	            top: -100px;
	            padding: 10px;
	        }
	        #modal .title {
	            padding-left: 10px;
	            display: inline;
	            text-shadow: 1px 1px 2px gray;
	            color: white;
	            
	        }
	        #modal .title h2 {
	            display: inline;
	        }
	        #modal .close-area {
	            display: inline;
	            float: right;
	            padding-right: 10px;
	            cursor: pointer;
	            text-shadow: 1px 1px 2px gray;
	            color: white;
	        }
	        
	        #modal .content {
	            margin-top: 20px;
	            padding: 0px 10px;
	            text-shadow: 1px 1px 2px gray;
	            color: white;
	        }
	    </style>

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}

function changeList() {
	let parentCt = $("#changeCategory").val();
	let showNotice = $("#changeShowProduct").val();
	
	const f = document.searchForm;
	
	f.parentCt.value = parentCt;
	f.ctNum.value = 0;
	f.showNotice.value = showNotice;
	searchList();
}

function changeSubList() {
	let parentCt = $("#changeCategory").val();
	let ctNum = $("#changeSubCategory").val();
	let showNotice = $("#changeShowProduct").val();
	
	const f = document.searchForm;
	f.parentCt.value = parentCt;
	f.ctNum.value = ctNum;
	f.showNotice.value = showNotice;
	searchList();
}

</script>



<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-basket-shopping"></i> 상품 관리 </h2>
    </div>
    
    <div class="body-main">
       <form name="searchForm">
		<table class="table">
			<tr>
				<td align="left" width="50%">
					<select id="changeCategory" class="form-select" onchange="changeList();">
							<c:if test="${listCategory.size() == 0}">
								<option value="0">:: 메인카테고리 ::</option>
							</c:if>
							<c:forEach var="vo" items="${listCategory}">
								<option value="${vo.ctNum}" ${parentCt==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
							</c:forEach>
					</select>
					
					<!-- 위에서 상위 카테고리에 따라 내용이 달라져야해요! 예시는 강아지를 선택했을 때 -->
					<select id="changeSubCategory" class="form-select" onchange="changeSubList();">
							<c:if test="${listSubCategory.size() == 0}">
								<option value="0">:: 카테고리 ::</option>
							</c:if>
							<c:forEach var="vo" items="${listSubCategory}">
								<option value="${vo.ctNum}" ${ctNum==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
							</c:forEach>
					</select>
					
					<!-- 위에서 상위 카테고리에 따라 내용이 달라져야해요! 예시는 주식을 선택했을 때 -->
					<select id="changeLastCategory" class="form-select" onchange="changeLastList();" >
					    <option> 키블사료 </option>
					    <option> 습식사료 </option>
					    <option> 동결건조 </option>
					    <option> 화식 · 자연식 · 화식 </option>
					</select>
					
					<button class="btn">검색</button>
				</td>
				<td align="right" width="30%">
					${dataCount}개(${page}/${total_page} 페이지)
				</td>
			</tr>
		</table>
		</form>
		
		<table class="table table-border table-list">
			<thead>
				<tr>
					<th class="wx-50"><input type="checkbox"></th>
					<th class="wx-80">상품 코드</th>
					<th class="wx-130">상품 사진</th>
					<th class="wx-150">상품명</th>
					<th class="wx-100">가격</th>
					<th class="wx-80">할인율</th>
					<!-- 옵션 상관없는 전체 재고 -->
					<th class="wx-80">재고</th>
					<th class="wx-80">진열</th>
					<th class="wx-100">수정일</th>
					<th class="wx-80">변경</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr> 
						<td class="product-remove"><input type="checkbox"></td>
						<td>3</td>
                        <td><div class="imgbox" style="background:url(${pageContext.request.contextPath}/uploads/item/main/product_sample.png); background-size:cover;"></div></td>
						<td class="left">
						    <!-- 제품 상세 페이지로 이동 -->
							<a href="${pageContext.request.contextPath}/shop/info">포포 닭가슴살</a>
						</td>
						<td>${dto.price }</td>
						<td>${dto.discount }</td>
						<td>${dto.totalStock }</td>
						<td>${dto.showNotice==0?"진열":"숨김"}</td>
						<td>${dto.upddate }</td>
						<td>
							<button class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/itemManage/optionList';">재고</button> 
							<button class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/itemManage/write';">수정</button> 
						</td>
					</tr>
		  	</tbody>
		</table>
		 
		<div class="page-navigation">
			${dataCount == 0 ? "등록된 상품이 없습니다." : paging}
		</div>
		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				</td>
				<td align="center">
					<form name="searchForm" action="${pageContext.request.contextPath}/admin/inquiryManage/list" method="post">
						<select name="condition" class="form-select">
							<option value="all" ${col=="all"?"selected='selected'":""}>상품명+설명</option>
							<option value="productNum" ${col=="itemNum"?"selected='selected'":""}>상품코드</option>
							<option value="productName" ${col=="itemName"?"selected='selected'":""}>상품명</option>
							<option value="itemcontent" ${col=="itemcontent"?"selected='selected'":""}>설명</option>
						</select>
						
						<input type="text" name="kwd" value="${kwd}" class="form-control">
						<input type="hidden" name="size" value="${size}">
						<input type="hidden" name="parentCt" value="${parentCt}">
						<input type="hidden" name="ctNum" value="${ctNum}">
						<input type="hidden" name="showNotice" value="${showNotice}">
						<button type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="150">
					<div class="col text-end" style="display: inline-block;">
					    <button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/admin/itemManage/write';">글올리기</button>
				    </div>
				    
				    <div class="col text-end" style="display: inline-block;">
					    <button type="button" class="btn btn-light" onclick="">삭제</button>
				    </div>
				</td>
			</tr>
		</table>
	</div>
</div>
