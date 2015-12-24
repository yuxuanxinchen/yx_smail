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
 </head>
	<script type="text/javascript" src="${basePath }resources/js/echarts/dist/echarts.js"></script>
	<script type="text/javascript" src="${basePath }resources/js/echarts/dist/echarts-all.js"></script>
 <body>
	<div class="wrap">
		<!-- left页面 -->
		<%@include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			 <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="content"> 首页  &gt; 日记管理 ${year }</div>
			<div class="cnt">
			    <select class="yx_select" onchange="loadData(this.value)">
			        <option>--请选择年份--</option>
			        <c:forEach  items="${year }" var="yes">
			           <option value="${yes }">${yes }年</option>
			        </c:forEach>
			      </select>
			    <div id="main" style="height:400px"></div>
			    <div id="main1" style="height:400px"></div>
			</div>
		</div>
	</div>
	
	<div id="main"></div>
	<script type="text/javascript">
	
	  $(function(){
	      loadData(new Date().getFullYear());
	  });
	
	
	   function loadData(year){
		$.ajax({
			type : "post",
			url : "${basePath}admin/stat/list",
			data:{"year":year},
			success : function(data) {
				var json = {
					title : year+"年网站模块访问详情",
					datas : parseData(data)
				};
				initChart("main", json);
			}
		});
     }
		function parseData(jsonArr) {
			var jsonObj = {};
			for ( var key in jsonArr) {
				var num = jsonArr[key].num;
				var m = jsonArr[key].m;
				jsonObj["s" + parseInt(m)] = num;
			}
			;
			var arr = [];
			for (var i = 1; i <= 12; i++) {
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
			require([ 'echarts', 'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
			'echarts/chart/line', 'echarts/chart/pie' ], function(ec) {
				// 基于准备好的dom，初始化echarts图表
				var myChart = ec.init(document.getElementById(targetId));
				var option = {
					title : {
						x : "center",
						text : json.title,
						subtext : '月份/总数'
					},
					tooltip : {
						trigger : 'axis'
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
								type : [ 'line', 'bar' ]
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
						type : 'category',
						data : [ '1月', '2月', '3月', '4月', '5月', '6月', '7月',
								'8月', '9月', '10月', '11月', '12月' ]
					} ],
					yAxis : [ {
						type : 'value'
					} ],
					series : [ {
						name : '访问数',
						type : 'bar',
						data : json.datas,
						markPoint : {
							data : [ {
								type : 'max',
								name : '最大值'
							}, {
								type : 'min',
								name : '最小值'
							} ]
						},
						markLine : {
							data : [ {
								type : 'average',
								name : '平均值'
							} ]
						}
					}, ]
				};

				// 为echarts对象加载数据 
				myChart.setOption(option);
				ecConfig = require('echarts/config');
				myChart.on(ecConfig.EVENT.CLICK,eConsole);
			});
		}
		
		function eConsole(param){
		  var month = parseInt(param.name);
		  var datas = {
		    month:month,
		    order:"create_time desc",
		    pageNo:0,
		    pageSize:30
		  };
		  
		  $.ajax({
		    type:"post",
		    url:"${basePath}admin/adminstat/groupcontent",
		    data:datas,
		    success:function(data){
// 		       alert(JSON.stringify(data));
		    }
		  });
		}
		
	
	</script>
 </body>
</html>
