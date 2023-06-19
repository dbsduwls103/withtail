<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">


<style type="text/css">
.body-main {
	max-width: 900px;
}



.category {
    width: 130px;
    padding: 3px;
    border-radius: 3px;
    height: 25px;
}

.btn {
color: #333;
border: 1px solid #999;
background-color: #fff;
padding: 4px;
border-radius: 4px;
font-weight: 500;
font-size: 12px;
cursor: pointer;
font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
vertical-align: baseline;
}


.tab-menu {
  border: 1px solid #ddd;
  border-radius: 4px;
}

.tab {
  display: flex;
}

.tab-button {
  background-color: #f2f2f2;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 10px 20px;
  flex: 1;
  font-weight: bold;
  transition: background-color 0.3s ease;
}

.tab-button:hover {
  background-color: #ddd;
}

.tab-button.active {
  background-color: #ccc;
}

.tab-content {
  display: none;
  padding: 20px;
}

.tab-content h3 {
  margin-top: 0;
}

th:first-child, td:first-child{width: 10%;}
th:nth-child(4), td:nth-child(4){width: 4%;}
th:nth-child(5), td:nth-child(5){width: 10%;}


</style>


<script type="text/javascript">

	window.onload = function() {
	
	    $("#tab1").show();
	    $("#tab2").hide();
	};
	

function openTab(evt, tabName) {
	  var i, tabcontent, tabbuttons;
	  
	  tabcontent = document.getElementsByClassName("tab-content");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  
	  tabbuttons = document.getElementsByClassName("tab-button");
	  for (i = 0; i < tabbuttons.length; i++) {
	    tabbuttons[i].classList.remove("active");
	  }
	  
	  document.getElementById(tabName).style.display = "block";
	  evt.currentTarget.classList.add("active");
	}
	
	
</script>


    <div class="body-title">
		<h2><i class="fa-solid fa-user"></i> 주문 목록 </h2>
    </div>
    
     <div class="body-main">
     
     	<div style="margin-bottom: 10px">
			<h4 ><i class="fa-solid fa-magnifying-glass"></i> 주문 검색 </h4>
	    </div>
		
		<form name="orderForm1" method="post">
		<table class="table table-border border-top2 table-form">
				<tr> 
					<td>검색어</td>
					<td> 
						<div style="display: inline-block;">
							<select name="condition" class="category">
							    <option value="">  :: 선택 :: </option>
							    <option value=""> 아이디 </option>
							    <option value=""> 이름 </option>
							</select>
						</div>
						<div style="display: inline-block; width: 200px;" >
					    	<input type="text" name="key" maxlength="100" class="form-control" value="검색값">
						</div>
		            </td>
				</tr>
				
			
				<tr> 
					<td>기간 </td>
					<td> 
					   <div style="display: inline-block;">
							<select name="condition" class="category">
							    <option value="">  :: 선택 :: </option>
							    <option value=""> 주문 리스트 </option>
							    <option value=""> 환불 리스트 </option>
							</select>
						</div>
						<div style="display: inline-block; text-align: center; width: 20%">
					    	<input type="date" name="start" maxlength="100" class="form-control" value="시작날짜">
						</div>
						<span>~</span>
						<div style="display: inline-block; text-align: center; width: 20%">
					    	<input type="date" name="end" maxlength="100" class="form-control" value="끝날짜">
						</div>
						<div style="display: inline-block;">
						<button class="btn">어제</button>
						<button class="btn">오늘</button>
						<button class="btn">일주일</button>
						<button class="btn">지난달</button>
						<button class="btn">3개월</button>
						<button class="btn">전체</button>
						</div>
						<div style="display: inline-block; margin-left: 10px;">
							 <button type="button" class="btn">검색</button> 						
					     </div>
				    </td>
				</tr>
			</table>
			</form>
	
	<br><br>
		
	<div class="tab-menu" style="border: none;">
	  <div class="tab">
	    <button class="tab-button active" id="btn_1" onclick="openTab(event, 'tab1')">주문 리스트</button>
	    <button class="tab-button" id="btn_2" onclick="openTab(event, 'tab2')">환불 리스트</button>
	  </div>
	  <div id="tab1" class="tab-content" style="padding: 0px;">
        <table class="table table-border table-list" style="margin-top: 10px;">
	  		<thead>
				<tr>
					<th >주문 번호</th>
					<th >회원 아이디</th>
					<th >상품명</th>
					<th >수량 </th>
					<th >결제 금액</th>
					<th >주문일</th>
					<th >주문상태</th>
					<th >주문상태 선택</th>
					<th >상태일자</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr>
						<td>1323132</td>
						<td class="left">
							popo111
						</td>
						<td>KONG 테니스공 장난감(대)</td>
						<td> 2 </td>
						<td>3300원</td>
						<td>2023-03-15</td>
						<td>결제 완료</td>
						<td> 
							<select name="state">
								<option value="">  :: 선택 :: </option>
								<option value="">결제 완료</option>
								<option value="">상품 준비중</option>
								<option value="">배송중</option>
								<option value="">배송 완료</option>
								<option value="">구매 확정</option>
							</select> 
						</td>
						<td> 2023-03-15 </td>
					</tr>
		  	</tbody>
        
        	<tbody>
					<tr>
						<td>5523352</td>
						<td class="left">
							jangu12
						</td>
						<td>KONG 테니스공 장난감(대)</td>
						<td> 5 </td>
						<td>34,300원</td>
						<td>2023-03-12</td>
						<td>상품 준비중</td>
						<td> 
							<select name="state">
								<option value="">  :: 선택 :: </option>
								<option value="">결제 완료</option>
								<option value="">상품 준비중</option>
								<option value="">배송중</option>
								<option value="">배송 완료</option>
								<option value="">구매 확정</option>
							</select> 
						</td>
						<td> 2023-03-13 </td>
					</tr>
		  	</tbody>
        
         </table>
	   	
	   	
	   	<div class="page-navigation">
			123
		</div>
	  
	  </div>
	  
	  
	  
	  
	  
	  
	  
	  
	  <div id="tab2" class="tab-content" style="padding: 0px;">
	   
		<table class="table table-border table-list" style="margin-top: 10px;">
	  		<thead>
				<tr>
					<th >주문 번호</th>
					<th >회원 아이디</th>
					<th >상품명</th>
					<th >수량 </th>
					<th >결제금액</th>
					<th >주문일</th>
					<th >환불상태</th>
					<th >환불상태 선택</th>
					<th >환불처리 일자</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr>
						<td>1323132</td>
						<td class="left">
							popo111
						</td>
						<td>KONG 테니스공 장난감(대)</td>
						<td> 2 </td>
						<td>3300원</td>
						<td>2023-03-15</td>
						<td>환불 처리</td>
						<td> 
							<select name="state">
								<option value="">  :: 선택 :: </option>
								<option value="">환불처리완료</option>
							</select> 
						</td>
						<td> 2023-03-15 </td>
					</tr>
		  	</tbody>
        
        	<tbody>
					<tr>
						<td>5523352</td>
						<td class="left">
							jangu12
						</td>
						<td>KONG 테니스공 장난감(대)</td>
						<td> 5 </td>
						<td>34,300원</td>
						<td>2023-03-12</td>
						<td>환불 요청</td>
						<td> 
							<select name="state">
								<option value="">  :: 선택 :: </option>
								<option value="">환불처리완료</option>
							</select> 
						</td>
						<td> -- </td>
					</tr>
		  	</tbody>
        
         </table>
	   	
	   	
	   	<div class="page-navigation">
			123
		</div>
	  





	</div>
	
	</div>
	
	
	
	</div>



