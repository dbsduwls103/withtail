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
</style>

<script type="text/javascript">

/*
<c:if test="${mode=='update'}">
  function deleteFile(fileNum) {
		let url = "${pageContext.request.contextPath}/admin/noticeManage/deleteFile";
		$.post(url, {fileNum:fileNum}, function(data){
			$("#f"+fileNum).remove();
		}, "json");
  } 
</c:if>
 */
 
</script>

<script type="text/javascript">
    function check() {
        const f = document.noticeForm;

    	let str = f.subject.value;
        if(!str) {
            alert("제목을 입력하세요. ");
            f.subject.focus();
            return false;
        }

    	str = f.content.value;
    	if( !str || str === "<p><br></p>" ) {
            alert("내용을 입력하세요. ");
            f.content.focus();
            return false;
        }

    	//f.action="${pageContext.request.contextPath}/admin/noticeManage/${mode}";

        return true;
    }
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
					<select name="대분류카테고리" class="category">
					    <option value="">  :: 대분류 :: </option>
					    <option > 강아지 </option>
					    <option> 고양이 </option>
					</select>
					
					<!-- 위에서 상위 카테고리에 따라 내용이 달라져야해요! 예시는 강아지를 선택했을 때 -->
					<select name="중분류 카테고리" class="category" >
					    <option value="">  :: 중분류 :: </option>
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
	                    <!-- 위에서 상위 카테고리에 따라 내용이 달라져야해요! 예시는 주식을 선택했을 때 -->
						<select name="소분류 카테고리" class="category" >
						    <option value=""> :: 소분류 :: </option>
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
					<td>할인율</td>
					<td> 
						<input type="text" name="discount" maxlength="100" class="form-control" value="할인율">
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
						<input type="text" name="dp" maxlength="100" class="form-control" value="배송비">
					</td>
				</tr>
				
				<tr> 
					<td>상위 옵션</td>
					
					<td> 
						<div class="long">
	                        <input type="text" name="firstOption" maxlength="100" class="form-control" value="옵션명">
						</div>
						<div class="short">
						    <input type="text" name="firstOptionName" maxlength="100" class="form-control" value="옵션 값">
						</div>
					    <button>추가</button>	
					    <!-- 추가 버튼을 누르면 위에 input div가 늘어나야 합니다! -->
					</td>
				</tr>
				
				<tr> 
					<td>하위 옵션</td>
					
					<td> 
						<div class="long">
	                        <input type="text" name="secondOption" maxlength="100" class="form-control" value="옵션명">
						</div>
						<div class="short">
						    <input type="text" name="secondOptionName" maxlength="100" class="form-control" value="옵션 값">
						</div>
					    <button>추가</button>	
					    <!-- 추가 버튼을 누르면 위에 input div가 늘어나야 합니다! -->
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
					<td class="table-light col-sm-2" scope="row">대표 이미지</td>
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