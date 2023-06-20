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
        window.onload = function() {

            $("#table1").show();
            $("#table2").hide();
        }
        $(document).ready(function() {
            $("#btn_1").click(function() {

                $("#table1").show();
                $("#table2").hide();
                $("#btn_1").addClass("active");
                $("#btn_2").removeClass("active");
                
            })
            $("#btn_2").click(function() {

                $("#table1").hide();
                $("#table2").show();
                $("#btn_1").removeClass("active");
                $("#btn_2").addClass("active");
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
	    	
	    	<form name="memberForm1" method="post">
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
		</form>
		
    <div class="tab-menu" style="border: none;">
    	 <div class="tab">
	        <button type="button" class="tab-button active" id="btn_1" >정상 회원</button>
	        <button type="button" class="tab-button" id="btn_2" >정지 회원</button>
   		</div>
    </div>
    
    <div style="clear:both;"></div>
    
    <div >
        <div id="table1" width="100%" style="padding: 0px;">
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
				<!-- foreach돌리기 -->
				 	<tbody>
							<tr>
								<td class="product-remove"><input type="checkbox"></td>
								<td>1</td>
								<td class="left">
									<a href="javascript:infoOn();">popo1111</a>
								</td>
								<td>최포포</td>
								<td>정상</td>
								<td>2023-03-15</td>
								<td>2023-06-18 17:23:34</td>
								<td>
									<button class="btn" onclick="modalOn();" style="width: 45px;">정지</button> 
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
					<!-- foreach돌리기 -->
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
            </table>
        </div>

		</div>
		 
		<div class="page-navigation">
			1 2 3 
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
					<th class="wx-80">회원 코드</th>
					<th class="wx-100">회원 아이디</th>
					<th class="wx-80">상태</th>
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
	            <button type="button" class="btn modalbtn ">확인</button>
	            </div>
        </div>
    </div><!-- info모달끝 -->
		
      </div>
	</div>
</div>

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

<script>
const infomodal = document.getElementById("infomodal")
        
function infoOn() {
	infomodal.style.display = "flex"
}
        
function infoOff() {
	infomodal.style.display = "none"
}
        
const infocloseBtn = infomodal.querySelector(".close-area")
infocloseBtn.addEventListener("click", e => {
	infoOff();
});

</script>  
