<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<style type="text/css">
.map { width:700px; height:800px; border: 1px solid #777; }

/*
	강사님 지도 css 가져옴 map7
	
.marker-info { cursor: pointer; font-size: 11px; font-weight: 600; font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif; line-height: 1.5; padding: 5px; }
.overlaybox { position: absolute; left: 0; bottom: 40px; width: 300px; height: 130px; margin-left: -144px;text-align: left; overflow: hidden; font-size: 12px; font-family: 'Malgun Gothic', dotum, '돋움', sans-serif; line-height: 1.5; }
.overlaybox * { padding: 0;margin: 0; }
.overlaybox .overlay-info { width: 298px; height: 118px; border-radius: 5px; border-bottom: 2px solid #ccc; border-right: 1px solid #ccc; overflow: hidden; background: #fff; }
.overlaybox .overlay-info:nth-child(1) { border: 0; box-shadow: 0px 1px 2px #888; }
.overlay-info .overlay-title { padding: 5px 0 0 10px; height: 30px; background: #f8f9fa; border-bottom: 1px solid #ddd; font-size: 13px; font-weight: bold; }
.overlay-info .close { position: absolute; top: 10px; right: 10px; color: #888; width: 17px; height: 17px; background: url('${pageContext.request.contextPath}/resources/images/close_icon.png'); background-repeat: no-repeat; }
.overlay-info .close:hover { cursor: pointer; }
.overlay-info .overlay-body { position: relative; overflow: hidden; }
.overlay-info .desc { position: relative; margin: 13px 0 0 90px; height: 75px; }
.desc div { padding 3px; }
.desc .ellipsis { overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.desc .other { font-size: 11px; color: #888; margin-top: -2px; }
.overlay-info .img { position: absolute; top: 6px; left: 5px; width: 73px; height: 71px; border: 1px solid #ddd; color: #888; overflow: hidden; }
.overlay-info:after { content: '';position: absolute; margin-left: -16px; left: 50%; bottom: 0; width: 22px; height: 12px; background: url('${pageContext.request.contextPath}/resources/images/vertex_white.png'); }
.overlay-info .link { color: #333; }
.overlay-info .link:hover { color: #5085BB; }
*/

.course_all{
	width: 300px; 
	height: 400px; 
	box-shadow: 4px 4px 3px rgba(0,0,0,.3); 
	position: absolute; 
	z-index: 10; 
	top: 300px;
}

.course_all_top{
	 height: 150px; 
	 background: #0e77e0;  
	 padding: 15px;
}


.pad{
	padding: 10px;
	font-weight: bold;
	padding-left: 15px;
}
a{
	color: white;
}


.btn_close {
    position: relative;
    width: 20px;
    height: 50px;
    background: #fff;
    opacity: .9;
    box-shadow: 2px 1px 4px rgb(0 0 0 / 40%);
    border: none;
    font-size: 8px;
    color: #0e77e0;
    left:300px; bottom: 200px;
   }
.searchbtn{
	border: none;
	background: #fcfcfc;
	border-radius: 2px;
}

.choose-filed{
	padding: 15px 0px 15px 25px ; 
	background: white; 
	height: 250px; 
	position: relative;
}

</style>



<script type="text/javascript">
//댕댕여지도 검색
$('.box button.close').click(function() {
        $(this).parents('.box').hide();
    });

    $('.course_all .btn_close').click(function() {
        $('.course_all').animate({
            left: -300
        }, 300);
        $('.course_all').css('box-shadow', 'none');
        $(this).hide();
        $('.course_all .btn_open').show();
    });

    $('.course_all .btn_open').click(function() {
        $('.course_all').animate({
            left: 0
        }, 300);
        $('.course_all').css('box-shadow', '4px 4px 3px rgba(0,0,0,.3)');
        $(this).hide();
        $('.course_all .btn_close').show();
    });
</script>



    <div class="course_all">
        
        <div class="course_all_top">
            <h3 style="text-align: center; color: white; font-weight: bold;">
                Tail&amp;Path 검색
            </h3>
            <form method="post" name="search">
	            <input id="search" name="searchMap" type="text" placeholder="주소 또는 명칭으로 검색" />
	            <button type="submit" class="searchbtn" >검색</button>
            </form>
				<div style="display: flex;">
                    <div class="pad">
	                    <a href="">
	                        <span>관광</span>
	                    </a>
                    </div>
                    <div class="pad">
	                    <a href="">
	                        <span>식음료</span>
	                    </a>
                    </div>
                    <div class="pad">
	                    <a href="">
	                        <span>체험</span>
	                    </a>
                    </div>
                    <div class="pad">
	                    <a href="">
	                        <span>동물병원</span>
	                    </a>
                    </div>
                  </div>
        </div>

        <div class="course_all_box choose-filed">
            <h5>주변 탐색</h5>
            <ul>
                <li>
                    <input type="checkbox" id="tourist_destination" name="partCode" value="PC03" checked>
                    <label for="tourist_destination">관광지</label>
                </li>
                <li>
                    <input type="checkbox" id="beverage" name="partCode" value="PC01" checked>
                    <label for="beverage">식음료</label>
                </li>
                <li>
                    <input type="checkbox" id="experience" name="partCode" value="PC04" checked>
                    <label for="experience">체험</label>
                </li>
                <li>
                    <input type="checkbox" id="animal_hospital" name="partCode" value="PC05" checked>
                    <label for="animal_hospital">동물병원</label>
                </li>
            </ul>
        </div>
		
		<div class="box">
		<button class="btn_close" >◀</button>
		</div>

    </div>


	<div style="min-height: 900px; overflow: hidden; position: relative;">
		<div id="map" class="map"></div>
	</div>




<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a84a8c9ffa738292336ba7066a947a45&libraries=clusterer"></script>
<script type="text/javascript">
	//카카오지도
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
				if(jqXHR.status === 400) {
					alert("요청 처리가 실패 했습니다.");
					return false;
				}
	
				console.log(jqXHR.responseText);
			}
		});
	}
</script>

<script>
	//카카오지도
    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
        level : 14 // 지도의 확대 레벨 
    });
    
    // 마커 클러스터러를 생성합니다 
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
    });
 
    // 데이터를 가져오기 위해 jQuery를 사용합니다
    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
    $.get("/download/web/data/chicken.json", function(data) {
        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
        var markers = $(data.positions).map(function(i, position) {
            return new kakao.maps.Marker({
                position : new kakao.maps.LatLng(position.lat, position.lng)
            });
        });

        // 클러스터러에 마커들을 추가합니다
        clusterer.addMarkers(markers);
    });
</script>






