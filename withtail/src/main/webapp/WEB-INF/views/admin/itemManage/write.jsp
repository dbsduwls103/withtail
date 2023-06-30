<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">

<style type="text/css">
.body-main {
	max-width: 900px;
}
</style>

<style type="text/css">
.img-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, 50px);
	grid-gap: 5px;
}

.mainImage-viewer {
	cursor: pointer;
	border: 1px solid #c2c2c2;
	width: 50px; height: 50px; border-radius: 10px;
	background-image: url("${pageContext.request.contextPath}/resources/images/add_photo.png");
	position: relative;
	z-index: 9999;
	background-repeat: no-repeat;
	background-size: cover;
}

.img-grid .item {
    object-fit: cover; /* 가로세로 비율은 유지하면서 컨테이너에 꽉 차도록 설정 */
    width: 50px;
    height: 50px;
	cursor: pointer;
	border: 1px solid #c2c2c2;
	border-radius: 10px;
}

.img-box {
	max-width: 600px;
	box-sizing: border-box;
	display: flex; /* 자손요소를 flexbox로 변경 */
	flex-direction: row; /* 정방향 수평나열 */
	flex-wrap: nowrap;
	overflow-x: auto;
}

.img-box img {
	width: 50px; height: 50px;
	margin-right: 5px;
	flex: 0 0 auto;
	cursor: pointer;
	border: 1px solid #c2c2c2;
	border-radius: 10px;
}


.long {
    margin: 5px auto;
    width: 500px;
    margin-left: 0px;
}

.short {
    margin: 5px auto;
    width: 100px;
    margin-left: 0px;
    display: inline-block;
}

.category {
    width: 130px;
    padding: 3px;
    border-radius: 3px;
}

p {
    display: inline-flex;
    width: 500px;
    height: 30px;
    gap: 5px;
    margin-bottom: 10px;
}

.food2 {
  display: none;
}
</style>

<script type="text/javascript">

<c:if test="${mode=='update'}">
  function deleteFile(photoNum) {
		let url = "${pageContext.request.contextPath}/admin/itemManage/deleteFile";
		$.post(url, {photoNum:photoNum}, function(data){
			$("#f"+photoNum).remove();
		}, "json");
} 
</c:if>

</script>

<script type="text/javascript">
function check() {
	const f = document.itemForm;
	let str, b;
	let mode = "${mode}";
	
	if(!f.parentCt.value || f.parentCt.value == "0") {
		alert("대분류 카테고리를 선택하세요.");
		f.parentCt.focus();
		return false;
	}

	if(! f.subCtNum.value || f.subCtNum.value == "0") {
		alert("중분류 카테고리를 선택하세요.");
		f.subCtNum.focus();
		return false;
	}

	
	if(! f.itemName.value.trim()) {
		alert("상품명을 입력하세요.");
		f.itemName.focus();
		return false;
	}
	
	if(!/^(\d){1,8}$/.test(f.itemPrice.value)) {
		alert("상품가격을 입력 하세요.");
		f.itemPrice.focus();
		return false;
	}
	
	if(!/^(\d){1,2}$/.test(f.discount.value)) {
		alert("할인율을 입력 하세요.");
		f.discount.focus();
		return false;
	}

	if(!/^(\d){1,7}$/.test(f.itemPoint.value)) {
		alert("적립금을 입력 하세요.");
		f.itemPoint.focus();
		return false;
	}
	
	if(!/^(\d){1,8}$/.test(f.deliveryFee.value)) {
		alert("배송비를 입력 하세요.");
		f.deliveryFee.focus();
		return false;
	}
	
	if(! f.option1Name.value.trim()) {
		alert("상위 옵션명 입력 하세요.");
		f.option1Name.focus();
		return false;
	}
	
	b = true;
	$("input[name=option2Names]").each(function(){
		if(! $(this).val().trim()) {
			b= false;
			return false;
		}
	});
	
	if(! b) {
		alert("상위 옵션값을 입력 하세요.");
		return false;
	}
	
	if(! f.option1Name2.value.trim()) {
		alert("하위 옵션명 입력 하세요.");
		f.option1Name2.focus();
		return false;
	}
	
	b = true;
	$("input[name=option2Names2]").each(function(){
		if(! $(this).val().trim()) {
			b= false;
			return false;
		}
	});
	if(! b) {
		alert("하위 옵션값을 입력 하세요.");
		return false;
	}
	
	b = false;
	for(let ps of f.showNotice) {
		if( ps.checked ) {
			b = true;
			break;
		}
	}
	if( ! b ) {
		alert("상품진열 여부를 선택하세요.");
		f.showNotice[0].focus();
		return false;
	}
	
	str = f.itemContent.value.trim();
	if( !str || str === "<p><br></p>" ) {
		alert("상품 설명을 입력하세요.");
		f.itemContent.focus();
		return false;
	}

	if(mode === "write" && ! f.mainImageFile.value) {
		alert("대표 이미지를 등록하세요.");
		f.mainImageFile.focus();
		return false;
	}
	
	f.action = "${pageContext.request.contextPath}/admin/itemManage/${mode}";
	return true;
}
</script>

<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data) {
			fn(data);
		},
		beforeSend:function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error:function(jqXHR) {
			if(jqXHR.status === 403) {
				login();
				return false;
			} else if(jqXHR.status === 400) {
				alert("요청 처리가 실패했습니다.");
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}

$(function(){
	$("form select[name=parentCt]").change(function(){
		let parentCt = $(this).val();
		
		$("form select[name=subCtNum]").find('option').remove().end()
			.append("<option value=''>:: 카테고리 선택 ::</option>");	
		
		if(! parentCt) {
			return false;
		}
		
		let url = "${pageContext.request.contextPath}/admin/itemManage/listSubCategory";
		let query = "parentCt="+parentCt;
		
		const fn = function(data) {
			$.each(data.listSubCategory, function(index, item){
				let ctNum = item.ctNum;
				let ctName = item.ctName;
				let s = "<option value='"+ctNum+"'>"+ctName+"</option>";
				$("form select[name=subCtNum]").append(s);
			});
		};
		ajaxFun(url, "get", query, "json", fn);
		
	});
	
	$("form select[name=subCtNum]").change(function(){
		let parentCt = $(this).val();
		
		if(parentCt == 3 || parentCt == 4 || parentCt == 7 || parentCt == 11 || parentCt == 12 || parentCt == 18) {
			$('.food1').removeClass("food2");
		} else {
			$('.food1').addClass("food2");
		}
		
		$("form select[name=lastCtNum]").find('option').remove().end()
			.append("<option value=''>:: 카테고리 선택 ::</option>");	
		
		if(! parentCt) {
			return false;
		}
		
		let url = "${pageContext.request.contextPath}/admin/itemManage/listLastCategory";
		let query = "parentCt="+parentCt;
		
		
		
		const fn = function(data) {
			$.each(data.listLastCategory, function(index, item){
				let ctNum = item.ctNum;
				let ctName = item.ctName;
				let s = "<option value='"+ctNum+"'>"+ctName+"</option>";
				$("form select[name=lastCtNum]").append(s);
			});
		};
		ajaxFun(url, "get", query, "json", fn);
		
	});
});

</script>


<script type="text/javascript">
$(function(){
	$(".btnOptionAdd").click(function(){
		let $el = $(this).closest(".option-area").find(".optionValue-area");
		if($el.find(".input-group").length >= 5) {
			alert("옵션은 최대 5개까지 가능합니다.");
			return false;
		}
		let $option = $(".option-area .optionValue-area .input-group:first-child").clone();
		
		$option.find("input[type=hidden]").remove();
		$option.find("input[name=option2Names]").removeAttr("value");
		$option.find("input[name=option2Names]").val("");
		$el.append($option);
	});
	
	$(".option-area").on("click", ".option-minus", function(){
		let $minus = $(this);
		let $el = $minus.closest(".option-area").find(".optionValue-area");
		
		// 수정에서 등록된 자료 삭제
		let mode = "${mode}";
		if(mode === "update" && $minus.parent(".input-group").find("input[name=option2Nums]").length === 1) {
			// 저장된 옵션값중 최소 하나는 삭제되지 않도록 설정
			if($el.find(".input-group input[name=option2Nums]").length <= 1) {
				alert("옵션값은 최소 하나이상 필요합니다.");	
				return false;
			}
			
			if(! confirm("옵션값을 삭제 하시겠습니까 ? ")) {
				return false;
			}
			
			let detailNum = $minus.parent(".input-group").find("input[name=option2Nums]").val();
			let url = "${pageContext.request.contextPath}/admin/itemManage/deleteOptionDetail";
			$.post(url, {detailNum:detailNum}, function(data){
				if(data.state === "true") {
					$minus.closest(".input-group").remove();
				} else {
					alert("옵션값을 삭제할 수 없습니다.");
				}
			}, "json");
			
			return false;			
		}
		
		if($el.find(".input-group").length <= 1) {
			$el.find("input[name=option2Names2]").val("");
			return false;
		}
		
		$minus.closest(".input-group").remove();
	});
});

$(function(){
	$(".btnOptionAdd2").click(function(){
		let $el = $(this).closest(".option-area2").find(".optionValue-area2");
		if($el.find(".input-group").length >= 5) {
			alert("옵션 값은 최대 5개까지 가능합니다.");
			return false;
		}
		let $option = $(".option-area2 .optionValue-area2 .input-group:first-child").clone();
		
		$option.find("input[type=hidden]").remove();
		$option.find("input[name=option2Name2]").removeAttr("value");
		$option.find("input[name=option2Name2]").val("");
		$el.append($option);
	});
	
	$(".option-area2").on("click", ".option-minus2", function(){
		let $minus = $(this);
		let $el = $minus.closest(".option-area2").find(".optionValue-area2");
		
		// 수정에서 등록된 자료 삭제
		let mode = "${mode}";
		if(mode === "update" && $minus.parent(".input-group").find("input[name=option2Nums2]").length === 1) {
			// 저장된 옵션값중 최소 하나는 삭제되지 않도록 설정
			if($el.find(".input-group input[name=option2Nums2]").length <= 1) {
				alert("옵션값은 최소 하나이상 필요합니다.");	
				return false;
			}
			
			if(! confirm("옵션값을 삭제 하시겠습니까 ? ")) {
				return false;
			}
			
			let detailNum = $minus.parent(".input-group").find("input[name=option2Num2]").val();
			let url = "${pageContext.request.contextPath}/admin/product/deleteOptionDetail";
			$.post(url, {option2Num:option2Num}, function(data){
				if(data.state === "true") {
					$minus.closest(".input-group").remove();
				} else {
					alert("옵션값을 삭제할 수 없습니다.");
				}
			}, "json");
			
		}
		
		if($el.find(".input-group").length <= 1) {
			$el.find("input[name=option2Name2]").val("");
			return false;
		}
		
		$minus.closest(".input-group").remove();
	});
});
</script>


<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-basket-shopping"></i> 상품 등록 </h2>
    </div>
    
    <div class="body-main">
    	
		<form name="itemForm" method="post" enctype="multipart/form-data">
			<table class="table table-border border-top2 table-form">
				<tr> 
					<td>카테고리</td>
					<td> 
						<select name="parentCt" class="form-select">
								<option value="0">:: 메인 카테고리 선택 ::</option>
								<c:forEach var="vo" items="${listCategory}">
									<option value="${vo.ctNum}" ${parentCt==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
								</c:forEach>
						</select>
					
						<select name="subCtNum" class="form-select">
							<option value="0">:: 카테고리 선택 ::</option>
							<c:forEach var="vo" items="${listSubCategory}">
								<option value="${vo.ctNum}" ${subCtNum==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				
				<tr> 
					<td>상품명</td>
					<td> 
						<input type="text" name="itemName" maxlength="100" class="form-control" value="${dto.itemName}" placeholder="상품명">
					</td>
				</tr>
			
				<tr> 
					<td>상품구분</td>
					<td> 
						<select name="lastCtNum" class="form-select">
							<option value="0">:: 카테고리 선택 ::</option>
							<c:forEach var="vo" items="${listLastCategory}">
								<option value="${vo.ctNum}" ${lastCtNum==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
							</c:forEach>
						</select>					
					</td>
				</tr>

				<tr> 
					<td>상품 가격</td>
					<td> 
                       <input type="text" name="itemPrice" maxlength="100" class="form-control" value="${dto.itemPrice}" placeholder="가격">					
                    </td>
				</tr>
				
				<tr> 
					<td>제조사</td>
					<td> 
                       <input type="text" name="madeby" maxlength="100" class="form-control" value="${dto.madeby}" placeholder="제조사">					
                    </td>
				</tr>
				
				<tr> 
					<td>할인율</td>
					<td> 
                       <input type="text" name="discount" maxlength="100" class="form-control" value="${dto.discount}" placeholder="할인율">					
                    </td>
				</tr>
				
				<tr class="food1 food2"> 
					<td>제조 날짜</td>
					<td> 
                       <input type="date" name="manufactDate" maxlength="100" class="form-control" value="${dto.manufactDate}" placeholder="제조일자">					
                    </td>
				</tr>
				
				<tr class="food1 food2"> 
					<td>유통 기한</td>
					<td> 
                       <input type="date" name="expriy" maxlength="100" class="form-control" value="${dto.expriy}" placeholder="유통기한">					
                    </td>
				</tr>
				
				<tr class="food1 food2"> 
					<td>원산지</td>
					<td> 
						<input type="text" name="country" maxlength="100" class="form-control" value="${dto.country}" placeholder="원산지">
					</td>
				</tr>
				
				<tr> 
					<td>적립금</td>
					<td> 
						<input type="text" name="itemPoint" maxlength="100" class="form-control" value="${dto.itemPoint}" placeholder="적립금">
					</td>
				</tr>
				<tr> 
					<td>배송비</td>
					<td> 
						<input type="text" name="deliveryFee" maxlength="100" class="form-control" value="${dto.deliveryFee}" placeholder="배송비">
					</td>
				</tr>
				
			<tr>
						<td class="table-light col-sm-2">상위 옵션</td>
						<td>
							<div class="mb-2">
								<input type="text" name="option1Name" class="form-control" style="width: 250px; margin: 3px;" placeholder="옵션명" value="${dto.option1Name}">
								<c:if test="${mode=='update'}">
									<input type="hidden" name="option1Num" style="margin: 3px;" value="${dto.option1Num}">
								</c:if>
							</div>
							<div class="row option-area">
								<div class="col-auto pe-0 d-flex flex-row optionValue-area">
									<c:forEach var="vo" items="${listOption2}">
										<div class='input-group pe-1' style="margin: 3px;">
											<input type='text' name='option2Names' class='form-control' style='flex:none; width: 100px;' placeholder='옵션값' value="${vo.option2Name}">
											<input type='text' name='extraPrices' class='form-control' style='flex:none; width: 100px;' placeholder='추가금' value="${vo.extraPrice}">
											<input type="hidden" name="option2Nums" value="${vo.option2Num}">
											<button class='btn option-minus'>삭제</button>
										</div>
									</c:forEach>
									<c:if test="${empty listOption2 || listOption2.size() < 1}">
										<div class='input-group pe-1 '  style="margin: 3px;">
											<input type='text' name='option2Names' class='form-control' style='flex:none; width: 100px;' placeholder='옵션값'>
											<input type='text' name='extraPrices' class='form-control' style='flex:none; width: 100px;' placeholder='추가금'>
											<button class='btn option-minus'>삭제</button>
										</div>
									</c:if>
								</div>
								<div class="col-auto" style="text-align: center;">
									<button type="button" class="btn btn-light btnOptionAdd">추가</button>
								</div>
							</div>
							<small class="form-control-plaintext help-block">판매 상품이 존재하면 옵션은 삭제 되지 않습니다.</small>
						</td>
					</tr>
					
					
					<tr>
						<td class="table-light col-sm-2">하위 옵션</td>
						<td>
							<div class="mb-2">
								<input type="text" name="option1Name2" style="width: 250px; margin: 3px;" class="form-control" placeholder="옵션명" value="${dto.option1Name2}">
								<c:if test="${mode=='update'}">
									<input type="hidden" name="option1Num2" value="${dto.option1Num2}">
								</c:if>
							</div>
							<div class="row option-area2">
								<div class="col-auto pe-0 d-flex flex-row optionValue-area2">
									<c:forEach var="vo" items="${listOption22}">
										<div class='input-group pe-1'  style="margin: 3px;">
											<input type='text' name='option2Names2' class='form-control' style='flex:none; width: 100px;' placeholder='옵션값' value="${vo.option2Name}">
											<input type='text' name='extraPrices2' class='form-control' style='flex:none; width: 100px;' placeholder='추가금' value="${vo.extraPrice}">
											<input type="hidden" name="option2Nums2" value="${vo.option2Num}">
											<button class='btn option-minus2'>삭제</button>
										</div>
									</c:forEach>
									<c:if test="${empty listOption22 || listOption22.size() < 1}">
										<div class='input-group pe-1'  style="margin: 3px;">
											<input type='text' name='option2Names2' class='form-control' style='flex:none; width: 100px;' placeholder='옵션값'>
											<input type='text' name='extraPrices2' class='form-control' style='flex:none; width: 100px;' placeholder='추가금'>
											<button class='btn option-minus2'>삭제</button>
										</div>
									</c:if>
								</div>
								<div class="col-auto" style="text-align: center;">
									<button type="button" class="btn btn-light btnOptionAdd2">추가</button>
								</div>
							</div>
							<small class="form-control-plaintext help-block">판매 상품이 존재하면 옵션은 삭제 되지 않습니다.</small>
						</td>
					</tr>
					
				<tr> 
					<td>진열여부</td>
					<td> 
						<input type="radio" name="showNotice" class="form-check-input" value="0" ${mode=="update" || dto.showNotice==0 ? "checked='checked' ":"" }>
						<label for="showNotice" class="form-check-label">진열</label>
						<input type="radio" name="showNotice" class="form-check-input" value="1" ${mode=="update" || dto.showNotice==1 ? "checked='checked' ":"" }>
						<label for="showNotice" class="form-check-label">미진열</label>
					</td>
				</tr>
				<tr> 
					<td>쿠폰여부</td>
					<td> 
						<input type="radio" name="coupon" class="form-check-input" value="0" ${mode=="update" || dto.coupon==0 ? "checked='checked' ":"" }>
						<label for="showNotice" class="form-check-label">가능</label>
						<input type="radio" name="coupon"  class="form-check-input" value="1" ${mode=="update" || dto.coupon==1 ? "checked='checked' ":"" }>
						<label for="showNotice" class="form-check-label">불가능</label>
					</td>
				</tr>
				
				<tr> 
					<td valign="top">내&nbsp;&nbsp;&nbsp;&nbsp;용</td>
					<td valign="top"> 
						<textarea name="itemContent" id="ir1" class="form-control">${dto.itemContent}</textarea>
					</td>
				</tr>
			  
					<tr>
						<td class="table-light col-sm-2">대표이미지</td>
						<td>
							<div class="mainImage-viewer"></div>
							<input type="file" name="mainImageFile" accept="image/*" class="form-control" style="display: none;">
						</td>
					</tr>
				
				<tr>
						<td class="table-light col-sm-2">추가이미지</td>
						<td>
							<div class="img-grid">
								<img class="item img-add" src="${pageContext.request.contextPath}/resources/images/add_photo.png">
								<c:forEach var="vo" items="${listPhoto}">
									<img src="${pageContext.request.contextPath}/uploads/item/${vo.photoName}"
										class="item delete-img"
										data-photoNum="${vo.photoNum}"
										data-photoName="${vo.photoName}">
								</c:forEach>
							</div>
							<input type="file" name="addFiles" accept="image/*" multiple="multiple" class="form-control" style="display: none;">
						</td>
					</tr>
			</table>
				
			<table class="table">
				<tr> 
					<td align="center">
						<button type="button" class="btn btn-dark" onclick="submitContents(this.form);">${mode=='update'?'수정완료':'등록하기'}</button>
						<button type="reset" class="btn">다시입력</button>
						<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/itemManage/list';">${mode=='update'?'수정취소':'등록취소'}</button>
						<c:if test="${mode=='update'}">
							<input type="hidden" name="itemNum" value="${dto.itemNum}">
							<input type="hidden" name="mainImage" value="${dto.mainImage}">
							<input type="hidden" name="page" value="${page}">
						</c:if>
					</td>
				</tr>
			</table>
		</form>
		    	
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">
// 대표(썸네일) 이미지
$(function(){
	var img = "${dto.mainImage}";
	if( img ) {
		img = "${pageContext.request.contextPath}/uploads/item/"+img;
		$(".mainImage-viewer").empty();
		$(".mainImage-viewer").css("background-image", "url("+img+")");
	}
	
	$(".mainImage-viewer").click(function(){
		$("form[name=itemForm] input[name=mainImageFile]").trigger("click");
	});
	
	$("form[name=itemForm] input[name=mainImageFile]").change(function(){
		let file = this.files[0];
		
		if(! file) {
			$(".mainImage-viewer").empty();
			
			if( img ) {
				img = "${pageContext.request.contextPath}/uploads/item/"+img;
			} else {
				img = "${pageContext.request.contextPath}/resources/images/add_photo.png";
			}
			$(".mainImage-viewer").css("background-image", "url("+img+")");
			
			return false;
		}
		
		if( ! file.type.match("image.*") ) {
			this.focus();
			return false;
		}
		
		var reader = new FileReader();
		reader.onload = function(e) { // 파일의 내용을 다 읽었으면
			$(".mainImage-viewer").empty();
			$(".mainImage-viewer").css("background-image", "url("+e.target.result+")");
		};
		reader.readAsDataURL( file );
	});
});

//수정에서 등록된 추가 이미지 삭제
$(function(){
	$(".delete-img").click(function(){
		if(! confirm("이미지를 삭제 하시겠습니까 ?")) {
			return false;
		}
		
		let $img = $(this);
		let photoNum = $img.attr("data-photoNum");
		let photoName = $img.attr("data-photoName");
		let url="${pageContext.request.contextPath}/admin/itemManage/deletePhoto";
		$.post(url, {photoNum:photoNum, photoName:photoName}, function(data){
			$img.remove();
		}, "json");
	});
});

// 추가 이미지
$(function(){
	var sel_files = [];
	
	$("body").on("click", ".img-add", function(){
		$("form[name=itemForm] input[name=addFiles]").trigger("click");
	});
	
	$("form[name=itemForm] input[name=addFiles]").change(function(){
		if(! this.files) {
			let dt = new DataTransfer();
			for(let f of sel_files) {
				dt.items.add(f);
			}
			document.itemForm.addFiles.files = dt.files;
			
			return false;
		}
		
        for(let file of this.files) {
        	sel_files.push(file);
        	
            const reader = new FileReader();
			const $img = $("<img>", {class:"item img-item"});
			$img.attr("data-photoName", file.name);
            reader.onload = e => {
            	$img.attr("src", e.target.result);
            };
			reader.readAsDataURL(file);
            
            $(".img-grid").append($img);
        }
		
		let dt = new DataTransfer();
		for(let f of sel_files) {
			dt.items.add(f);
		}
		document.itemForm.addFiles.files = dt.files;
	});

});
</script>

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "ir1",
	sSkinURI: "${pageContext.request.contextPath}/resources/vendor/se2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
});

function submitContents(elClickedObj) {
	 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
	 try {
		if(! check()) {
			return;
		}
		
		elClickedObj.submit();
		
	} catch(e) {
	}
}

function setDefaultFont() {
	var sDefaultFont = '돋움';
	var nFontSize = 12;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>