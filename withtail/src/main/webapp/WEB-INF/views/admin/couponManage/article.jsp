<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board.css"
	type="text/css">
<style type="text/css">
.body-main {
	max-width: 900px;
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
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(13.5px);
	-webkit-backdrop-filter: blur(13.5px);
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

.modalbtnbox {
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
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(13.5px);
	-webkit-backdrop-filter: blur(13.5px);
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

.modalbtnbox {
	text-align: center;
}

.modalinput {
	padding: 3px;
}
</style>

<script type="text/javascript">
<c:if test="${sessionScope.member.membership==99}">
	function deleteOk() {
		let query = "num=${dto.num}&${query}";
		let url = "${pageContext.request.contextPath}/admin/couponManage/delete?" + query;
	
		if(confirm("위 쿠폰을 삭제 하시 겠습니까 ? ")) {
			location.href = url;
		} 
	}
</c:if>
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
		<h2>
			<i class="fa-solid fa-tags"></i> 쿠폰
		</h2>
	</div>

	<div class="body-main">

		<table class="table table-border table-article">
			<thead>
				<tr>
					<td colspan="2" align="center">${dto.name}</td>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td width="30%">이름 : 가입이벤트</td>
				</tr>
				<tr>
					<td width="50%" align="left">할인율 : 10%</td>
				</tr>

				<tr>
					<td width="50%" align="left">최소 주문 금액 : 30000</td>
				</tr>


				<tr>
					<td width="50%" align="left">시작일 : 2000-01-01</td>
				</tr>
				<tr>
					<td width="50%" align="left">종료일 : 2000-01-31</td>
				</tr>

			</tbody>
		</table>

		<table class="table">
			<tr>
				<td width="50%" align="left">
					<button type="button" class="btn"
						onclick="javascript:location.href='${pageContext.request.contextPath}/admin/couponManage/write';">수정</button>

					<button type="button" class="btn" onclick="deleteOk();">삭제</button>
				</td>

				<td align="right">
					<button type="button" class="btn" onclick="javascript:infoOn();">회원
						전달</button>
					<button type="button" class="btn"
						onclick="javascript:location.href='${pageContext.request.contextPath}/admin/couponManage/list?${query}';">리스트</button>
				</td>
			</tr>
		</table>

	</div>



	<div id="modal" class="modal-overlay">
		<div class="modal-window">
			<div class="title">
				<h2>회원 정지</h2>
			</div>
			<div class="close-area">X</div>
		</div>
	</div>

	<div id="infomodal" class="modal-overlay" style="margin-top: 20px;">
		<div class="modal-window" style="overflow-y: scroll;">
			<div class="title">
				<h2>쿠폰 전달</h2>
			</div>
			<div class="close-area">X</div>


			<div style="margin-top: 30px;">
		

				
				<table class="table table-border table-list"
					style="margin-top: 10px;">
					<thead>
						<tr>
							<th class="wx-80">회원 코드</th>
							<th class="wx-100">회원 아이디</th>
							<th class="wx-80">보유</th>
							<th class="wx-80">지급/회수</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>2</td>
							<td>test1</td>
							<td>없음</td>
							<td><input type="button" class="btn" value="지급"></td>
						</tr>
						<tr>
							<td>3</td>
							<td>test2</td>
							<td>있음</td>
							<td><input type="button" class="btn" value="회수"></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="page-navigation" style="text-align:center;">
				123
			</div>
			
			<div  style="margin-top: 30px; text-align:center;">
					<label><input type="radio" name="category" value="all" checked="checked">전체</label>           	
					<label><input type="radio" name="category" value="">보유</label>
					<label><input type="radio" name="category" value="">미보유</label>
			</div>

			<div style="margin-top: 30px;">
				<table class="table">
					<tr>
						<td align="center">
							<form name="searchForm" action="" method="post">
								<select name="condition" class="form-select">
									<option value="num"
										${condition=="num"?"selected='selected'":""}>코드</option>
									<option value="userId"
										${condition=="userId"?"selected='selected'":""}>아이디</option>
								</select> <input type="text" name="keyword" value="${keyword}"
									class="form-control">
								<button type="button" class="btn" onclick="">검색</button>
							</form>
						</td>
					</tr>
				</table>
			</div>
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
