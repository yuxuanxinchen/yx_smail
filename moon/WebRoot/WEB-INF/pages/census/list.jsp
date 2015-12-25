<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<%@ include file="/WEB-INF/common/common.jsp" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
</head>
<body style="background:#1b1b1b">
	<script type="text/javascript" src="${basePath }resources/js/echarts/dist/echarts.js"></script>
	<script type="text/javascript" src="${basePath }resources/js/echarts/dist/echarts-all.js"></script>
	<script type="text/javascript" src="${basePath}resources/js/date/WdatePicker.js"></script>
	<%@include file="/WEB-INF/common/common.jsp" %>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <!-- ECharts单文件引入 -->
    <div class="wrap">
		<!-- left页面 -->
		<%@include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			 <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="content"> 首页  &gt; 日记管理 ${year }</div>
			<div class="cnt">
			<div style="padding:10px;">
					<input type="text"  id="date" onFocus="WdatePicker({onpicking:changeDate,dateFmt:'yyyy-MM-dd'})" class="Wdate"/>	
				</div>
			    <div id="main" style="height:400px"></div>
			</div>
		</div>
	</div>
    <script type="text/javascript">
    
    
    function changeDate(dp) {
			var date = dp.cal.getNewDateStr();
			ajaxData(date)
		}
    
        $(function(){
          ajaxData(yxSimpleDate(new Date(),"Y-M-d"))
        });
        
        
       
       
       function ajaxData(date){
           yxAjax.r({
             url:"${basePath}admin/census/datas",
             callback:function(data){
			    parseData(data);	
			},
           },{"date":date});
        
       }
       
        function parseData(data){
        var datas = {arr:[],btns:[],data:[]};
           for(var k in data){
               if(k!="contains"){
                datas['arr'].push(data[k].model)
                datas['btns'].push(data[k].counts)
                datas['data'].push({value:data[k].counts,name:data[k].model})
               }
           } 
           initCharts("main",datas);
        }
    
    
    function initCharts(targetId,datas){    
    
        // 路径配置
        require.config({
            paths: {
                echarts: '${basePath}resources/js/echarts/dist/'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/theme/dark',
                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
                'echarts/chart/line',
                'echarts/chart/pie',
                'echarts/chart/funnel',
               
            ],
            function (ec,theme) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById(targetId),theme); 
                var placeHoledStyle = {
    normal:{
        barBorderColor:'rgba(0,0,0,0)',
        color:'rgba(0,0,0,0)'
    },
    emphasis:{
        barBorderColor:'rgba(0,0,0,0)',
        color:'rgba(0,0,0,0)'
    }
};
var dataStyle = { 
    normal: {
        label : {
            show: true,
            position: 'insideLeft',
            formatter: '{c}%'
        }
    }
};
 var idx = 0;
                var option = {
    title : {
        text: '网站模块访问量',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient : 'vertical',
        x : 'left',
        data:datas.arr
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {
                show: true, 
                type: ['pie', 'funnel'],
                option: {
                    funnel: {
                        x: '25%',
                        width: '50%',
                        funnelAlign: 'left',
                        max: 1548
                    }
                }
            },
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    series : [
        {
            name:'点击数',
            type:'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:datas.data
        }
    ]
};
                    
                    
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
        }
    </script>
</body>
</html>
