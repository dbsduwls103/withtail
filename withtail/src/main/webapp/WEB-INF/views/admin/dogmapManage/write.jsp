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

<div class="body-container">
    <div class="body-title">
		<h2><i class="fa-solid fa-democrat" ></i> 댕댕여지도 </h2>
    </div>
    
    <div class="body-main">
    	
		<form name="couponManageForm" method="post" enctype="multipart/form-data">
			<table class="table table-border border-top2 table-form">
				<tr> 
					<td>시설번호</td>
					<td> 
						<input type="text" name="placeName" maxlength="100" class="form-control" value="">
					</td>
				</tr>
				<tr> 
					<td>시설명</td>
					<td> 
						<input type="text" name="placeName" maxlength="100" class="form-control" value="">
					</td>
				</tr>
				<tr> 
					<td>지역</td>
					<td> 
						<input type="text" name="placeName" maxlength="100" class="form-control" value="">
						<select name="city">
							<option value="">선택</option>
							<option value="seoul">서울</option>
							<option value="gyeonggi">경기</option>
							<option value="incheon">인천</option>
						</select>
					</td>
				</tr>
				
				<tr> 
					<td>분야</td>
					<td> 
						<input type="text" name="placeName" maxlength="100" class="form-control" value="">
					</td>
				</tr>
				<tr> 
					<td>대표키워드</td>
					<td> 
						<input type="text" name="placeName" maxlength="100" class="form-control" value="">
					</td>
				</tr>
  				<tr>
			        <td>우편번호</td>
					<td>
			           	<input type="text" name="zip" id="zip" class="form-control" placeholder="우편번호" value="${dto.zip}" readonly="readonly" style="width:80%; display:inline-block;">
		           		<button class="btn btn-light" type="button" style="margin-left: 3px;" onclick="daumPostcode();" style="width:20%" >우편번호 검색</button>
					</td>
			 	 </tr>
			 	 <tr>
			        <td>주소</td>
					<td>
			           	<input type="text" name="addr1" id="addr1" class="form-control" placeholder="기본 주소" value="${dto.addr1}" readonly="readonly">
						<input type="text" name="addr2" id="addr2" class="form-control" placeholder="상세 주소" value="${dto.addr2}">
					</td>
			 	 </tr>
			 	 
				<tr> 
					<td>홈페이지</td>
					<td> 
						<input type="text" name="homepage" maxlength="100" class="form-control" value="">
					</td>
				</tr>
				
				
				
				<tr>
					<td>전화번호</td>
					<td>
						<div class="col-sm-3 pe-1">
							<input type="text" name="tel1" id="tel1" class="form-control" value="${dto.tel1}" maxlength="3" style="width:31%; display:inline-block;">
							-
							<input type="text" name="tel2" id="tel2" class="form-control" value="${dto.tel2}" maxlength="4" style="width:31%; display:inline-block;">
							-
							<input type="text" name="tel3" id="tel3" class="form-control" value="${dto.tel3}" maxlength="4" style="width:31%; display:inline-block;">
						</div>
					</td>
				</tr>
				
				<tr>
					<td>소개</td>
					<td valign="top"> 
						<textarea name="content" id="ir1" class="form-control"></textarea>
					</td>
				</tr>
				
				<tr> 
					<td>주요시설</td>
					<td> 
						<input type="text" name="mainact" maxlength="100" class="form-control" value="">
					</td>
				</tr>
				<tr> 
					<td>이용요금</td>
					<td> 
						<input type="number" name="price" maxlength="100" class="form-control" value="" style="width:30%">
					</td>
				</tr>
				<tr> 
					<td>주차장</td>
					<td>            	
					<label><input type="radio" name="parking" value="parkNo" checked="checked">없음</label>
					<label><input type="radio" name="parking" value="parkYes">있음</label>
					</td>
				</tr>
				<tr> 
					<td>강아지 목욕시설</td>
					<td>            	
					<label><input type="radio" name="dogbath" value="bathNo" checked="checked">없음</label>
					<label><input type="radio" name="dogbath" value="bathYes">있음</label>
					</td>
				</tr>
				<tr> 
					<td>비품 제공</td>
					<td>            	
					<label><input type="radio" name="amenithy" value="amenithyNo" checked="checked">없음</label>
					<label><input type="radio" name="amenithy" value="amenithyYes">있음</label>
					</td>
				</tr>
				<tr> 
					<td>펫 동반 식당</td>
					<td>            	
					<label><input type="radio" name="petRestorant" value="restorantNo" checked="checked">없음</label>
					<label><input type="radio" name="petRestorant" value="restorantYes">있음</label>
					</td>
				</tr>
				<tr> 
					<td>애견 몸무게 제한</td>
					<td>            	
					<label><input type="radio" name="weightLimit" value="weightNo" checked="checked">없음</label>
					<label><input type="radio" name="weightLimit" value="weightYes">있음</label>
					</td>
				</tr>
				<tr> 
					<td>실내/실외</td>
					<td>            	
					<label><input type="radio" name="inOut" value="in" checked="checked">실내</label>
					<label><input type="radio" name="inOut" value="out">실외</label>
					</td>
				</tr>
				
				<tr>
					<td>첨&nbsp;&nbsp;&nbsp;&nbsp;부</td>
					<td> 
						<input type="file" name="selectFile" class="form-control" multiple="multiple">
					</td>
				</tr>
	              
				
				
						<tr id="f${vo.fileNum}"> 
							<td>첨부된파일</td>
							<td> 
								<a href="javascript:deleteFile('${vo.fileNum}');"><i class="fa-solid fa-trash-can"></i></a> 
								${vo.originalFilename}
							</td>
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
</script>