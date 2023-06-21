<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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