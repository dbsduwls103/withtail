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
        const f = document.couponManageForm;

    	let str = f.subject.value;
        if(!str) {
            alert("제목을 입력하세요. ");
            f.subject.focus();
            return false;
        }


    	//f.action="${pageContext.request.contextPath}/admin/noticeManage/${mode}";

        return true;
    }
</script>

<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-tags"></i> 쿠폰 </h2>
    </div>
    
    <div class="body-main">
    	
		<form name="couponManageForm" method="post" enctype="multipart/form-data">
			<table class="table table-border border-top2 table-form">
				<tr> 
					<td>제&nbsp;&nbsp;&nbsp;&nbsp;목</td>
					<td> 
						<input type="text" name="subject" maxlength="100" class="form-control" value="제목">
					</td>
				</tr>
			

			  
				<tr> 
					<td>작성자</td>
					<td> 
						<p class="form-control-plaintext">관리자</p>
					</td>
				</tr>
			
				<tr>
					<td class="form-control-plaintext">시작일</td>
					<td>
						<input type="date" >
					</td>

				</tr>
				<tr>
					<td class="form-control-plaintext">종료일</td>
					<td>
						<input type="date" >
					</td>
				</tr>
				<tr>


				<tr>
					<td class="form-control-plaintext">최소 주문 금액</td>
					<td>
						<input type="date" >
					</td>
				</tr>
				<tr>


				</tr>
	            <tr>
	            	<td class="form-control-plaintext">구분</td>
					<td>            	
					<label><input type="radio" name="category" value="disPrice" checked="checked">할인가</label>
					<label><input type="radio" name="category" value="disRate">할인율</label>
					</td>
	            </tr>
	            <tr>
	            	<td>가격</td>
	            	<td><input type="text" name="subject" maxlength="100" class="form-control" value="5000" style="width:80px;"></td>
	            </tr>
			</table>
				
			<table class="table">
				<tr> 
					<td align="center">
						<button type="button" class="btn btn-dark" onclick="submitContents(this.form);">${mode=='update'?'수정완료':'등록하기'}</button>
						<button type="reset" class="btn">다시입력</button>
						<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/admin/couponManage/list';">${mode=='update'?'수정취소':'등록취소'}</button>
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