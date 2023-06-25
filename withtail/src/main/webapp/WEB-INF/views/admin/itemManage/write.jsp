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
</style>

<script type="text/javascript">

<c:if test="${mode=='update'}">
  function deleteFile(fileNum) {
		let url = "${pageContext.request.contextPath}/admin/itemManage/deleteFile";
		$.post(url, {fileNum:fileNum}, function(data){
			$("#f"+fileNum).remove();
		}, "json");
} 
</c:if>
</script>

<script>
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
		
		$("form select[name=ctNum]").find('option').remove().end()
			.append("<option value=''>:: 카테고리 선택 ::</option>");	
		
		if(! parentNum) {
			return false;
		}
		
		let url = "${pageContext.request.contextPath}/admin/itemManage/listSubCategory";
		let query = "parentCt="+parentCt;
		
		const fn = function(data) {
			$.each(data.listSubCategory, function(index, item){
				let ctNum = item.ctNum;
				let ctName = item.ctName;
				let s = "<option value='"+ctNum+"'>"+ctName+"</option>";
				$("form select[name=ctNum]").append(s);
			});
		};
		ajaxFun(url, "get", query, "json", fn);
		
	});
	
	$("form select[name=ctNum]").change(function(){
		let parentNum = $(this).val();
		
		$("form select[name=categoryNum2]").find('option').remove().end()
			.append("<option value=''>:: 카테고리 선택 ::</option>");	
		
		if(! parentNum) {
			return false;
		}
		
		let url = "${pageContext.request.contextPath}/admin/product/listSubCategory";
		let query = "parentCt="+parentCt;
		
		const fn = function(data) {
			$.each(data.listSubCategory, function(index, item){
				let ctNum = item.ctNum;
				let ctName = item.ctName;
				let s = "<option value='"+ctNum+"'>"+ctName+"</option>";
				$("form select[name=ctNum2]").append(s);
			});
		};
		ajaxFun(url, "get", query, "json", fn);
		
	});
});

</script>

<script type="text/javascript">
/*
$(function(){
    $(".option1RemoveBtn").hide();
    $(".option2RemoveBtn").hide();
    
    $(".option1AddBtn").click(function(){
        $(".option1RemoveBtn").show();
	
        
        const p = $(this).closest("td").find("p:first").clone();
        
        $(p).find("input").each(function(){
        	$(this).val("");
        });
         $(this).closest("td").find(".short").append(p);
         
    });
    
    $("body").on("click", ".option1RemoveBtn", function(){
        if($(this).closest("div").find("p").length<=1) { // closest("태그") : 가장가까운 부모태그
            return;
        }
        
        $(this).closest("p").remove();
        
        if($(".option1RemoveBtn").closest("div").find("p").length<=1) {
            $(".option1RemoveBtn").hide();
        }
        
    });
});

$(function(){
    $(".option2AddBtn").click(function(){
        $(".option2RemoveBtn").show();
	
        
        const p = $(this).closest("td").find("p:first").clone();
        
        $(p).find("input").each(function(){
        	$(this).val("");
        });
         $(this).closest("td").find(".short").append(p);
         
    });
    
    $("body").on("click", ".option2RemoveBtn", function(){
        if($(this).closest("div").find("p").length<=1) { // closest("태그") : 가장가까운 부모태그
            return;
        }
        
        $(this).closest("p").remove();
        
        if($(".option2RemoveBtn").closest("div").find("p").length<=1) {
            $(".option2RemoveBtn").hide();
        }
        
    });
});
*/


$(function(){
	$(".option-minus").hide();
    $(".option-minus2").hide();
    
    $(".btnOptionAdd").click(function(){
    	let $el = $(this).closest(".option-area").find(".optionValue-area");
		if($el.find(".input-group").length >= 5) {
			alert("옵션은 최대 5개까지 가능합니다.");
			return false;
		}
		let $option = $(".option-area .optionValue-area p:first").clone();
		console.log($option);
		
		$option.find("input[type=hidden]").remove();
		$option.find("input[name=option1Name]").removeAttr("value");
		$option.find("input[name=option1Name]").val("");
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
			
			let option2Num = $minus.parent(".input-group").find("input[name=option2Nums]").val();
			let url = "${pageContext.request.contextPath}/admin/product/deleteOption2";
			$.post(url, {option2Nums:option2Nums}, function(data){
				if(data.state === "true") {
					$minus.closest(".input-group").remove();
				} else {
					alert("옵션값을 삭제할 수 없습니다.");
				}
			}, "json");
			
			return false;			
		}
		
		if($el.find(".input-group").length <= 1) {
			$el.find("input[name=option2Names]").val("");
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
    	
		<form name="noticeForm" method="post" enctype="multipart/form-data">
			<table class="table table-border border-top2 table-form">
				<tr> 
					<td>카테고리</td>
					<td> 
						<select name="parentNum" class="form-select">
								<option value="">:: 메인 카테고리 선택 ::</option>
								<c:forEach var="vo" items="${listCategory}">
									<option value="${vo.ctNum}" ${parentCt==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
								</c:forEach>
						</select>
					
						<select name="ctNum" class="form-select">
							<option value="">:: 카테고리 선택 ::</option>
							<c:forEach var="vo" items="${listSubCategory}">
								<option value="${vo.ctNum}" ${dto.ctNum==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				
				<tr> 
					<td>상품명</td>
					<td> 
						<input type="text" name="subject" maxlength="100" class="form-control" value="상품명">
					</td>
				</tr>
			
				<tr> 
					<td>상품구분</td>
					<td> 
						<select name="ctNum2" class="form-select">
							<option value="">:: 카테고리 선택 ::</option>
							<c:forEach var="vo" items="${listSubCategory}">
								<option value="${vo.ctNum}" ${dto.ctNum==vo.ctNum?"selected='selected'":""}>${vo.ctName}</option>
							</c:forEach>
						</select>					
					</td>
				</tr>

				<tr> 
					<td>상품 가격</td>
					<td> 
                       <input type="text" name="price" maxlength="100" class="form-control" value="가격">					
                    </td>
				</tr>
	
				<tr> 
					<td>제조 날짜</td>
					<td> 
                       <input type="date" name="madeDate" maxlength="100" class="form-control" value="제조날짜">					
                    </td>
				</tr>

				<tr> 
					<td>유통 기한</td>
					<td> 
                       <input type="date" name="expriy" maxlength="100" class="form-control" value="유통기한">					
                    </td>
				</tr>
				
				<tr> 
					<td>원산지</td>
					<td> 
						<input type="text" name="countrys" maxlength="100" class="form-control" value="원산지">
					</td>
				</tr>
				<tr> 
					<td>적립금</td>
					<td> 
						<input type="text" name="point" maxlength="100" class="form-control" value="적립금">
					</td>
				</tr>
				<tr> 
					<td>배송비</td>
					<td> 
						<input type="text" name="deliveryFee" maxlength="100" class="form-control" value="배송비">
					</td>
				</tr>
				
				<tr> 
					<td>상위 옵션</td>
					
					<td> 
						<div class="long">
	                        <input type="text" name="option1Name" maxlength="100" class="form-control" value="${dto.option1Name}">
						<c:if test="${mode=='update'}">
							<input type="hidden" name="option1Num" value="${dto.option1Name}">
						</c:if>	                        
						</div>
						<div class="option-area" style="display: inline-block;">
							<div class="short optionValue-area">
							<c:forEach var="vo" items="${listOption2}">
							   <p class="input-group">
							    <input type="text" name="option2Names" maxlength="100" style="width: 100px;" class="form-control" value="${vo.option2Name}" placeholder="옵션값">
						        <input type="hidden" name="option2Nums" value="${vo.option2Num}">
						        <button type="button" class="btn option1RemoveBtn option-minus" style="display: inline-block;">삭제</button>	
							   </p>
							 </c:forEach> 
							 <c:if test="${empty listOption2 || listOption2.size() < 1}"> 
							 	<input type="text" name="option2Name" maxlength="100" style="width: 100px;" class="form-control" value="${vo.option2Name}" placeholder="옵션값">
							    <button type="button" class="btn option1RemoveBtn option-minus" style="display: inline-block;">삭제</button>	
							 </c:if>
							</div>
						</div>
						<div style="text-align: center; margin-top: 10px">
					    <button type="button" class="btn option1AddBtn btnOptionAdd">추가</button>
					    </div>
					</td>
				</tr>
				
				<tr> 
					<td>하위 옵션</td>
					
					<td> 
						<div class="long">
	                        <input type="text" name="option1Num2" maxlength="100" class="form-control" value="옵션명">
	                        <c:if test="${mode=='update'}">
								<input type="hidden" name="option1Num2" value="${dto.option1Num2}">
						    </c:if>
						</div>
						<div class="space option-area2" style="display: inline-block;">
							<div class="short optionValue-area2">
								<c:forEach var="vo" items="${listOption22}">
								   <p class="input-group">
								    <input type="text" name="option2Names2" maxlength="100" style="width: 100px;" class="form-control" value="${vo.option2Name2}" placeholder="옵션값">
							        <input type="hidden" name="option2Nums2" value="${vo.option2Num2}">
							        <button type="button" class="btn option1RemoveBtn option-minus" style="display: inline-block;">삭제</button>	
								   </p>
							 	</c:forEach> 
								 <c:if test="${empty listOption22 || listOption22.size() < 1}"> 
								 	<input type="text" name="option2Name2" maxlength="100" style="width: 100px;" class="form-control" value="${vo.option2Name2}" placeholder="옵션값">
								    <button type="button" class="btn option1RemoveBtn option-minus2" style="display: inline-block;">삭제</button>	
							 	</c:if>
							</div>
						</div>
						<div style="text-align: center; margin-top: 10px">
					    <button type="button" class="btn option2AddBtn btnOptionAdd2">추가</button>
					    </div>
					</td>
				</tr>
				
				<tr> 
					<td>진열여부</td>
					<td> 
						<input type="checkbox" name="showNotice" id="showNotice" class="form-check-input" value="0" ${mode=="write" || dto.showNotice==0 ? "checked='checked' ":"" }>
						<label for="showNotice" class="form-check-label">진열</label>
						<input type="checkbox" name="showNotice" id="showNotice" class="form-check-input" value="1" ${mode=="write" || dto.showNotice==1 ? "checked='checked' ":"" }>
						<label for="showNotice" class="form-check-label">미진열</label>
					</td>
				</tr>
				
				<tr> 
					<td valign="top">내&nbsp;&nbsp;&nbsp;&nbsp;용</td>
					<td valign="top"> 
						<textarea name="content" id="ir1" class="form-control">내용입니다</textarea>
					</td>
				</tr>
			  
				<tr>
					<td class="table-light col-sm-2" scope="row">대표 이미지</td>
					<td>
						<div class="img-grid"><img class="item img-add rounded" src="${pageContext.request.contextPath}/resources/images/add_photo.png"></div>
						<input type="file" name="selectFile" accept="image/*" style="display: none;" class="form-control">
					</td>
				</tr>
				
				<tr>
					<td class="table-light col-sm-2" scope="row">상세 이미지</td>
					<td>
						<div class="img-grid"><img class="item img-add rounded" src="${pageContext.request.contextPath}/resources/images/add_photo.png"></div>
						<input type="file" name="selectFile" accept="image/*" multiple="multiple" style="display: none;" class="form-control">
					</td>
				</tr>
				
	              
				<c:if test="">
					<!-- foreach자리 -->
						<tr id="f1"> 
							<td>첨부된파일</td>
							<td> 
								<a href="javascript:deleteFile('파일번호');"><i class="fa-solid fa-trash-can"></i></a> 
								파일이름
							</td>
						  </tr>
				</c:if>
			</table>
				
			<table class="table">
				<tr> 
					<td align="center">
						<button type="button" class="btn btn-dark" onclick="submitContents(this.form);">${mode=='update'?'수정완료':'등록하기'}</button>
						<button type="reset" class="btn">다시입력</button>
						<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/stuffManage/list';">${mode=='update'?'수정취소':'등록취소'}</button>
						<c:if test="${mode=='update'}">
							<input type="hidden" name="num" value="${dto.num}">
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