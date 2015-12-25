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
     var objData = "[";
         
      $(function(){
        DWREngine.setAsync(false);
         complain.showCharts({
           callback:function(data){
             var obj = eval('('+data+')');
              for(var i = 0 ; i< obj['list'].length ; i++){
               objData += "{value:"+(i+1)+",name:'"+obj['list'][i].maxMS+"'},";
               arrName.push(obj['list'][i].maxMS)
              }
                objData += "]";
                objData = eval(objData);
               
           }
         })
          
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
            ],
            function (ec,theme) {
                // 基于准备好的dom，初始化echarts图表
                 myChart = ec.init(document.getElementById('main'),theme); 
       					myChart.showLoading({
							text : '正在努力的读取数据中...', //loading话术
						});
				
						var option = {
							title : {
								text : '客户投诉信息图标',
								subtext : '',
								x : 'center'
							},
							tooltip : {
								trigger : 'item',
								formatter : "{a} <br/>{b} : {c} ({d}%)"
							},
							legend : {
								orient : 'vertical',
								x : 'left',
								data : arrName
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
										type : [ 'pie', 'funnel' ],
										option : {
											funnel : {
												x : '25%',
												width : '50%',
												funnelAlign : 'left',
												max : 1548
											}
										}
									},
									restore : {
										show : true
									},
									saveAsImage : {
										show : false
									}
								}
							},
							calculable : true,
							series : [ {
								name : '访问来源',
								type : 'pie',
								radius : '55%',
								center : [ '50%', '60%' ],
								data : objData
							} ]
						};
						
								myChart.setOption(option);
								myChart.hideLoading()
								
					       }
        );
				</script>
</body>
</html>