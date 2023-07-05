<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
.rw-section {
    align-items: flex-start;
    background-color: rgb(248 248 248);
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 15px;
    padding: 30px 15px;
    width: 100%;
}

.rw-input-container {
    align-items: flex-start;
    align-self: stretch;
    background-color: white;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 30px;
}

.rw-product-info-wrap {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
}

.rw-product-info {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 20px;
}

.rw-product-image-layout {
    align-items: flex-start;
    background-color: white;
    border: 1px solid;
    border-color: rgb(219 219 219);
    border-radius: 5px;
    display: flex;
    height: 150px;
    width: 150px;
    overflow: hidden;
}

.rw-product-image {
    align-self: stretch;
    flex: 1;
    height: 150px;
    min-width: 150px;
    object-fit: cover;
    aspect-ratio: 1/1;
    width: 100%;
}

img{
	max-width: 100%;
}

.rw-product-name {
    align-items: flex-start;
    border: 1px none;
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: center;
}

.valign-text-middle {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.rw-product-text {
    color: black;
    font-size: 16px;
    font-weight: 400;
    font-style: normal;
    align-self: stretch;
    margin-top: -1px;
}

.rw-rating-layout {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.rw-r {
    margin-top: -1px;
    width: fit-content;
    color: black;
    font-size: 19px;
    font-weight: 500;
    font-style: normal;
}

.rating {
    align-items: center;
    border: 1px none;
    display: flex;
    gap: 5px;
    justify-content: center;
    width: fit-content;
}

.rw-guide-layout {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.rw-down-box {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 4px;
    justify-content: flex-end;
}
.rw-text-btn {
    margin-top: -1px;
    text-align: right;
    width: fit-content;
    cursor: pointer;
}

.-min {
	min-height: 550px;
}

.rw-input-wrap {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 7px;
}

.rw-guide-layout {
    align-items: flex-end;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.rw-down-box {
    align-items: center;
    align-self: stretch;
    border: 1px none;
    display: flex;
    gap: 4px;
    justify-content: flex-end;
}

.rw-text-btn {
    margin-top: -1px;
    text-align: right;
    width: fit-content;
    cursor: pointer;
    font-size: 10px;
}

.rw-guide-box {
    align-items: flex-start;
    align-self: stretch;
    background-color: rgb(248 248 248);
    border: 1px none;
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    gap: 10px;
    padding: 16px;
}

.rw-guide {
    align-items: flex-start;
    align-self: stretch;
    border: 1px none;
    display: flex;
    flex-direction: column;
    gap: 4px;
}

.rw-guide-title {
    align-self: stretch;
    line-height: 15.9px;
    margin-top: -1px;
    white-space: nowrap;
    color: rgb(91 91 91);
    font-size: 12px;
    font-weight: 400;
    font-style: normal;
}

.e-text, .rw-guide-text {
    color: rgb(91 91 91);
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
    margin-bottom: 0px;
}

.rw-guide-text {
    align-self: stretch;
    line-height: 15.9px;
}

.inp1 {
    width: 100%;
    border-radius: 5px;
    height: 55px;
    border: 1px solid #e3e3e3;
}

.inp2 {
    width: 100%;
    border-radius: 5px;
    height: 150px;
    border: 1px solid #e3e3e3;
}

input::placeholder {
	padding-left : 10px;
	color: #e3e3e3;
}

.charCount {
	text-align: right;
    font-size: 12px;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    justify-content: flex-end;
}

.rw-notice-text {
    align-self: stretch;
    margin-top: -1px;
    color: rgb(139 139 139);
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
}

.rw-photo-layout {
    display: flex;
    flex-direction: row !important;
    gap: 10px;
    padding-bottom: 10px;
}


.rw-add-photo {
    border: 1px solid;
    border-color: rgb(68 148 241);
    border-radius: 5px;
    height: 80px;
    min-width: 80px;
    overflow: hidden;
    position: relative;
}

.vector {
    height: 30px;
    left: 25px;
    position: absolute;
    top: 19px;
    width: 30px;
}

img{
	max-width: 100%;
}

.rw-add-photo-text {
    height: 16px;
    left: 20px;
    line-height: 15.9px;
    position: absolute;
    text-align: center;
    top: 50px;
    white-space: nowrap;
    font-size: 10px;
    color: #c0b7b7;
}

.rw-notice-text, .rw-notice-text-1 {
    color: rgb(139 139 139);
    font-size: 12px;
    font-weight: 300;
    font-style: normal;
}

main {
    background-color: rgb(248 248 248);
}

input:hover {
	border-color: #82ae46;
}

input:focus {
	outline-color: #82ae46;
}

.star a.on { color: #FFBB00; }

a {
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease;
    color: #dedede;
}

</style>

<script>

$(function() {
  $("#guideToggle").click(function() {
	  $("#guideBox").toggle("fast");
	  $("#icon").toggleClass("fa-chevron-down fa-chevron-up");
     
  });
});

function updateCharacterCount(input) {
    var maxLength = input.getAttribute("maxlength");
    var currentLength = input.value.length;
    var characterCountElement = document.getElementById("characterCount");

    characterCountElement.textContent = currentLength + "/" + maxLength;
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

//별
$(function(){
	$(".rating .star a").click(function(e){
		let b = $(this).hasClass("on");
		$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		
		if( b ) {
			$(this).removeClass("on");
		}
		
		let s = $(this).closest(".rating").find(".star .on").length;
		$(this).closest(".rating").find("input[name=score]").val(s);
		
		// e.preventDefault(); // 화면 위로 이동 안되게
		return false;
	});
});


</script>

<div class="container -min">
	<div class="rw-section">
		<form method="post" name="reviewForm" class="rw-section">
		<div class="rw-container rw-input-container">
			<div class="rw-product-info-wrap">
				<div class="rw-product-info">
					<div class="rw-product-image-layout">
						<img class="rw-product-image" alt="" src="${pageContext.request.contextPath}/resources/images/main/product_sample.png">
					</div>
					<div class="rw-product-name">
						<p class="rw-product-text valign-text-middle">KONG | 테니스공 장난감(대)</p>
						<div class="rw-rating-layout">
							<div class="rw-r valign-text-middle" style="margin-bottom: 20px;">
								이 상품을 평가해주세요
							</div>
							<div class="rating" id="rating">
								<p class="star">
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<a href="#" class="on">★</a>
									<input type="text" name="score" value="5">
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="rw-guide-layout review-no-rating">
					<div class="rw-down-box">
						<div class="rw-text-btn valign-text-middle" style="flex-direction: row; gap: 10px;" id="guideToggle">
							작성 가이드<i class="fa-solid fa-chevron-down" style="margin-top: 2px;" id="icon"></i>
						</div>
					</div>
					<div class="rw-guide-box" id="guideBox" style="display: none;">
						<div class="rw-guide">
							<div class="rw-guide-title valign-text-middle">									
                              	 작성/업로드 가이드                 
							</div>
							<div class="rw-guide-text-layout" style="margin-bottom: 10px;">
								<p class="e-text valign-text-middle">
                                            * 개인정보(연락처, 주소 등)는 노출되지 않도록 조심해 주세요.
                                </p>
                                <p class="rw-guide-text valign-text-middle">
                                            * 내용에 출처를 제외한 외부 링크는 허용되지 않아요.
                                </p>
                                <p class="rw-guide-text valign-text-middle">                               	
                                            * 타인이 작성한 후기이거나 구매후기 운영정책에 위반되는 내용이 확인되는
                                            후기의 경우 노출되지 않거나 삭제될 수 있어요.        
                                </p>
                                <p class="rw-guide-text valign-text-middle">                               	
                                            
                                            * 배송/취소/환불 관련 내용은 고객센터로 별도 문의해 주세요.
                                                
                                </p>
							</div>
							<div class="rw-guide-title valign-text-middle">									
                              
                                        사진 업로드 가이드
                                                     
							</div>
							<div class="rw-guide-text-layout">
								<p class="e-text valign-text-middle">
                                	
                                            * 해당 제품과 관련 있는 사진만 업로드 가능해요.
                                        
                                </p>
                                <p class="rw-guide-text valign-text-middle">
                               		
                                            * 사진 1장당 10MB, 최대 6장까지만 업로드 가능해요.
                                        
                                </p>
                                <p class="rw-guide-text valign-text-middle">                               	
                                            
                                            * 저작권자 승인을 받지 않은 타 저작권물(직접 촬영하지 않은 사진, 캡쳐,
                                            제 3자 사용 등)이 포함된 후기의 경우 노출되지 않거나 삭제될 수 있어요.
                                               
                                </p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="rw-input-wrap review-no-rating">
				<input type="text" class="inp1" name="rvNickName" placeholder="닉네임을 입력해주세요." onkeyup="updateCharacterCount(this);" maxlength="20" >
				<div id="characterCount" class="charCount" style="margin-left: 97%;">0/20</div>
				
				<input type="text" class="inp1" name="rvTitle" placeholder="제목을 입력해주세요." onkeyup="updateCharacterCount1(this);" maxlength="32" >
				<div id="characterCount1" class="charCount" style="margin-left: 97%;">0/32</div>
				
				<input type="text" class="inp2" name="rvContent" placeholder="사용하신 상품의 자세한 후기를 남겨주세요" onkeyup="updateCharacterCount2(this);" maxlength="4000" >
				<div id="characterCount2" class="charCount" style="margin-left: 96%;">0/4000</div>
				
				<div class="rw-notice-layout">
					<div class="rw-notice-text valign-text-middle">						
                            * 개인정보(이름/연락처/주소)가 노출되지 않도록 조심해주시고,
                            <br>
                           &nbsp;&nbsp;&nbsp;&nbsp;배송/취소/환불 관련 내용은 고객센터로 별도 문의해 주세요.                     
					</div>
				</div>
			</div>
			<div class="review-no-rating">
				<div class="rw-photo-layout">
					<label class="rw-add-photo">
						<img class="vector" alt="Vector" src="${pageContext.request.contextPath}/resources/images/icon/camera1.png">
						<div class="rw-add-photo-text valign-text-middle">
							사진추가
						</div>
					</label>
				</div>
				<div class="rw-notice-layout-1">
					<p class="rw-notice-text-1 valign-text-middle">
                            * 해당 제품과 관련 있는 사진만 업로드 가능해요. (사진 1장당 10MB, 최대 6장)
                    </p>
				</div>
			</div>
		</div>
		</form>
	</div>
</div>