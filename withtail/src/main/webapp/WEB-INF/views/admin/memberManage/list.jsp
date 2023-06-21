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

.tab-menu {
  border: 1px solid #ddd;
  border-radius: 4px;
}

.tab {
  display: flex;
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


</style>

 <style>
        #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
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
            background: #f4f4f4;
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid gray;
            width: 400px;
            height: 250px;
            position: relative;
            left: 10px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
        }
        
.modalbtn {
     margin: 30px auto;
}     

.modalbtnbox{
  text-align: center;
}   


.modalinput {
  padding: 3px;
}

</style>

<style>
        #infomodal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
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
        #infomodal .modal-window {
            background: #f4f4f4;
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid gray;
            width: 800px;
            height: 600px;
            position: relative;
            left: 10px;
            padding: 10px;
        }
        #infomodal .title {
            padding-left: 10px;
            display: inline;
            
        }
        #infomodal .title h2 {
            display: inline;
        }
        #infomodal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
        }
        
        #infomodal .content {
            margin-top: 20px;
            padding: 0px 10px;
        }
        
.modalbtn {
     margin: 30px auto;
}     

.modalbtnbox{
  text-align: center;
}   


.modalinput {
  padding: 3px;
}

</style>

<script type='text/javascript'>
function settingsInput(option, value) {
	const startDateObj = document.getElementById("startDate");
	const endDateObj = document.getElementById("endDate");
	
	let date = new Date();
	let y = date.getFullYear();
	let m = date.getMonth()+1;
	let d = date.getDate();
	
	endDateObj.value = dateToString(date);
	
	if(option === "day") {
		startDateObj.value = dateToString(date);
	} else if(option === "week") {
		startDateObj.value = dateToString(new Date(y, m-1, d-7));
	} else if(option === "month") {
		let last = (new Date(y, m-value, 0)).getDate();
		if(d > last) {
			d = last;
		}
		startDateObj.value = dateToString(new Date(y, m-1-value, d+1));
	} else if(option === "year") {
		startDateObj.value = dateToString(new Date(y-value, m-1, d+1));
	}
}

function searchList() {
	const f = document.searchForm;
	
	if(! isValidDateFormat(f.startDate.value)) {
		f.startDate.focus();
		return;
	}
	
	if(! isValidDateFormat(f.endDate.value)) {
		f.endDate.focus();
		return;
	}
	
	if(diffDays(f.startDate.value, f.endDate.value) < 0) {
		alert("시작일은 종료일보다 클수 없습니다.");
		f.startDate.focus();
		return;
	}

	if(diffDays(f.endDate.value, dateToString(new Date())) < 0) {
		alert("종료일은 오늘보다 클수 없습니다.");
		f.endDate.focus();
		return;
	}
	
	alert("성공...");
	
}

// 날짜를 문자열로
function dateToString(date) {
	let y = date.getFullYear();
	let m = date.getMonth() + 1;
    if(m < 10) m='0'+m;
    let d = date.getDate();
    if(d < 10) d='0'+d;
    
    return y + '-' + m + '-' + d;
}

// 문자열을 날짜로
function stringToDate(data) {
	if(! isValidDateFormat(data)) {
		throw "날짜 형식이 올바르지 않습니다.";
	}

	let format = /(\.)|(\-)|(\/)/g;
	data = data.replace(format, "");
    
	let y = parseInt(data.substring(0, 4));
	let m = parseInt(data.substring(4, 6));
	let d = parseInt(data.substring(6));
    
    return new Date(y, m-1, d);
}

function isValidDateFormat(data){
	if(data.length !== 8 && data.length !== 10) return false;
		
	let p = /(\.)|(\-)|(\/)/g;
	data = data.replace(p, "");
	if(data.length !== 8) return false;
	
	// let format = /^[12][0-9]{3}[0-9]{2}[0-9]{2}$/;
	let format = /^[12][0-9]{7}$/;
	if(! format.test(data)) return false;
    
	let y = parseInt(data.substring(0, 4));
	let m = parseInt(data.substring(4, 6));
	let d = parseInt(data.substring(6));

	if(m<1 || m>12) return false;
	let lastDay = (new Date(y, m, 0)).getDate();
	if(d<1 || d>lastDay) return false;
	
	return true;
}

// 두 날짜 사이의 일자 구하기
function diffDays(startDate, endDate) {
	if(! isValidDateFormat(startDate) || ! isValidDateFormat(endDate)) {
		throw "날짜 형식이 올바르지 않습니다.";
	}

	let format = /(\.)|(\-)|(\/)/g;
    startDate = startDate.replace(format, "");
    endDate = endDate.replace(format, "");
   
    let sy = parseInt(startDate.substring(0, 4));
    let sm = parseInt(startDate.substring(4, 6));
    let sd = parseInt(startDate.substring(6));
    
    let ey = parseInt(endDate.substring(0, 4));
    let em = parseInt(endDate.substring(4, 6));
    let ed = parseInt(endDate.substring(6));

    let fromDate = new Date(sy, sm-1, sd);
    let toDate = new Date(ey, em-1, ed);
    
    let sn = fromDate.getTime();
    let en = toDate.getTime();
    
    let diff = en-sn;
    let day = Math.floor(diff/(24*3600*1000));
    
    return day;
}
</script>

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}

function block() {
	if(!confirm('이 회원의 정지를 해제하시겠습니까??')) {
		return;
	}
}

</script>

<script type="text/javascript">
	$(document).ready(function() {
          $("#btn_1").click(function() {
        	  location.href="${pageContext.request.contextPath}/admin/memberManage/list/general"
          });
          
          $("#btn_2").click(function() {
        	  location.href="${pageContext.request.contextPath}/admin/memberManage/list/stop"
          });
	});
</script>
 
<div class="body-container">


    <div class="body-title">
		<h2><i class="fa-solid fa-user"></i> 회원 목록 </h2>
    </div>
    
    <div class="body-main">
    
        <div style="margin-bottom: 10px">
		<h4 ><i class="fa-solid fa-magnifying-glass"></i> 회원 검색 ${dataCount }</h4>
	    </div>
	    
	    <div class="body-main">
	    	
	    	<form name="searchForm" action="${pageContext.request.contextPath}/admin/memberManage/list/${state}" method="post">
				<table class="table table-border border-top2 table-form">
					<tr> 
						<td>검색어</td>
						<td> 
							<div style="display: inline-block;">
								<select name="condition1" class="category">
								    <option value="">  :: 선택 :: </option>
								    <option value="userId" ${condition1=="userId"?"selected='selected'":""}> 아이디 </option>
								    <option value="userName" ${condition1=="userName"?"selected='selected'":""}> 이름 </option>
								</select>
							</div>
							<div style="display: inline-block; width: 200px;" >
						    	<input type="text" name="keyword" maxlength="100" class="form-control" placeholder="검색값" value="${keyword }">
							</div>
			            </td>
					</tr>
					
					<tr> 
						<td>기간 </td>
						<td> 
						   <div style="display: inline-block;">
								<select name="condition2" class="category">
								    <option value="">  :: 선택 :: </option>
								    <option value="regDate" ${condition2=="regDate"?"selected='selected'":""}> 가입기간 </option>
								    <option value="stRegDate" ${condition2=="stRegDate"?"selected='selected'":""}> 정지기간 </option>
								</select>
							</div>
							<div style="display: inline-block; text-align: center; width: 20%">
						    	<input type="date" id="startDate" name="startKeyword" maxlength="100" class="form-control" value="${startKeyword}">
							</div>
							<span>~</span>
							<div style="display: inline-block; text-align: center; width: 20%">
						    	<input type="date" id="endDate" name="endKeyword" maxlength="100" class="form-control" value="${endKeyword}" >
							</div>
							<div style="display: inline-block;">
							<button type="button" class="btn" onclick="settingsInput('day', 0);">오늘</button>
       						<button type="button" class="btn" onclick="settingsInput('week', 1);">1주일</button>
					        <button type="button" class="btn" onclick="settingsInput('month', 1);">1개월</button>
					        <button type="button" class="btn" onclick="settingsInput('month', 3);">3개월</button>
					        <button type="button" class="btn" onclick="settingsInput('month', 6);">6개월</button>
					        <button type="button" class="btn" onclick="settingsInput('year', 1);">1년</button>
							</div>
							<div style="display: inline-block; margin-left: 10px;">
								 <button type="submit" class="btn">검색</button> 						
						     </div>
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

			</tr>
		</table>
		
    <div class="tab-menu" style="border: none;">
    	 <div class="tab">
	        <button type="button" class="tab-button ${state=='general'?'active':'' }" id="btn_1" >정상 회원</button>
	        <button type="button" class="tab-button ${state=='stop'?'active':'' }" id="btn_2" >정지 회원</button>
   		</div>
    </div>
    
    <div style="clear:both;"></div>
    
    <div>
        <div id="table1" style="padding: 0px;">
        	<div style="text-align: right; margin-top: 15px;">
        		${dataCount }개(${page}/${total_page}페이지)
        	</div>
           <table class="table table-border table-list" style="margin-top: 10px;">
		  		<thead>
					<tr>
						<th class="wx-80">회원 코드</th>
						<th class="wx-100">회원 아이디</th>
						<th class="wx-100">회원 이름</th>
						<th class="wx-80">상태</th>
						<th class="wx-130">${state=="general"?"가입일자":"정지일자" }</th>
						<th class="wx-200">마지막 로그인</th>
						<th class="wx-200">관리</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="dto" items="${list}">
							<tr class="hover" onclick="profile('${dto.userId}');">
								<td>${dto.num }</td>
								<td>
									<a href="javascript:infoOn('${dto.userId }');">${dto.userId }</a>
								</td>
								<td>${dto.userName }</td>
								<td>${dto.enabled==1? "정상":"정지" }</td>
								<td>${dto.regDate}</td>
								<td>${empty dto.lastLogin ? "--":dto.lastLogin }</td>
								<td>
									<c:if test="${state=='general'}">
										<button class="btn" onclick="modalOn();" style="width: 45px;">정지</button> 
									</c:if>
									<c:if test="${state=='stop'}">
										<button class="btn" onclick="block();">정지 해제</button> 
									</c:if>
								</td>
							</tr>
				  </c:forEach>
				  	</tbody>
            </table>
			<div class="page-navigation">
				${dataCount == 0 ? "등록된 회원이 없습니다." : paging}
			</div>
        </div>
</div>

	<!-- 정지모달시작 -->		
   <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>회원 정지</h2>
            </div>
            <div class="close-area">X</div>
            <form action="" name="blockForm">
            <div class="content">회원 아이디 : 
                    <input type="text" name="userId" value="shsh0000" class="modalinput">  
            </div>
            <div class="content">정지 일자 : 
                    <input type="date" name="regDate" value="2023-06-18" class="modalinput"> 
            </div>
            <div class="content">정지 사유 : 
                        <select  class="modalinput">
                           <option value="1">패스워드 5회이상 실패</option>
                           <option value="2">불법적인 방법으로 로그임</option>
                           <option value="3">불건전 게시물 등록</option>
                           <option value="4">다른 유저 비방</option>
                           <option value="5">타계정 도용</option>
                           <option value="6">기타 약관 위반</option>
                           <option value="7">1년 이상 로그인하지 않음</option>
                        </select>
            </div>
            <div class="modalbtnbox">
            <button type="button" class="btn modalbtn ">확인</button>
            </div>
            </form>
        </div>
    </div>
    <!-- 정지모달 끝 -->
    
	<!-- infomodal시작 -->
   <div id="infomodal" class="modal-overlay" style="margin-top: 20px;">
        <div class="modal-window" style="overflow-y: scroll;">
            <div class="title">
                <h2>회원 상세</h2>
            </div>
            <div class="close-area">X</div>
           <table class="table table-border border-top2 table-form">
					<tr> 
						<td>아이디</td>
						<td> 
							popo1111
			            </td>
					</tr>
					<tr> 
						<td>이메일</td>
						<td> 
							popo1111@naver.com
			            </td>
					</tr>
					<tr> 
						<td>이름</td>
						<td> 
							최포포
			            </td>
					</tr>
					<tr> 
						<td>닉네임</td>
						<td> 
							포포짱
			            </td>
					</tr>
					<tr> 
						<td>가입 날짜</td>
						<td> 
							2023-06-18
			            </td>
					</tr>
					<tr> 
						<td>적립금</td>
						<td> 
							10,000
			            </td>
					</tr>
			</table>
			
			<div style="margin-top: 30px;">
            <div class="title">
                <h4>회원 상태 변경</h4>
            </div>
          <table class="table table-border table-list" style="margin-top: 10px;">
	  		<thead>
				<tr>
					<th class="wx-80">상태</th>
					<th class="wx-80">회원 코드</th>
					<th class="wx-100">회원 아이디</th>
					<th class="wx-150">변경 날짜</th>
					<th class="wx-150">사유</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr>
						<td>1</td>
						<td>
							popo1111
						</td>
						<td>정지</td>
						<td>2023-06-15</td>
						<td>다른 유저 비방</td>
					</tr>
		  	</tbody>
		  	</table>
		  	</div>
		  	
		  	
            <div style="margin-top: 30px;">
            <div class="title" style="margin-top:30px;">
                <h4>포인트 사용 내역</h4>
            </div>
          <table class="table table-border table-list" style="margin-top: 10px;">
	  		<thead>
				<tr>
					<th class="wx-100">판매 코드</th>
					<th class="wx-150">상품 내용</th>
					<th class="wx-80">상태</th>
					<th class="wx-80">금액</th>
					<th class="wx-150">사용 날짜</th>
				</tr>
			</thead>
			
		 	<tbody>
					<tr>
						<td>11234</td>
						<td>수수펫스튜디오 수수까까 30g</td>
						<td>사용</td>
						<td>3,000</td>
						<td>2023-06-15</td>
					</tr>
					<tr>
						<td>21344</td>
						<td>부드러운 고구마</td>
						<td>적립</td>
						<td>1,380</td>
						<td>2023-06-11</td>
					</tr>
		  	</tbody>
		  	</table>
		  	</div>
	            <div class="modalbtnbox">
	            <button type="button" class="btn modalbtn close-area2 ">확인</button>
	            </div>
        </div>
    </div><!-- info모달끝 -->
		
      </div>
	</div>
</div>

<div id="member-dialog" style="display: none;"></div>

<script>
const modal = document.getElementById("modal")
        
function modalOn() {
      modal.style.display = "flex"
}
        
function modalOff() {
       modal.style.display = "none"
}
        
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modalOff();
});

</script>  

<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			fn(data);
		},
		beforeSend : function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error : function(jqXHR) {
			if (jqXHR.status === 403) {
				location.href="${pageContext.request.contextPath}/member/login";
				return false;
			} else if(jqXHR.status === 400) {
				alert("요청 처리가 실패했습니다.");
				return false;
			}
			console.log(jqXHR.responseText);
		}
	});
}

//모달창 새로 만드는중
function profile(userId) {
	let dlg = $("#member-dialog").dialog({
	dlg.dialog("open");
		  autoOpen: false,
		  modal: true,
		  buttons: {
		       " 수정 " : function() {
		    	   updateOk(); 
		       },
		       " 삭제 " : function() {
		    	   deleteOk(userId);
			   },
		       " 닫기 " : function() {
		    	   $(this).dialog("close");
		       }
		  },
		  height: 550,
		  width: 800,
		  title: "회원상세정보",
		  close: function(event, ui) {
		  }
	});

	let url = "${pageContext.request.contextPath}/admin/memberManage/profile";
	let query = "userId="+userId;
	
	const fn = function(data){
		$('#member-dialog').html(data);
		dlg.dialog("open");
	};
	ajaxFun(url, "post", query, "html", fn);
}


const infomodal = document.getElementById("infomodal")
        
function infoOn(userId) {
		infomodal.style.display = "flex"
/*	
	let url = "${pageContext.request.contextPath}/admin/memberManage/infoOn";
	let query = "userId="+userId;
	
	const fn = function(data){
		$('#infomodal').html(data);
	};
	ajaxFun(url, "post", query, "html", fn);
*/	


//ajax? 아니면 그냥받아오기? 그냥받아오면 list메소드 내용을 똑같이코딩하고 값을 넘겨줘야하는지? 
}
        
function infoOff() {
	infomodal.style.display = "none"
}
        
const infocloseBtn = infomodal.querySelector(".close-area")
infocloseBtn.addEventListener("click", e => {
	infoOff();
});


</script>  
