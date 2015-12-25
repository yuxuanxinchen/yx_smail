<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE html">
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    	<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/complain.js'></script>
<script type='text/javascript' src='${basePath }/dwr/engine.js'></script>
<script type='text/javascript' src='${basePath }/dwr/util.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/menuInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/roleInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/user.js'></script>
<script type="text/javascript" src="${basePath }easyui/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${basePath }easyui/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath }easyui/themes/default/easyui.css" />
<script type="text/javascript"
	src="${basePath }easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${basePath }easyui/locale/easyui-lang-zh_CN.js"></script>
    <script src="${basePath }js/dist/echarts.js"></script>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:400px"></div>
    <!-- ECharts单文件引入 -->
    <script type="text/javascript">
     var arrName = [];
     var myChart;
     var numBer = [];
     var resultArr = [];
      $(function(){
        DWREngine.setAsync(false);
         complain.showCharts({
           callback:function(data){
             var obj = eval('('+data+')');
              for(var i = 0 ; i< obj['list'].length ; i++){
               arrName.push(obj['list'][i].maxMS)
               numBer.push(obj['list'][i].maxSjzdxxByComplainStatus)
              }
           }
         })
          
          for(var i = 0 ;i < numBer.length;i++){
             resultArr[i] = numBer[i]+5
          }
          
      });
      
    </script>
     
</head>
<body style="background:#1B1B1B">

 <div id="main" height="700px" width="900px"></div>
 

   <script type="text/javascript">
         require.config({
            paths: {
                echarts: '../js/dist'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/theme/dark',
                'echarts/chart/pie',// 使用柱状图就加载bar模块，按需加载
                'echarts/chart/funnel',
                'echarts/chart/bar'
            ],
            function (ec,theme) {
                // 基于准备好的dom，初始化echarts图表
                 myChart = ec.init(document.getElementById('main'),theme); 
       					myChart.showLoading({
							text : '正在努力的读取数据中...', //loading话术
						});
				
						option = {
    title: {
        text: '客户投诉统计图表',
    },
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        },
        formatter: function (params) {
            var tar = params[0];
            return tar.name + '<br/>' + tar.seriesName + ' : ' + tar.value;
        }
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    xAxis : [
        {
            type : 'category',
            splitLine: {show:false},
            data : arrName
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'辅助',
            type:'bar',
            itemStyle:{
                normal:{
                    barBorderColor:'rgba(0,0,0,0)',
                    color:'rgba(0,0,0,0)'
                },
                emphasis:{
                    barBorderColor:'rgba(0,0,0,0)',
                    color:'rgba(0,0,0,0)'
                }
            },
            data:resultArr
        },
        {
            name:'客户投诉满意度',
            type:'bar',
            stack: '总量',
            itemStyle : { normal: {label : {show: true, position: 'inside'}}},
            data:numBer
        }
    ]
};
                    
						
								myChart.setOption(option);
								myChart.hideLoading()
								
					       }
        );
				</script>
</body>
</html>