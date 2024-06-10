<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>
	#home-container {
				background-color: #fff;
				padding: 0;
				margin: 0 auto;
				background: url(http://codegen.caihongy.cn/20221212/6b42465da4284a7aa4d75774fb755a5d.jpg) no-repeat center top / 100% 100%;
				width: calc(100% - 60px);
				height: 100vh;
			}
	
	#home-container div.home-container-title {
				padding: 50px 0 0;
				margin: 0 auto;
				color: #333;
				font-weight: bold;
				font-size: 24px;
				text-align: center;
			}
	
	#home-container .cards {
				margin: 50px 0 20px 0;
				display: flex;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item {
				border-radius: 4px;
				box-shadow: 0 0px 0px rgba(0,0,0,.3);
				margin: 0 10px;
				display: flex;
			}
	
	#home-container .cards .item .link {
				border: 1px solid #e8e8e8;
				background: rgba(255,255,255,.3);
				width: 180px;
				height: 120px;
			}
	
	#home-container .cards .item .item-body {
				border: 1px solid #e8e8e8;
				margin: 0 0 0 10px;
				flex-direction: column;
				display: flex;
				width: 160px;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item .item-body .num {
				margin: 5px 0;
				color: #333;
				font-weight: bold;
				font-size: 20px;
				line-height: 24px;
				height: 24px;
			}
	
	#home-container .cards .item .item-body .name {
				margin: 5px 0;
				color: #666;
				font-size: 16px;
				line-height: 24px;
				height: 24px;
			}
	
    .homeCharts{
        display: flex;
        width: 100%;
        align-items: center;
        height: auto;
        box-shadow: 0 4px 10px rgba(0,0,0,.3);
        border-radius: 10px;
        margin-bottom: 20px;
    }
</style> 
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="jsp/static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
			
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">主页</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
			</ol>
		</div>
		<!-- /Breadcrumb -->
			
		<!-- Main Content -->
		<div id="home-container">
			<div class="home-container-title">欢迎使用&nbsp;基于J2EE架构的超市订单后台理系统</div>
			
			<div class="cards" :style='{"margin":"50px 0 20px 0","alignItems":"center","justifyContent":"center","display":"flex"}'>
				<div class="item" :style='{"boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"4px","display":"flex"}' v-if="crossBtnControl2('caigouruku','首页总数')">
					<div class="link" :style='{"border":"1px solid #e8e8e8","width":"180px","background":"rgba(255,255,255,.3)","height":"120px"}'></div>
					<div class="item-body" :style='{"border":"1px solid #e8e8e8","margin":"0 0 0 10px","alignItems":"center","flexDirection":"column","display":"flex","width":"160px","justifyContent":"center"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{caigourukuCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>采购入库总数</div>
					</div>
				</div>
				<div class="item" :style='{"boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"4px","display":"flex"}' v-if="crossBtnControl2('xiaoshouchuku','首页总数')">
					<div class="link" :style='{"border":"1px solid #e8e8e8","width":"180px","background":"rgba(255,255,255,.3)","height":"120px"}'></div>
					<div class="item-body" :style='{"border":"1px solid #e8e8e8","margin":"0 0 0 10px","alignItems":"center","flexDirection":"column","display":"flex","width":"160px","justifyContent":"center"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{xiaoshouchukuCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>销售出库总数</div>
					</div>
				</div>
			</div>
			
			<div class="homeCharts">
				<div id="caigourukuMain1" v-if="crossBtnControl2('caigouruku','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
				<div id="xiaoshouchukuMain1" v-if="crossBtnControl2('xiaoshouchuku','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
			</div>
		</div>
		<!-- /Main Content -->
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="jsp/static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts/theme/vintage.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts/theme/roma.js"></script>

	<script>
		<%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>
        <%@ include file="jsp/static/crossBtnControl.js"%>
		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>
        var vm = new Vue({
            el: '#home-container',
            data: {
            caigourukuCount: 0,
            xiaoshouchukuCount: 0,
            }
        });
        function getcaigourukuCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`caigouruku/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.caigourukuCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }
        function getxiaoshouchukuCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`xiaoshouchuku/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.xiaoshouchukuCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }

                function caigourukuchartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+`caigouruku/value/shangpinmingcheng/kucun`,
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].shangpinmingcheng);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].shangpinmingcheng
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('caigourukuMain1'),'vintage');
                                    var option = {};
                                    option = {
                                        title: {
                                            text: '采购数量统计',
                                            left: 'center'
                                        },
                                        tooltip: {
                                          trigger: 'item',
                                          formatter: '{b} : {c}'
                                        },
                                        xAxis: {
                                            type: 'category',
                                            data: xAxis
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [{
                                            data: yAxis,
                                            type: 'bar'
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }






                function xiaoshouchukuchartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+`xiaoshouchuku/value/shangpinmingcheng/kucun`,
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].shangpinmingcheng);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].shangpinmingcheng
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('xiaoshouchukuMain1'),'roma');
                                    var option = {};
                                    option = {
                                        title: {
                                            text: '销售数量统计',
                                            left: 'center'
                                        },
                                        tooltip: {
                                          trigger: 'item',
                                          formatter: '{b} : {c}'
                                        },
                                        xAxis: {
                                            type: 'category',
                                            boundaryGap: false,
                                            data: xAxis
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [{
                                            data: yAxis,
                                            type: 'line',
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }







		$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			  if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				  window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				  window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				  window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				  window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			  }
		  }			
          $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		  $('.sidebar-header h3 a').html(projectName)
		  var token = window.sessionStorage.getItem("token");
		  if(token == "null" || token == null){
		  	alert("请登录后再操作");
		  	window.location.href = ("jsp/login.jsp");
		  }
			setMenu();
			<%@ include file="jsp/static/myInfo.js"%>
            getcaigourukuCount();
            caigourukuchartDialog1()
            getxiaoshouchukuCount();
            xiaoshouchukuchartDialog1()
		});
	</script>
</body>

</html>
