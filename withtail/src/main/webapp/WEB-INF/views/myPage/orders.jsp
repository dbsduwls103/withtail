<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <style>
    /* 네비게이션 탭 스타일 */


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
  </style>

  <div class="container -min">
	<div class="submenu-layout">
	  <ul>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/myPage">내 계정</a></li>
	    <li><a class="submenu active" href="${pageContext.request.contextPath}/myPage/orders">주문조회</a></li>
	    <li><a class="submenu" href="${pageContext.request.contextPath}/myPage/favorite">즐겨찾기</a></li>
	    <li><a class="submenu" href="#">놀이터</a></li>
	  </ul>
	</div>
  </div>
 	
