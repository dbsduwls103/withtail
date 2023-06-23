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
	transition: transform 0.3s ease-in-out;
}

.course_all.hidden {
    transform: translateX(-100%);
}

.course_all_top{
	 height: 150px; 
	 background: #82ae46;  
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
    color: #82ae46;
    left:300px; bottom: 200px;
    transition: transform 0.3s ease-in-out;
   }
   
.btn_close.flipped {
    transform: rotate(180deg);
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

.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
.info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
.info .close:hover {cursor: pointer;}
.info .body {position: relative;overflow: hidden;}
.info .desc {position: relative;margin: 13px 0 0 10px;height: 75px;}
.desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
.desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.info .link {color: #5085BB;}

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
                    <input type="checkbox" id="tourist_destination" name="partCode" value="반려동반여행" checked>
                    <label for="tourist_destination">관광,체험</label>
                </li>
                <li>
                    <input type="checkbox" id="beverage" name="partCode" value="반려동물식당카페" checked>
                    <label for="beverage">식음료</label>
                </li>
                <li>
                    <input type="checkbox" id="animal_hospital" name="partCode" value="반려의료" checked>
                    <label for="animal_hospital">의료</label>
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

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a6cbdb90b0a96211438a827b306cefa&libraries=clusterer"></script>
<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			fn(data);
		},
		beforeSend:function(jqXHR) {
			// jqXHR.setRequestHeader("AJAX", true);
		},
		error:function(jqXHR) {
			console.log(jqXHR.responseText);
		}
	});
}

$(function(){
	let spec = "https://api.odcloud.kr/api/15111389/v1/uddi:41944402-8249-4e45-9e9d-a52d0a7db1cc";
	let serviceKey = "tIqAqGnvJfyhmAOeOn5P5PzGHZEX4zjxHFZnCnlJ0%2FwiFcQitsZJo42OBNt64sELkY5wCVBvWPDBx7%2BaY2eW0A%3D%3D";
	let query = "serviceKey="+serviceKey;
	
	query += "&perPage=" + 1000;
	query += "&page=" + 2;
	const fn = function(data) {
		printJSON(data);
	};

	ajaxFun(spec, "get", query, "json", fn);
});


var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
    center : new kakao.maps.LatLng(37.4449168, 127.1388684), // 지도의 중심좌표 
    level : 11 // 지도의 확대 레벨 
});

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

// 마커 클러스터러를 생성합니다 
var clusterer = new kakao.maps.MarkerClusterer({
    map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
    averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
    minLevel: 8 // 클러스터 할 최소 지도 레벨 
});

//프로토콜을 추가하는 함수
function addProtocol(url) {
    if (!/^https?:\/\//i.test(url)) {
        url = "http://" + url;
    }
    return url;
}

function printJSON(data) {
	 var positions = []
	 console.log(data);
	 
	 for (var i = 0; i < data.data.length; i++) {
		 var item = data.data[i];
		 if(item["시도 명칭"] === "경기도" || item["시도 명칭"] === "서울특별시"){
			 var homepage = item.홈페이지 !== "정보없음" ? '<a href="' + addProtocol(item.홈페이지) + '" target="_blank" class="link">홈페이지</a>' : '홈페이지 정보없음';

			 let obj = {lat:item.위도, lng: item.경도,  category: item.카테고리2, category2: item.카테고리3,
			 content: '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            item.시설명 + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">'+item.도로명주소+'</div>' + 
	            '                <div class="jibun ellipsis">(우)'+ item.우편번호 + '(지번)' + item.지번주소 +'</div>' + 
	            '                <div>' + homepage + '</div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>'}
			 positions.push(obj);
		 }
	 }
	 
	 console.log(positions);
	 
   var markers = $(positions).map(function(i, position) {
       return new kakao.maps.Marker({
           position : new kakao.maps.LatLng(position.lat, position.lng)
       });
   });
   
   // 클러스터러에 마커들을 추가합니다
   clusterer.addMarkers(markers);	
	// 오버레이를 담을 배열
   var overlays = [];
	
   for (var i = 0; i < positions.length; i++) {
	    // 마커 위에 커스텀오버레이를 표시합니다
	    // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	    var overlay = new kakao.maps.CustomOverlay({
	        content: positions[i].content,
	        map: null,
	        position: markers[i].getPosition()
	    });

	    // 클로저(closure)를 사용하여 현재 반복 인덱스(i)를 유지합니다
	    (function (overlay) {
	        // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	        kakao.maps.event.addListener(markers[i], 'click', function () {
	            if (!overlay.getMap()) {
	            	closeOverlays();
	                overlay.setMap(map); // 커스텀 오버레이를 맵에 표시
	            } else {
	                overlay.setMap(null); // 커스텀 오버레이를 맵에서 제거
	            }
	        });
	    })(overlay);
	    
	    overlays.push(overlay); // 생성된 오버레이를 배열에 추가합니다
	}

	// 모든 오버레이를 닫는 함수
   function closeOverlays() {
       for (var i = 0; i < positions.length; i++) {
           overlays[i].setMap(null);
       }
   }
	
   function updateCluster() {
       var selectedCodes = [];

       // 선택된 체크박스의 값을 가져옵니다
       $('input[name="partCode"]:checked').each(function() {
           selectedCodes.push($(this).val());
       });

       var filteredMarkers = markers.filter(function(index, marker) {
           // 선택된 체크박스와 일치하는 값을 가지는 마커만 필터링합니다
           return selectedCodes.includes(positions[index].category);
       });

       // 클러스터러의 마커를 설정합니다
       clusterer.clear();
       clusterer.addMarkers(filteredMarkers.get());
   }

   // 체크박스 변경 이벤트를 감지하여 클러스터 업데이트 함수를 호출합니다
   $('input[name="partCode"]').change(function() {
       updateCluster();
   });

   // 초기 클러스터 표시
   updateCluster();

}

//버튼 클릭 이벤트 핸들러 등록
var closeButton = document.querySelector('.btn_close');
var courseAll = document.querySelector('.course_all');

closeButton.addEventListener('click', function() {
    if (courseAll.classList.contains('hidden')) {
        // 숨겨져 있는 경우
        courseAll.classList.remove('hidden');
        closeButton.classList.remove('flipped');
    } else {
        // 나타나있는 경우
        courseAll.classList.add('hidden');
        closeButton.classList.add('flipped');
    }
});

</script>






