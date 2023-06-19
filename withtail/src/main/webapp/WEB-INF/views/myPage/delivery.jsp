<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
.submenu-layout {
	box-sizing: content-box;
	background-color: #f8f8f8;
	border-radius: 75px;
	display: flex;
	align-items: center;
	width: 29%;
	max-width: 800px;
	margin-top: 80px;
	overflow-x: auto;
}

.submenu-layout ul {
	display: flex;
	list-style-type: none;
	padding: 0;
}

.submenu {
	cursor: pointer;
	border-radius: 60px;
	display: flex;
	align-items: center;
	justify-content: center;
	flex: 1;
	min-width: 80px;
	height: 32px;
}

.submenu.active {
	background-color: #82ae46;
	color: white;
}

a {
	color: #8b8b8b;
}

.submenu.active {
	background-color: #82ae46;
	color: white;
}

.-min {
	min-height: 550px;
}

.delivery-container {
    padding: 30px 0;
    align-items: flex-start;
    background-color: white;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    width: 100%;
}

.title {
    color: black;
    text-align: center;
    width: fit-content;
    font-size: 24px;
    font-weight: 700;
}

.delivery-layout {
    align-items: flex-start;
    align-self: stretch;
    display: flex;
    flex-direction: column;
    gap: 25px;
}

.delivery-layout.dialog {
    margin: 0 !important;
}

input {
	width: 100%;
}

.charCount {
	text-align: right;
    font-size: 12px;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    justify-content: flex-end;
}

.btn-light {
    color: #ffffff;
    background-color: #82ae46;
}

.btn-1 {
	width: 150px;
    height: 48px;
    border-radius: 5px;
    border: none;
    color: white;
    background-color: #82ae46;
}

.btn-1:hover {
	background-color: #506632;
}

.btn-2 {
	width: 150px;
    height: 48px;
    border-radius: 5px;
    border: solid 1px #82ae46;
    color: #82ae46;
    background-color: white;
}

</style>

<div class="container -min">
	<div class="submenu-layout">
	  <ul>
	    <li><a class="submenu active" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/orders">주문조회</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a></li>
	    <li><a class="submenu" href="#">놀이터</a></li>
	  </ul>
	</div>
	<div class="delivery-container">
		<div class="title">
			자주 쓰는 배송지
		</div>
		<div class="delivery-layout dialog">
			<div style="width: 100%">
				<form>
					<div class="row mb-3 align-items-end">
					    <label class="col-sm-2 col-form-label" for="username">이름</label>
					    <div class="col-sm-5">
					        <div class="input-group">
					            <input type="text" id="username" name="name" class="form-control" placeholder="받으실 분의 이름을 입력해주세요.*" onkeyup="checkUsernameValidity(); updateCharacterCount1(this);" style="margin-right: 22px;" maxlength="20">
					            <div id="characterCount1" class="charCount">0/20</div>
					        </div>
					        <div id="usernameError" style="color: #da1e28;"></div>
					    </div>
					</div>	           	
					<div class="row mb-3">
				        <label class="col-sm-2 col-form-label" for="zip">우편번호</label>
				        <div class="col-sm-5">
				       		<div class="input-group">
				           		<input type="text" name="zip" id="zip" class="form-control" placeholder="우편번호" value="${dto.zip}" readonly="readonly">
			           			<button class="btn btn-light" type="button" style="margin-left: 3px;" onclick="daumPostcode();">우편번호 검색</button>
				           	</div>
						</div>
				    </div>
			
				    <div class="row mb-3">
				        <label class="col-sm-2 col-form-label" for="addr1">주소</label>
				        <div class="col-sm-10">
				       		<div>
				           		<input type="text" name="addr1" id="addr1" class="form-control" placeholder="기본 주소" value="${dto.addr1}" readonly="readonly" >
				           	</div>
				       		<div style="margin-top: 5px;">
				       			<input type="text" name="addr2" id="addr2" class="form-control" placeholder="상세 주소" value="${dto.addr2}" maxlength="20" onkeyup="updateCharacterCount2(this);">
								<div id="characterCount2" class="charCount">0/80</div>
							</div>
						</div>
				    </div>
				    
				    <div class="row mb-3 align-items-end">
					    <label class="col-sm-2 col-form-label" for="username">연락처</label>
					    <div class="col-sm-5">
					        <div class="input-group">
					            <input type="text" id="phone" name="phone" class="form-control" placeholder="연락처를 입력해주세요.*" onkeyup="checkPhoneNumberValidity();" style="margin-right: 22px;" maxlength="20">
					        </div>
					        <div id="phoneError" style="color: #da1e28;"></div>
					    </div>
					</div>
				   
				    <div class="row mb-3">
				        <label class="col-sm-2 col-form-label" for="addr1">요청사항</label>
				        <div class="col-sm-10">
				       		<div>
				           		<input type="text" id="request" list="request_options" class="form-control" placeholder="배송 요청 사항을 직접 입력하거나 선택해주세요." onkeyup="updateCharacterCount3(this);" value=""  maxlength="100">
				          		<datalist id="request_options">
									    <option value="대문 앞에 놓아주세요"></option>
									    <option value="택배함에 넣어주세요"></option>
									    <option value="경비실에 맡겨주세요"></option>
									    <option value="부재시 연락주세요"></option>
								</datalist>
								<div id="characterCount3" class="charCount">0/100</div>
				           	</div>
				           	<div id="requestError" style="color: #da1e28;"></div>
						</div>
				    </div>		
				    <div style="text-align: center;">
				    	<button type="button" class="btn-1">등록</button>
				  	  	<button type="button" class="btn-2">취소</button>
				    </div>								
				</form>
			</div>
		</div>
	</div>
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function daumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr2').focus();
        }
    }).open();
}

// 이름 유효성 검사 및 이벤트 효과
function checkUsernameValidity() {
    var input = document.getElementById("username");
    var errorDiv = document.getElementById("usernameError");
    var regex = /^[가-힣]+$/; // 정규식을 사용하여 한글 입력 패턴을 확인합니다.
    
    if (!regex.test(input.value)) { // 입력값이 한글 패턴과 일치하지 않을 경우
        input.style.borderColor = "#da1e28"; // 테두리 색상을 빨간색으로 변경합니다.
        errorDiv.textContent = "한글만 입력 가능합니다."; // 에러 메시지를 표시합니다.
    } else {
        input.style.borderColor = ""; // 유효성 검사를 통과하면 테두리 색상을 초기화합니다.
        errorDiv.textContent = ""; // 에러 메시지를 초기화합니다.
    }
}

function checkPhoneNumberValidity() {
    var input = document.getElementById("phone");
    var errorDiv = document.getElementById("phoneError");
    var regex = /^\d{3}-\d{3,4}-\d{4}$/; // 핸드폰 번호 형식을 정규식으로 지정합니다.

    if (!regex.test(input.value)) { // 입력값이 형식에 맞지 않을 경우
        input.style.borderColor = "#da1e28"; // 테두리 색상을 빨간색으로 변경합니다.
        errorDiv.textContent = "올바른 핸드폰 번호를 입력해주세요."; // 오류 메시지를 표시합니다.
    } else { // 입력값이 형식에 맞을 경우
        input.style.borderColor = "#ced4da"; // 테두리 색상을 기본값으로 변경합니다.
        errorDiv.textContent = ""; // 오류 메시지를 초기화합니다.
    }
}
	
function checkRequestValidity() {
    var input = document.getElementById("request");
    var errorDiv = document.getElementById("requestError");

    if (input.value.length > 100) { // 입력값이 최대 글자 수를 초과할 경우
        input.style.borderColor = "#da1e28"; // 테두리 색상을 빨간색으로 변경합니다.
        errorDiv.textContent = "최대 100자까지 입력 가능합니다."; // 오류 메시지를 표시합니다.
    } else { // 입력값이 최대 글자 수를 초과하지 않을 경우
        input.style.borderColor = "#ced4da"; // 테두리 색상을 기본값으로 변경합니다.
        errorDiv.textContent = ""; // 오류 메시지를 초기화합니다.
    }
}
	
	

function updateCharacterCount1(input) {
    var maxLength = input.getAttribute("maxlength");
    var currentLength = input.value.length;
    var characterCountElement = document.getElementById("characterCount1");

    characterCountElement.textContent = currentLength + "/" + maxLength;
}

function updateCharacterCount2(input) {
    var maxLength = input.getAttribute("maxlength");
    var currentLength = input.value.length;
    var characterCountElement = document.getElementById("characterCount2");

    characterCountElement.textContent = currentLength + "/" + maxLength;
}

function updateCharacterCount3(input) {
    var maxLength = input.getAttribute("maxlength");
    var currentLength = input.value.length;
    var characterCountElement = document.getElementById("characterCount3");

    characterCountElement.textContent = currentLength + "/" + maxLength;
}
</script>

