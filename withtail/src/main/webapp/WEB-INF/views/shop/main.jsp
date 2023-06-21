<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<style>
.-prodsort {
    border-top: 1px solid #f1f1f1;
    padding: 15px 0 7px 0;
    border-bottom: 1px solid #f1f1f1;
    margin-bottom: 25px;
    margin-top: -27px;
}

.ftco-section {
    padding: 2em 0 !important;
    position: relative;   
}
</style>

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
	    		//login();
	    		return false;
	    	} else if(jqXHR.status === 402) {
	    		alert("권한이 없습니다.");
	    		return false;
			} else if(jqXHR.status === 400) {
				alert("요청 처리가 실패 했습니다.");
				return false;
	    	} else if(jqXHR.status === 410) {
	    		alert("삭제된 게시물입니다.");
	    		return false;
	    	}
	    	
			console.log(jqXHR.responseText);
		}
	});
}

$(function(){
	listPage(1);
});

//글리스트
function listPage(page) {
	//let lectureSubCode = $(".list-group li.active").attr("data-lectureSubCode");
	let ctNum = "1";
	
	let url = "${pageContext.request.contextPath}/shop/"+ctNum+"/list";
	let query = "pageNo="+page;
	//let search = $('form[name=searchForm]').serialize();
	//query = query+"&"+search;
	let selector = ".content-frame";
	
	const fn = function(data){
		$(selector).html(data);
	};
	ajaxFun(url, "get", query, "html", fn);
}
</script>


	 <div class="hero-wrap hero-bread" style="background-image: url('${pageContext.request.contextPath}/resources/images/main/main_ban01.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">Products</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
       <div class="container">
          <div class="col-md-12 mb-3 text-center" style="font-size: 30px;" >
             강아지
          </div>
       
          <div>
             <div class="col-md-12 mb-5 text-center">
                <ul class="product-category">
                   <li><a href="#" class="active">주식</a></li>
                   <li><a href="#">간식</a></li>
                   <li><a href="#">패션</a></li>
                   <li><a href="#">산책·외출</a></li>
                   <li><a href="#">홈·리빙</a></li>
                   <li><a href="#">장난감</a></li>
                   <li><a href="#">목욕·위생</a></li>   
                </ul>
             </div>
          </div>
          
          <div class="-prodsort">
            <p style="text-align: left; margin-bottom: 7px; display: inline-block; width: 70%;">제품 목록 > 강아지 > 총 4544 제품</p>
            <div style="text-align: right; margin-bottom: 7px; display: inline-block;">
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">신상품&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">상품명&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">높은가격&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">낮은가격&nbsp;&nbsp;|&nbsp;&nbsp;</p></a>
               <a href="#"><p style="text-align: right;  margin-bottom: 3px; display: inline-block;">인기상품</p></a>                           
             </div>
          </div>
          
    	  <div class="content-frame">
    	  	<!-- 여기에 list.jsp 추가 -->
    	  </div>
         
       </div>
    </section>


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>