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

.stuck_input {
    width: 50px;
    text-align: center;
    border-radius: 50px;
    padding: 15px;
    margin: 10px auto;
}

.updatebtn {
    margin: 30px;
    width:30px;
    height: 30px;
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
		<h2><i class="fa-solid fa-basket-shopping"></i> 상품 관리 </h2>
    </div>
    
    <div class="body-main">

		<table class="table">
			<tr>
				<td align="left" width="50%">
					<select name="대분류카테고리" >
					    <option> 강아지 </option>
					    <option> 고양이 </option>
					</select>
					
					<!-- 위에서 상위 카테고리에 따라 내용이 달라져야해요! 예시는 강아지를 선택했을 때 -->
					<select name="중분류 카테고리" >
					    <option> 주식 </option>
					    <option> 간식 </option>
					    <option> 패션 </option>
					    <option> 산책 · 외출 </option>
					    <option> 건강보조제 </option>
					    <option> 홈 · 리빙 </option>
					    <option> 장난감 </option>
					    <option> 목욕 · 위생 </option>
					</select>
					
					<!-- 위에서 상위 카테고리에 따라 내용이 달라져야해요! 예시는 주식을 선택했을 때 -->
					<select name="소분류 카테고리" >
					    <option> 키블사료 </option>
					    <option> 습식사료 </option>
					    <option> 동결건조 </option>
					    <option> 화식 · 자연식 · 화식 </option>
					</select>
				</td>
				<td align="right" width="30%">
					1개(1/1 페이지)
				</td>
			</tr>
		</table>
		
		<table class="table table-border table-list">
			<thead>
				<tr>
					<th class="wx-50"><input type="checkbox"></th>
					<th class="wx-100">상품 코드</th>
					<th class="wx-130">상품 사진</th>
					<th class="wx-150">상품명</th>
					<th class="wx-100">상위 옵션</th>
					<th class="wx-100">하위 옵션</th>
					<th class="wx-100">가격</th>
					<th class="wx-80">재고</th>
					<th class="wx-100">수정일</th>
					<th class="wx-100">확인</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr> 
						<td class="product-remove"><input type="checkbox"></td>
						<td>3</td>
                        <td><div class="imgbox" style="background:url(${pageContext.request.contextPath}/resources/images/main/product_sample.png); background-size:cover;"></div></td>
						<td class="left">
						    <!-- 제품 상세 페이지로 이동 -->
							<a href="#">포포 닭가슴살</a>
						</td>
						<td>간식</td>
						<td>육포/져키</td>
						<td>10000</td>
						 <td class="quantity">
                          <div style="display: flex; justify-content: space-between; align-items: center">
                          
                            <span >
                              <button type="button" data-type="plus" class="updatebtn">
                               <i class="fa-sharp fa-solid fa-plus"></i>
                              </button>
                            </span >
                            
                            <span>
                              <input type="text" id="quantity" name="stock" class="form-control stuck_input" value="13" min="1" max="100">
                            </span>
                            
                            <span>
                              <button type="button" data-type="minus" class="updatebtn">
                                <i class="fa-solid fa-minus"></i>
                              </button>
                            </span>
                            
                          </div>
                        </td>
						<td>2023-06-24</td>
						<td>
							<button class="btn" style="pause: 3px;" onclick="">변경</button> 
						</td>
					</tr>
		  	</tbody>
		  	
		  	
		   <!--  위에 지우고 사용해주세용
		 	<tbody>
				<c:forEach var="dto" items="${list}">
					<tr> 
						<td>${dto.category}</td>
						<td class="left">
							<a href="${articleUrl}&num=${dto.num}">${dto.subject}</a>
						</td>
						<td>${dto.userName}</td>
						<td>${dto.reg_date}</td>
						<td>${(empty dto.answer_date)?"답변대기":"답변완료"}</td>
					</tr>
				</c:forEach>
		  	</tbody>			
		   -->
			
		</table>
		 
		<div class="page-navigation">
			1 2 3 
		</div>
		
		<table class="table">
			<tr>
				<td align="left" width="100">
					<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin';" title="새로고침"><i class="fa-solid fa-arrow-rotate-left"></i></button>
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
				
			</tr>
		</table>

	</div>
</div>
