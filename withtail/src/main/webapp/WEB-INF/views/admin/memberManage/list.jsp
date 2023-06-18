<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">

<style type="text/css">
.body-main {
	max-width: 900px;
}

.tabmenu{ 
  margin: 0 auto; 
  position:relative; 
}
.tabmenu ul{
  position: relative;
}
.tabmenu ul li{
  display:  inline-block;
  width:200px; 
  float:left;  
  text-align:center; 
  background :#f9f9f9;
  line-height:40px;
}
.tabmenu label{
  display:block;
  width:200; 
  height:40px;
  line-height:40px;
}
.tabmenu input{display:none;}
.tabCon{
  display:none; 
  width: 100%;
  text-align:left; 
  padding: 20px;
  position:absolute; 
  left:0; top:40px; 
  box-sizing: border-box; 
  border : 5px solid #f9f9f9;
}
.tabmenu input:checked ~ label{
  background:#ccc;
}
.tabmenu input:checked ~ .tabCon{
  display:block;
}

.long {
    margin: 5px auto;
    width: 500px;
    margin-left: 0px;
}

.short {
    margin: 5px auto;
    margin-left: 0px;
    display: inline-block;
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

.tap {
    border: none;
    background: #f3f3f3;
    width: 100px;
    height: 30px;
    padding: 6px;
    display: inline-block
}

</style>

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}

function block() {
	if(!confirm('이 회원을 정지 시키겠습니까?')) {
		return;
	}
}

</script>

<script type="text/javascript">
        window.onload = function() {

            $("#table1").show();
            $("#table2").hide();
        }
        $(document).ready(function() {
            $("#btn_1").click(function() {

                $("#table1").show();
                $("#table2").hide();
            })
            $("#btn_2").click(function() {

                $("#table1").hide();
                $("#table2").show();
            })
            
        })
    </script>

<div class="body-container">


    <div class="body-title">
		<h2><i class="fa-solid fa-user"></i> 회원 목록 </h2>
    </div>
    
    <div class="body-main">
    
        <div style="margin-bottom: 10px">
		<h4 ><i class="fa-solid fa-magnifying-glass"></i> 회원 검색 </h4>
	    </div>
	    
	    <div class="body-main">
	    
		<form name="noticeForm" method="post" >
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
						<div style="display: inline-block;">
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
							    <option value=""> 가입기간 </option>
							    <option value=""> 정지기간 </option>
							</select>
						</div>
						<div style="display: inline-block; text-align: center; width: 20%">
					    	<input type="date" name="start" maxlength="100" class="form-control" value="시작날짜">
						</div>
						<span>~</span>
						<div style="display: inline-block; text-align: center; width: 20%">
					    	<input type="date" name="end" maxlength="100" class="form-control" value="끝날짜">
						</div>
						<button class="btn">어제</button>
						<button class="btn">오늘</button>
						<button class="btn">일주일</button>
						<button class="btn">지난달</button>
						<button class="btn">3개월</button>
						<button class="btn">전체</button>
					</td>
				</tr>
			</table>
	   </form>
	   
      <table class="table" style="margin-top: 50px;">
			<tr>
			  <td>
			    <div>
				   <h4><i class="fa-solid fa-user-check"></i> 회원 목록 </h4>
		        </div>
              </td>
		      <td align="right" width="50%">
					1개(1/1 페이지)
			  </td>
			</tr>
		</table>
		
		
    <div class="tabmenu out-tabmenu">
        <button type="button" id="btn_1" class="tap">정상 회원</button>
        <button type="button" id="btn_2" class="tap">정지 회원</button>
    </div>
    <div style="clear:both;"></div>
    <div >
        <div id="table1" width="100%">
           <table class="table table-border table-list" style="margin-top: 10px;">
	  		<thead>
				<tr>
					<th class="wx-50"><input type="checkbox"></th>
					<th class="wx-80">회원 코드</th>
					<th class="wx-100">회원 아이디</th>
					<th class="wx-100">회원 이름</th>
					<th class="wx-80">상태</th>
					<th class="wx-130">가입 날짜</th>
					<th class="wx-200">마지막 로그인</th>
					<th class="wx-200">관리</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr>
						<td class="product-remove"><input type="checkbox"></td>
						<td>1</td>
						<td class="left">
							<a href="#">popo1111</a>
						</td>
						<td>최포포</td>
						<td>정상</td>
						<td>2023-03-15</td>
						<td>2023-06-18 17:23:34</td>
						<td>
							<button class="btn" onclick="block();">정지</button> 
							<button class="btn" onclick="location.href='${pageContext.request.contextPath}';">수정</button> 
						</td>
					</tr>
		  	</tbody>
		 	<tbody>
					<tr>
						<td class="product-remove"><input type="checkbox"></td>
						<td>2</td>
						<td class="left">
							<a href="#">popo2222</a>
						</td>
						<td>강포포</td>
						<td>정상</td>
						<td>2023-02-14</td>
						<td>2023-06-10 12:26:30</td>
						<td>
							<button class="btn" onclick="block();">정지</button> 
							<button class="btn" onclick="location.href='${pageContext.request.contextPath}';">수정</button> 
						</td>
					</tr>
		  	</tbody>
            </table>

        </div>

        <div id="table2" width="100%">
            <table class="table table-border table-list" style="margin-top: 10px;">
	  		<thead>
				<tr>
					<th class="wx-50"><input type="checkbox"></th>
					<th class="wx-80">회원 코드</th>
					<th class="wx-100">회원 아이디</th>
					<th class="wx-100">회원 이름</th>
					<th class="wx-80">상태</th>
					<th class="wx-130">가입 날짜</th>
					<th class="wx-200">정지 날짜</th>
					<th class="wx-200">관리</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr>
						<td class="product-remove"><input type="checkbox"></td>
						<td>1</td>
						<td class="left">
							<a href="#">shsh0000</a>
						</td>
						<td>김성훈</td>
						<td>정지</td>
						<td>2023-01-23</td>
						<td>2023-06-15</td>
						<td>
							<button class="btn" onclick="block();">정지 해제</button> 
						</td>
					</tr>
		  	</tbody>
		 	<tbody>
					<tr>
						<td class="product-remove"><input type="checkbox"></td>
						<td>1</td>
						<td class="left">
							<a href="#">msms1111</a>
						</td>
						<td>이민석</td>
						<td>정지</td>
						<td>2023-02-14</td>
						<td>2023-03-24</td>
						<td>
							<button class="btn" onclick="block();">정지 해제</button> 
						</td>
					</tr>
		  	</tbody>
            </table>
        </div>

		</div>
		 
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
							<option value="userId" ${condition=="userId"?"selected='selected'":""}>아이디</option>
							<option value="userName" ${condition=="userName"?"selected='selected'":""}>이름</option>
							<option value="regDate" ${condition=="regDate"?"selected='selected'":""}>가입날짜</option>
						</select>
						<input type="text" name="keyword" value="${keyword}" class="form-control">
						<button type="button" class="btn" onclick="searchList()">검색</button>
					</form>
				</td>
				<td align="right" width="150">
					<div class="col text-end" style="display: inline-block;">
					    <button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/admin/stuffManage/write';">글올리기</button>
				    </div>
				    
				    <div class="col text-end" style="display: inline-block;">
					    <button type="button" class="btn btn-light" onclick="">삭제</button>
				    </div>
				</td>
			</tr>
		</table>
      </div>
	</div>
</div>
