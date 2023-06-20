<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

            <table class="table table-border table-list" style="margin-top: 10px;">
		  		<thead>
					<tr>
						<th class="wx-80">회원 코드</th>
						<th class="wx-100">회원 아이디</th>
						<th class="wx-100">회원 이름</th>
						<th class="wx-80">상태</th>
						<th class="wx-130">가입 날짜</th>
						<th class="wx-200">정지 날짜</th>
						<th class="wx-200">관리</th>
					</tr>
				</thead>
				 	<tbody>
				<c:forEach var="dto" items="stoplist">
							<tr>
								<td>${dto.num }</td>
								<td class="left">
									<a href="#">${dto.userId }</a>
								</td>
								<td>${dto.userName }</td>
								<td>${dto.enabled==0? "정지":"정상" }</td>
								<td>${dto.regDate}</td>
								<td>${empty dto.stRegDate ? "--":dto.stRegDate }</td>
								<td>
									<button class="btn" onclick="block();">정지 해제</button> 
								</td>
							</tr>
				  </c:forEach>
				  	</tbody>
            </table>
		 
		<div class="page-navigation">
			${stoppaging }
		</div>