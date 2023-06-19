<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>

.container-body{
    line-height: 1;
    font-family: 'Noto Sans KR', sans-serif;
    letter-spacing: -1px;
}

.imgbox {
     height: 400px;
     padding: 10px;
     margin: 10px 20px;
     margin: 30px 30px;
}

img {
    overflow-clip-margin: content-box;
    overflow: clip;
}


h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.container {
    max-width: 1200px;
    width: 100%;
    margin: 0 auto;
    /* background: rgba(0,0,0,.5); */
}

div {
    display: block;
}

.contents_wrap .tit_box {
    height: 113px;
    line-height: 113px;
    text-align: center;
    border-bottom: 1px solid #dadada;
}

.contents_wrap .tit {
    height: 99px;
    line-height: 99px;
    text-align: center;
    display: none;
}

a, a:hover, a:link, a:visited, a:active {
    text-decoration: none;
    color: #1b1b1b;
    word-wrap: break-word;
}

.hidden_txt, .blind {
    overflow: hidden;
    position: absolute;
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
}

.skip, .blind {
    position: absolute;
    width: 1px;
    height: 1px;
    margin: 0;
    padding: 0;
    background: none;
    font-size: 3px;
    color: transparent;
    line-height: 0;
}

.contents_wrap .tit_box {
    height: 113px;
    line-height: 113px;
    text-align: center;
    border-bottom: 1px solid #dadada;
    padding-top: 30px;
}

.detail_img {
    width: 500px;
    display: inline-block;
}
.detail_text {
    display: inline-block;
    width: 500px;
    margin: 10px 20px;
}

.contents_wrap .contents .detail_box .detail_img {
    position: relative;
    float: left;
    width: 55%;
    /* width: 660px; */
}

.contents_wrap .contents .detail_box .detail_img img {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    width: 100%;
    height: 100%;
    margin: auto;
    object-fit: cover;
}

.contents_wrap .contents .detail_box .detail_text .keyword span {
    display: inline-block;
    margin: 0 8px 4px 0;
    padding: 5px 7px 5px 8px;
    font-size: 14px;
    color: #555;
    border: 1px solid #d3d3d3;
    border-radius: 2px;
}

.contents_wrap .contents .detail_box .detail_text strong {
    display: block;
    margin: 0 0 11px 9px;
    font-size: 14px;
    font-weight: 500;
    color: #242424;
}

.contents_wrap .contents .detail_box .detail_text .keyword {
    margin: 0 0 32px 7px;
    font-size: 0;
}

.contents_wrap .contents .detail_box .detail_text .info_text {
    position: relative;
    margin-bottom: 10px;
    padding: 27px 10px 26px 19px;
    /* max-width: 489px; */
    min-height: 200px;
    background: #e7eff8;
    border-radius: 10px;
}

.btn {
    box-shadow: none;
}

.contents_wrap .contents .detail_box .detail_text .info_text .btn {
    position: absolute;
    top: -20px;
    right: 15px;
}

.contents_wrap .contents .detail_box .detail_text .info_text .btn button {
    width: 40px;
    height: 40px;
    transition: all .3s;
}


.contents_wrap .contents .detail_box .detail_text .info_text .btn button.btn01 {
    background: url(${pageContext.request.contextPath}/resources/images/btn01.png)no-repeat;
}

.contents_wrap .contents .detail_box .detail_text .info_text .btn button.btn02 {
    background: url(${pageContext.request.contextPath}/resources/images/btn02.png)no-repeat;
}

.contents_wrap .contents .detail_box .detail_text .info_text .btn button.btn03 {
    background: url(${pageContext.request.contextPath}/resources/images/btn03.png)no-repeat;
}


.contents_wrap .contents .detail_box .detail_text .info_text {
    position: relative;
    margin-bottom: 10px;
    padding: 27px 10px 26px 19px;
    /* max-width: 489px; */
    min-height: 200px;
    background: #e7eff8;
    border-radius: 10px;
}

.contents_wrap .contents .detail_box .detail_text .info_text dl {
    margin-bottom: 20px;
    overflow: hidden;
    line-height: 19px;
}

.contents_wrap .contents .detail_box .detail_text .info_text .btn {
    position: absolute;
    top: -20px;
    right: 15px;
}


dt {
    display: block;
}


.contents_wrap .contents .detail_box .detail_text .info_text dl dt {
    position: relative;
    float: left;
    width: 98px;
    padding-left: 25px;
    font-weight: 500;
    color: #000;
}

button {
    display: inline-block;
    background: transparent;
    font-size: inherit;
    font-weight: normal;
    font-family: inherit;
    color: inherit;
    cursor: pointer;
}

.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
}

.three {
   border: none;
}

.contents_wrap .contents .detail_box .detail_text .info_text dl dt::before {
    content: "";
    width: 16px;
    height: 16px;
    position: absolute;
    top: 4px;
    left:0;
}

.contents_wrap .contents .detail_box .detail_text .info_text dl dt.address::before {
    background: url(${pageContext.request.contextPath}/resources/images/address2.png) no-repeat;
}
.contents_wrap .contents .detail_box .detail_text .info_text dl dt.inquiries::before {
    background: url(${pageContext.request.contextPath}/resources/images/inquiries.png) no-repeat;
}
.contents_wrap .contents .detail_box .detail_text .info_text dl dt.time::before {
    background: url(${pageContext.request.contextPath}/resources/images/time.png) no-repeat;
}
.contents_wrap .contents .detail_box .detail_text .info_text dl dt.site::before {
    background: url(${pageContext.request.contextPath}/resources/images/site.png) no-repeat;
}

.contents_wrap .contents .detail_box .detail_text .info_text dl dt {
    position: relative;
    float: left;
    width: 98px;
    padding-left: 25px;
    font-weight: 500;
    color: #000;
}
.contents_wrap .contents .detail_box .detail_text .info_text dl dd {
    float: left;
    width: calc(100% - 98px);
    color: #505050;
    font-weight: 350;
}

.slick-slider .slick-list .slick-track {
    display: block;
    position: relative;
    top: 0;
    left: 0;
}

.slick-slider.slick-initialized .slick-list .slick-track .slick-slide {
    display: block;
}

.slick-slider .slick-list .slick-track .slick-slide {
    display: none;
    float: left;
}

.slick-slider .slick-list .slick-track:before, .slick-slider .slick-list .slick-track:after {
    display: table;
    content: '';
}

ol, ul {
    list-style-type: none;
}

ul {
    list-style-type: disc;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.contents_wrap .contents .detail_box .detail_text ul.list li {
    float: left;
    padding-top: 65px;
    width: 86px;
    height: 86px;
    margin-right: 12px;
    border: 1px solid #c1c1c1;
    border-radius: 2px;
    text-align: center;
}

.contents_wrap .contents .detail_box .detail_text ul.list li.petcompanion {
    background: url(${pageContext.request.contextPath}/resources/images/pet_companion.png)no-repeat center 17px;
    background-size: 46px 35px;
}

.contents_wrap .contents .detail_box .detail_text ul.list li.parking {
    background: url(${pageContext.request.contextPath}/resources/images/parking.png)no-repeat center 10px;
    background-size: 53px 43px;
}

.contents_wrap .contents .detail_box .detail_text ul.list li.outdoor {
    background: url(${pageContext.request.contextPath}/resources/images/outdoor.png)no-repeat center 17px;
    background-size: 34px 32px;
}

.contents_wrap .contents .detail_box .detail_text ul.list li span {
    display: block;
    font-size: 14px;
    color: #2b2b2b;
}

.container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
    margin-right: auto;
    margin-left: auto;
}

.contents_wrap .contents .text_box {
    margin-bottom: 41px;
    line-height: 25px;
    font-weight: 300;
    color: #555;
}

.contents_wrap .contents .text_box h4.title {
    position: relative;
    margin-bottom: 15px;
    padding: 0 0 15px 37px;
    font-size: 20px;
    font-weight: 500;
    color: #000;
    border-bottom: 1px solid #c1c1c1;
}

.contents_wrap .contents .text_box h4.title::before {
    content: "";
    position: absolute;
    top: -1px;
    left: 0;
    width: 29px;
    height: 28px;
    background: url(${pageContext.request.contextPath}/resources/images/tit.png)no-repeat;
}

.contents_wrap .contents .text_box h4.title {
    position: relative;
    margin-bottom: 15px;
    padding: 0 0 15px 37px;
    font-size: 20px;
    font-weight: 500;
    color: #000;
    border-bottom: 1px solid #c1c1c1;
}

.contents_wrap .contents .text_box {
    margin-bottom: 41px;
    line-height: 25px;
    font-weight: 300;
    color: #555;
}

.contents_wrap .contents .text_box h4.title::before {
    content: "";
    position: absolute;
    top: -1px;
    left: 0;
    width: 29px;
    height: 28px;
    background: url(${pageContext.request.contextPath}/resources/images/tit.png)no-repeat;
}

@media (max-width: 1199px)
.container {
    padding: 0 10px;
}

@media (max-width: 1024px)
.contents_wrap .contents .detail_box .detail_text .info_text .btn {
    transform: scale(0.8);
}

@media (max-width: 1199px)
.contents_wrap .contents .detail_box .detail_text .info_text dl {
    font-size: 15px;
    line-height: 20px;
}

@media (max-width: 1199px)
.contents_wrap .contents .detail_box .detail_text .info_text .btn {
    transform: scale(0.9);
}

</style>

<div class="container-body">
<div class="contents_wrap">
	<div class="container">
		<div class="contents_box">
			<div class="tit_box">
				<h2>
					식음료
				</h2>
			</div>

			<!-- //tit_box -->
			<a href="#A-Contents-focus" id="A-Contents-focus" class="blind">본문 시작</a>
			<div class="contents_area">

				<div class="tit">
					<h3>
						식음료
					</h3>
				</div>

				
				<div>
					<!-- subForm contents starts -->

<div class="contents" style="padding: 0 0 21px;">
    <!-- intro -->
    <p></p>
    <div class="detail_box clearfix d-flex align-items-center">
        <!-- file list -->
        <div class="detail_img">
            <div >
                 <div class="imgbox" style="background:url(${pageContext.request.contextPath}/resources/images/main/product_sample.png); background-size:cover;"></div>
            </div>
            <!-- 
            <div class="control">
                <button class="pause"><span class="blind">일시정지</span></button>
                <button class="play"><span class="blind">재생</span></button>
                <button class="prev slick-arrow" style=""><span class="blind">이전버튼</span></button>
                <button class="next slick-arrow" style=""><span class="blind">다음버튼</span></button>
                <p class="count"><em>9</em>9</p>
            </div>
            -->

        </div>
        
        <!-- //detail_img1 -->

        <div class="detail_text">
            <strong>연관키워드</strong>
            <div class="keyword">
                        <span>#춘천</span>
                        <span>#카페</span>
                        <span>#레스토랑</span>
                        <span>#로컬</span>
                        <span>#디저트</span>
                        <span>#파스타</span>
                        <span>#피자</span>
            </div>
            <!-- //keyword -->

            <div class="info_text">
                <dl>
                    <dt class="tour-title" style="padding-left: 0px; font-size: 20px; width: 100%;">아울러</dt>
                </dl>
                <dl>
                    <dt class="address">주소</dt>
                    <dd>
                        <span id="copy-address">강원 춘천시 뱀내길 6</span>&nbsp;
                        <a href="javascript:;" class="btn-copy-address">
                            <img src="/page/portal/images/sub/icon8.png" title="주소 복사하기" style="width: 18px; vertical-align: middle;">
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt class="inquiries">문의처</dt>
                    <dd>010-6377-0300</dd>
                </dl>
                <dl class="not-pc05">
                    <dt class="time">이용시간</dt>
                    <dd>매일 11:00-22:00 (21시 라스트오더)</dd>
                </dl>
                <dl>
                    <dt class="site">홈페이지</dt>
                    <dd>
                        <a href="https://naver.me/FzHm83rm" target="_blank">https://naver.me/FzHm83rm</a>
                    </dd>
                </dl>
                <div class="btn">
                    <button class="btn01 btn-content-like three" title="좋아요"><span class="blind">좋아요</span></button>
                    <button class="btn02 btn-content-favorite three" title="찜하기"><span class="blind">찜하기</span></button>
                    <button class="btn03 btn-content-modify three" title="수정요청"><span class="blind">수정요청</span></button>
                </div>
            </div>
            <!-- //info_text -->

            <!-- icon list -->
            <div class="list_slick clearfix">
                <div class="control">
                    <button class="prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><span class="blind">이전버튼</span></button>
                    <button class="pause"><span class="blind">일시정지</span></button>
                    <button class="play"><span class="blind">재생</span></button>
                    <button class="next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><span class="blind">다음버튼</span></button>
                </div>
                <!-- //control -->

                <ul class="list slick slick-initialized slick-slider">
                    
                        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 15000px; transform: translate3d(0px, 0px, 0px);"><li class="petcompanion slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false">
                            <span>펫동반 식당</span>
                        </li><li class="parking slick-slide slick-active" data-slick-index="1" aria-hidden="false">
                            <span>주차</span>
                        </li><li class="outdoor slick-slide slick-active" data-slick-index="2" aria-hidden="false">
                            <span>실외</span>
                        </li></div></div>
                </ul>
                <!-- //list -->

            </div>
            <!-- //list_slick -->

        </div>
        <!-- //detail_text -->

    </div>
    <!-- //detail_box -->

    <div class="text_box not-pc05">
        <h4 class="title">소개</h4>
        <p>
            저희 아울러는 커피, 로컬음료, 디저트, 샐러드, 피자, 파스타 등의 상품을 만들어 판매하는 채널입니다.
<br>춘천 농산물(로컬푸드)를 이용하여 더욱 신선하고, 지역 농가와 상생하는 기업입니다.
        </p>
    </div>
    <!-- //text_box -->

    <div class="text_box not-pc05">
        <h4 class="title">주요시설</h4>
        <p>
            - 카페 전용 주차장
<br>- 실내테이블
<br>- 캠핑감성 야외테이블
<br>- 야외 애견동반공간
        </p>
    </div>
    <!-- //text_box -->

    <div class="text_box not-pc05">
        <h4 class="title">이용요금</h4>
        <p>
            &lt;대표메뉴&gt;
<br>- 춘천쌀떡볶이
<br>- 트러플오일파스타
<br>- 감자마르게리타파스타
<br>- 춘천방울토마토카프레제
<br>- 353라거
        </p>
    </div>
    <!-- //text_box -->

    <div class="text_box not-pc05">
        <h4 class="title">애견 정책 및 주의사항</h4>
        <p>
            - 견종 및 무게제한 없음
<br>- 애견식당이 아닌 애견동반식당이므로 케어를 부탁드립니다
<br>- 케이지나 유모차 지참 또는 안아서 이동하지 않도록 지도해주세요
<br>
<br>- 3차 예방접종을 마친 반려견만 입장가능합니다.
<br>- 마킹 또는 마운팅을 하는 반려견들에게는 매너벨트 또는 기저귀를 필수로 착용부탁드립니다.
<br>- 반려견의 배변은 견주님이 직접 치워주세요.
<br>- 반려견이 공격적인 성향이 강하거나 많이 예민한 경우 입장이 제한될 수 있습니다.
<br>
<br>* 반려견 동반 운영 정책은 현지 사정에 따라 변동될 수 있습니다.
        </p>
    </div>
    <!-- //text_box -->

    <div class="text_box map">
        <h4 class="title">지도보기</h4>
        <p>
            주소 : 강원 춘천시 뱀내길 6
        </p>
        <div class="map-box">
            <div id="map" style="width: auto; height: 100%; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map3.daumcdn.net/map_2d_hd/2306uwn/L3/2132/1139.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -92px; top: 106px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d_hd/2306uwn/L3/2132/1140.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 164px; top: 106px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d_hd/2306uwn/L3/2132/1141.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 420px; top: 106px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d_hd/2306uwn/L3/2132/1142.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 676px; top: 106px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d_hd/2306uwn/L3/2132/1143.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 932px; top: 106px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d_hd/2306uwn/L3/2132/1144.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1188px; top: 106px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d_hd/2306uwn/L3/2133/1139.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -92px; top: -150px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d_hd/2306uwn/L3/2133/1140.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 164px; top: -150px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d_hd/2306uwn/L3/2133/1141.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 420px; top: -150px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d_hd/2306uwn/L3/2133/1142.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 676px; top: -150px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d_hd/2306uwn/L3/2133/1143.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 932px; top: -150px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d_hd/2306uwn/L3/2133/1144.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1188px; top: -150px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1; width: 846px; height: 237px;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1692px; top: -474px; width: 4230px; height: 1185px;" viewBox="0 0 4230 1185"><defs></defs><ellipse id="daum-maps-shape-0" style="stroke:#75B8FA;stroke-opacity:1;stroke-width:5px;stroke-dasharray:0.5,9.5;color:#75B8FA;stroke-linecap:round;fill:#CFE7FF;fill-opacity:0.7;fill-rule:evenodd;" cx="2292" cy="593" rx="50" ry="50" gtype="oval"></ellipse></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; z-index: 0; white-space: nowrap; margin: -67px 0px 0px -56px; left: 600px; top: 119px;"><div class="overlay_info">    <strong>아울러</strong></div></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"><div style="width: 106px; height: 32px; box-sizing: content-box; background-color: rgb(255, 255, 255); padding: 2px; border-radius: 3px; box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 2px 0px; position: absolute; left: 733px; top: 3px;"><button draggable="false" title="지도" type="button" style="float: left; cursor: default; width: 43px; height: 32px; user-select: none; -webkit-user-drag: none; border: none; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -5px -183px / 116px 264px no-repeat; color: rgb(255, 255, 255); font-weight: bold;"></button><button draggable="false" title="스카이뷰" type="button" style="float: left; cursor: pointer; width: 63px; height: 32px; user-select: none; -webkit-user-drag: none; border: none; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -48px -183px / 116px 264px no-repeat; color: rgb(0, 0, 0); font-weight: normal;"></button></div><div style="width: 32px; border-radius: 3px; box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 2px 0px; position: absolute; left: 811px; top: 42px;"><button draggable="false" title="확대" type="button" style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; border-top: none; border-right: none; border-bottom: 1px solid rgb(226, 226, 226); border-left: none; border-image: initial; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -40px 0px / 116px 264px no-repeat rgb(255, 255, 255); border-radius: 3px 3px 0px 0px;"></button><div style="float: left; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_zoom_control.png&quot;) repeat; padding: 7px 0px; transition: height 0s ease 0s, margin 0.1s ease 0s;"><div style="cursor: pointer; position: relative; background-size: 116px 264px; transition: height 0.1s ease 0s; margin: 2px 0px; display: block; width: 32px; height: 104px;"><div style="position: absolute; width: 4px; height: 100%; background-color: rgb(51, 150, 255); left: 50%; margin: 0px 0px 0px -2px;"><div style="width: 4px; height: 2px; margin-bottom: -2px; bottom: 0px; position: absolute; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -50px -127px / 116px 264px;"></div><div style="width: 4px; height: 2px; margin-top: -2px; top: 0px; position: absolute; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -40px -100px / 116px 264px;"></div></div><div style="position: absolute; background-color: rgb(204, 204, 204); transition: height 0.1s ease 0s; left: 50%; margin: 0px 0px 0px -2px; width: 4px; height: 16px;"></div><div style="cursor: row-resize; position: absolute; width: 20px; height: 10px; margin: -4px 0px 0px -10px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -40px -80px / 116px 264px; left: 50%; transition: top 0.1s ease 0s; top: 16px;"></div></div></div><button draggable="false" title="축소" type="button" style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; border-top: 1px solid rgb(226, 226, 226); border-right: none; border-bottom: none; border-left: none; border-image: initial; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) -40px -32px / 116px 264px no-repeat rgb(255, 255, 255); border-radius: 0px 0px 3px 3px; margin: 0px;"></button><div style="display: none; position: absolute; margin: 41px 0px 0px -30px; background-size: 116px 264px; width: 30px; height: 104px;"><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) 0px -80px / 116px 264px; left: 0px; top: 8px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) 0px -100px / 116px 264px; left: 0px; top: 32px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) 0px -120px / 116px 264px; left: 0px; top: 64px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) 0px -140px / 116px 264px; left: 0px; top: 80px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&quot;) 0px -160px / 116px 264px; left: 0px; top: 96px;"></div></div></div></div></div>
        </div>
    </div>
    <!-- //text_box -->

    <div class="text_box">
        <h4 class="title">주변여행지</h4>
        
            <ul class="travel_destination clearfix">
                
                    <li>
                        <a href="/pet/tour/drink?contentSeq=64">
                            <div class="img-box">
                                    
                                 <img src="/upload/mapdata/C0064/thumb/list/C0064_F20210830104454001.jpg" alt="유기농카페">
                            </div>
                            <p class="text-box">
                                유기농카페
                            </p>
                        </a>
                    </li>
                
                    <li>
                        <a href="/pet/tour/sleep?contentSeq=69">
                            <div class="img-box">
                                    
                                        <img src="/upload/mapdata/C0069/thumb/list/C0069_F20210828152228001.jpg" alt="해피리버펜션">
                            </div>
                            <p class="text-box">
                                해피리버펜션
                            </p>
                        </a>
                    </li>
                
                    <li>
                        <a href="/pet/tour/drink?contentSeq=44">
                            <div class="img-box">
                                    
                                        <img src="/upload/mapdata/C0044/thumb/list/C0044_F20210825162920001.jpg" alt="세계주류마켓">
                            </div>
                            <p class="text-box">
                                세계주류마켓
                            </p>
                        </a>
                    </li>
                    <li>
                        <a href="/pet/tour/drink?contentSeq=70">
                            <div class="img-box">
                                
                                        <img src="/upload/mapdata/C0070/thumb/list/C0070_F20210828164617001.jpg" alt="쿠키멍스터">
                            </div>
                            <p class="text-box">
                                쿠키멍스터
                            </p>
                        </a>
                    </li>
            </ul>
    </div>

    <div class="text_box comment-cont clearfix">
        <div class="comment-box">
            <h4 class="title">의견을 남겨주세요.
                <a href="/pet/service/login" onclick="alert('댓글을 등록하시려면 로그인이 필요합니다.');" class="skinBtnBo skinBtnBo-data-neg btn-login">댓글 쓰기</a>
            </h4>
                <div style="text-align: center; margin: 10px 0;">등록된 댓글이 없습니다.</div>
        </div>
    </div>

    </div>
    <!-- //text_box -->
    
    <div class="button_box">
        <div class="skinTxa-right">
            <a href="/pet/tour/drink" onclick="goPage(this.href); return false;" class="skinBtnBo skinBtnBo-data-pos">목록</a>
        </div>
    </div>

</div>

<form name="pageForm" method="post">
    <input type="hidden" name="_csrf" value="72d71c15-8b8a-4937-8ed0-06e5536d7c0f">
    <input type="hidden" name="pageIndex" value="1">
    <input type="hidden" name="searchKeyword" value="">
    <input type="hidden" name="searchCondition" value="">
    <input type="hidden" name="returnUrl" value="/pet/tour/drink">
</form>


<form id="commentForm" method="get">
    <input type="hidden" name="pageIndex" value="1">
    <input type="hidden" name="contentSeq" value="601">
</form>

<form name="writeForm" method="get">
    <input type="hidden" name="pageIndex" value="1">
    <input type="hidden" name="returnUrl" value="/pet/tour/drink">
    <input type="hidden" name="content" value="">
</form>

<form name="deleteForm" method="post">
    <input type="hidden" name="_csrf" value="72d71c15-8b8a-4937-8ed0-06e5536d7c0f">
    <input type="hidden" name="pageIndex" value="1">
    <input type="hidden" name="returnUrl" value="/pet/tour/drink">
    <input type="hidden" name="contentSeq" value="601">
</form>
									

			</div>
		</div>
	</div>

</div>

</div>