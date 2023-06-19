<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
.title{
	font-size: 28px; 
	font-weight: bold; 
	border-bottom: 2px solid #eee; 
	padding-bottom: 10px; 
	width: 1200px;
}

.container {
  display: flex;
}

.box {
  width: 270px;
  height: 120px;
  border: 5px solid #eaeaea;
  margin-right: 0px;
}

.box:not(:last-child) {
  border-right: none;
}

.boxprice{
	font-size: 30px;
	padding: 15px;
	display: flex;
	height: 50%;
	color: #42b3e1;
	font-weight: bold;
}

.smallBox{
	display: flex;
	
}

.left{
	text-align: left;
	width: 50%;
	padding: 15px;
	font-size: 15px;
	margin-bottom: 15px;
	color: #a4a4a4;
	font-weight: bold;
}

.right{
	text-align: right;	
	width: 50%;
	padding: 15px;
	font-size: 15px;
	margin-bottom: 15px;
	color: #42b3e1;
	font-weight: bold;
}

.color1{
	color: #29ce7d;
}

.color2{
	color: #ff7b4d;
}

.color3{
	color: #9c6cf9;
}


/**/
.datebox{
	display: flex;
	padding-top: 30px;
}

.box4{
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-right: 0px;
  padding-top: 15px;
  color: #575757;
	
}

.inbox4{
	width: 270px;
  height: 100px;
  border: 4px solid #eaeaea;
}


.ininbox4{
	display: flex;
	width: 100%;
	height: 60%;
	padding-top: 20px;
	font-weight: bold;
}

.lt{
text-align: left;
	font-size: 16px; 
	width: 50%;
	padding-left: 20px; 
}

.rt{
	text-align: right;
	width: 50%;
	padding-right: 20px; 
}

.box4price{
	text-align: right; 
	padding-right: 20px; 
	font-weight: bold;
}


.box5{
	border: 4px solid #eee; 
	width: 520px; 
	height: 200px; 
	margin-top: 15px;  
	margin-left: 20px;
}

.box5top{
	height: 33%;
	text-align: center;
	font-weight: 600;
	font-size: 25px;
	padding-top: 20px;
	color: #575757;
}

.box5middle{
	height: 33%;
	text-align: center;
	font-weight: 600;
	font-size: 25px;
	padding-top: 5px;
	color: #575757;

}

.box5bottom{
	height: 33%;
	text-align: center;
	font-weight: 600;
	font-size: 35px;
	color: #575757;

}

table {
  width: 1080px; 
  height : 100px;
  border-collapse: collapse;
  font-weight: bold;
  color: #575757;
}

td {
  text-align: center; border: 4px solid #eaeaea; width: 16%
}

tr:nth-child(1) {
  height: 60%;
}

tr:nth-child(2) {
  height: 40%;
  color: #115dc2;
}

.chartbox1{
	margin-right : 4px;
	width: 538px;
	height: 325px;
	border: 1px solid #eee;
}

.btn {
color: #333;
border: 1px solid #999;
background-color: #fff;
padding: 4px;
border-radius: 4px;
font-weight: 500;
font-size: 12px;
cursor: pointer;
font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
vertical-align: baseline;
margin-left: 8px;
}

</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.4.2/echarts.min.js"></script>

<script type="text/javascript">


$(function(){
	let url = "${pageContext.request.contextPath}/admin/chart1";
	
	$.getJSON(url, function(data){
	

		var chartDom = document.getElementById('chart1');
		var myChart = echarts.init(chartDom);
		var option;

		option = {
		  title: {
		    text: '일자별 판매 총액'
		  },
		  tooltip: {
		    trigger: 'axis',
		    axisPointer: {
		      type: 'cross',
		      label: {
		        backgroundColor: '#6a7985'
		      }
		    }
		  },
		  legend: {
		    data: 'Email'
		  },
		  toolbox: {
		    feature: {
		      saveAsImage: {}
		    }
		  },
		  grid: {
		    left: '3%',
		    right: '4%',
		    bottom: '3%',
		    containLabel: true
		  },
		  xAxis: [
		    {
		      type: 'category',
		      boundaryGap: false,
		      data: [
		        '6월13일',
		        '6월14일',
		        '6월15일',
		        '6월16일',
		        '6월17일',
		        '6월18일',
		        '6월19일'
		      ]
		    }
		  ],
		  yAxis: [
		    {
		      type: 'value'
		    }
		  ],
		  series: [
		    {
		      name: 'Search Engine',
		      type: 'line',
		      stack: 'Total',
		      label: {
		        show: true,
		        position: 'top'
		      },
		      areaStyle: {},
		      emphasis: {
		        focus: 'series'
		      },
		      data: [23000, 33000, 54000, 28900, 15000, 78000, 46800]
		    }
		  ]
		};

		option && myChart.setOption(option);

	
	});
});


$(function(){

	let url = "${pageContext.request.contextPath}/admin/chart2";
	
	$.getJSON(url, function(data){
		
	
		var chartDom = document.getElementById('chart2');
		var myChart = echarts.init(chartDom);
		var option;

		option = {
		 title: {
			    text: '일자별 신규회원 수'
			  },
		tooltip: {
				trigger: 'axis',
		},
		  xAxis: {
		    type: 'category',
		    data: [   
		    	'6월13일',
		        '6월14일',
		        '6월15일',
		        '6월16일',
		        '6월17일',
		        '6월18일',
		        '6월19일']
		  },
		  yAxis: {
		    type: 'value'
		  },
		  series: [
		    {
		      data: [150, 230, 224, 218, 135, 147, 260],
		      type: 'line'
		    }
		  ]
		};

		option && myChart.setOption(option);
	
	
	});
});




</script>



<div>



<div style="margin-bottom: 10px">
	<h3 ><i class="fa-solid fa-chart-simple"></i> 회원 통계 </h3>
</div>
<table>
  <tr>
    <td>신규 회원 수<span style="color: #a4a4a4;">(오늘)</span></td>
    <td>누적 회원 수</td>
    <td>현재 접속 수</td>
    <td>오늘 방문자 수</td>
    <td>월별 방문자 수</td>
    <td>연도별 방문자 수</td>
  </tr>
  <tr>
    <td>0명</td>
    <td>0명</td>
    <td>0명</td>
    <td>0명</td>
    <td>0명</td>
    <td>0명</td>
  </tr>
</table>




<br>
<div class="container">
	<div class="chartbox1" id="chart1"></div>
	<div class="chartbox1" id="chart2"></div>
</div>
<br>

<div style="margin-bottom: 10px">
	<h3 ><i class="fa-solid fa-chart-simple"></i> 판매 통계 </h3>
</div>

<div class="container">
  <div class="box">
  	<div class="boxprice">30,000 원</div>
  	<div class="smallBox">
	  	<div class="left">오늘</div>
	  	<div class="right">12건</div>
  	</div>
  </div>
  <div class="box">
  	<div class="boxprice color1">450,000 원</div>
  	<div class="smallBox">
	  	<div class="left">이번주</div>
	  	<div class="right color1">46건</div>
  	</div>
  </div>
  <div class="box">
  	<div class="boxprice color2">230,000 원</div>
  	<div class="smallBox">
	  	<div class="left">이번달</div>
	  	<div class="right color2">212건</div>
  	</div>
  </div>
  <div class="box">
  	<div class="boxprice color3">17,060,100 원</div>
  	<div class="smallBox">
	  	<div class="left">올해</div>
	  	<div class="right color3">1540건</div>
  	</div>
  </div>
</div>

<form method="post" name="dateSearch">
	<div class="datebox">
		<input type="date" id="start-date" name="start-date">&nbsp; 
		<input type="date" id="end-date" name="end-date"> 
		<button type="submit" class="btn">검색</button>
	</div>
</form>

<div class="container">	
	<div class="box4">
		<div class="inbox4" style="border-right: none; border-bottom:none;">  
			<div class="ininbox4" >
				<div class="lt" >결제완료</div>
				<div class="rt">3건</div>
			</div>
			<div>
				<div class="box4price"> 50,000 원 </div>
			</div>
		</div>
		<div class="inbox4" style="border-right: none;" >
			<div class="ininbox4" >
				<div class="lt" >배송중</div>
				<div class="rt">3건</div>
			</div>
			<div>
				<div class="box4price"> 50,000 원 </div>
			</div>
		</div>
	</div>
	
	<div class="box4">
		<div class="inbox4" style="border-bottom: none;" >
			<div class="ininbox4" >
				<div class="lt" >배송준비중</div>
				<div class="rt">3건</div>
			</div>
			<div>
				<div class="box4price"> 50,000 원 </div>
			</div>
		</div>
		<div class="inbox4" >
			<div class="ininbox4" >
				<div class="lt" >배송완료</div>
				<div class="rt">3건</div>
			</div>
			<div>
				<div class="box4price"> 50,000 원 </div>
			</div>
		</div>
		
	</div>
	
	
	<div class="box5" >
		<div class="box5top">주문처리완료</div>
		<div class="box5middle">7건</div>
		<div class="box5bottom">184,500 원</div>
	</div>

</div>




</div><!-- 전체 -->






