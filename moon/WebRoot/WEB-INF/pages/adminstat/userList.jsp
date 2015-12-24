<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>潭州学院keke老师模板页面</title>
	<meta http-equiv="pragma" adminstat="no-cache">
	<meta http-equiv="cache-control" adminstat="no-cache">
	<meta http-equiv="expires" adminstat="0">    
	<meta http-equiv="keywords" adminstat="keyword1,keyword2,keyword3">
	<meta http-equiv="description" adminstat="This is my page">
	
	<%@include file="/WEB-INF/common/common.jsp" %>
	<script type="text/javascript" src="${basePath}/resources/sg/tz_page.js"></script>
	<script type="text/javascript" src="${basePath }resources/js/echarts/dist/echarts.js"></script>
	<script type="text/javascript" src="${basePath }resources/js/echarts/dist/echarts-all.js"></script>
	<script type="text/javascript" src="${basePath}resources/js/date/WdatePicker.js"></script>
 </head>
 <body>
	<div class="wrap">
		<!-- left页面 -->
		<%@include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			 <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="content"> 首页  &gt; 日记管理</div>
			<div class="cnt">
			<div style="padding:10px;">
					<input type="text"  id="date" onFocus="WdatePicker({onpicking:changeDate})" class="Wdate"/>	
				</div>
			    <div id="main" style="height:400px"></div>
			    <div id="main1" style="height:400px"></div>
			</div>
		</div>
	</div>
	
	<div id="main"></div>
	<script type="text/javascript">
	
	
	
	  $(function(){
	        var d = new Date().format('yyyy-MM-dd');
			loadData(d);
			$("#date").val(d);
	  });
	  
	
		function changeDate(dp) {
			var date = dp.cal.getNewDateStr();
			loadData(date);
		}

		function getTimeLine() {
			var arr = [];
			for (var i = 0; i < 24; i++) {
				arr.push(i < 10 ? "0" + i : i + ":00");
			}
			return arr;
		};

		function loadData(h) {
		     yxAjax.r({
				  path:"${basePath}",
				  model:"admin/adminstat",
				  method:"groupUsers",
				  before:function(){
				     loading("OK")
				  },
				  error:function(){
				     loading("错误啦",4);
				  },
		          callback:function(data){
		              var json = {
						title : "用户注册数",
						datas : parseData(data),
						timeLine : getTimeLine()
					};
					initChart("main", json);
		          }
		        },{"date":h});
		}
		
		
		
		function parseData(jsonArr) {
			var jsonObj = {};
			for ( var key in jsonArr) {
				var num = jsonArr[key].num;
				var m = jsonArr[key].h;
				jsonObj["s" + parseInt(m)] = num;
			}
			;
			var arr = [];
			for (var i = 1; i <= 23; i++) {
				arr.push(jsonObj["s" + i] || 0);
			}

			return arr;
		}

        
       

     

		function initChart(targetId, json) {
			require.config({
				paths : {
					echarts : '${basePath}resources/js/echarts/dist/'
				}
			});

			// 使用
			require(
					[ 'echarts', 'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
					'echarts/chart/line', 'echarts/chart/pie',
							'echarts/chart/scatter' ], function(ec) {
						// 基于准备好的dom，初始化echarts图表
						var myChart = ec
								.init(document.getElementById(targetId));
						var option = {
							title : {
								text : json.title,
							},
							tooltip : {
								trigger : 'axis'
							},
							legend : {
								data : [ '注册' ]
							},
							toolbox : {
								show : true,
								feature : {
									mark : {
										show : true
									},
									dataView : {
										show : true,
										readOnly : false
									},
									magicType : {
										show : true,
										type : [ 'line', 'bar', 'stack',
												'tiled' ]
									},
									restore : {
										show : true
									},
									saveAsImage : {
										show : true
									}
								}
							},
							calculable : true,
							xAxis : [ {
								name : "时间段",
								type : 'category',
								boundaryGap : false,
								data : json.timeLine
							} ],
							yAxis : [ {
								name : "注册数",
								type : 'value'
							} ],
							series : [ {
								name : '注册',
								type : 'line',
								smooth : true,
								itemStyle : {
									normal : {
										areaStyle : {
											type : 'default'
										}
									}
								},
								data : json.datas
							}

							]
						};

						// 为echarts对象加载数据 
						myChart.setOption(option);
					});

		}
	</script>
 </body>
</html>
