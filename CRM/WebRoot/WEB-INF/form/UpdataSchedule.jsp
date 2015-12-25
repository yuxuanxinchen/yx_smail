<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@  include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>任务添加</title>
<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
	<link href="${basePath }css/laydate.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
	<script type='text/javascript'
	src='${basePath }/dwr/interface/schedule.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/complain.js'></script>
<script type="text/javascript" src="${basePath }/js/laydate.dev.js"></script>
<script type='text/javascript' src='${basePath }/dwr/engine.js'></script>
<script type='text/javascript' src='${basePath }/dwr/util.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/menuInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/mession.js'></script>
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
	<style type="text/css">
  body{color:#666;font-size:14px;font-family:"微软雅黑"}
#datils {
	width: 35px;
	height: 30px;
	background: #141414;
	color: #fff;
	cursor: pointer;
}

.inpsr {
	width: 180px;
	height: 30px;
}

.tj {
	display: bolck;
	width: 100%;
	height: 35px;
	background: #141414;
	color: #fff;
	font-size: 30px;
	line-height: 35px;
	text-align: center;
	letter-space: 1em;
	box-shadow: 3px 4px 5px #141414;
	border-radius: 10px;
	cursor: pointer
}

.containfo {
	width: 50px;
	height: 20px;
	background: #141414;
	color: #fff;
	display: inline-block;
	cursor: pointer
}

  .tj:hover{background:green;font-size:35px}

</style>
	<script type="text/javascript">
	      

		$(function() {
		   laydate({
            elem: '#resultTime',
            event: 'focus' 
        });
		
			$("#dcser").datagrid({
				onDblClickRow : function(rowIndex, rowData) {
					var dataS = rowData.missionSubject;
					$("#MissionName").val(dataS);
					$("#missionId").val(rowData.missionId);
					$("#dcser").datagrid({
						closed : true,
					});
					$("#wsf").window({
						closed : true
					})
				}
			});
			
			
			$("#comp").datagrid({
				onDblClickRow : function(rowIndex, rowData) {
					var dataS = rowData.customerMc;
					$("#MissionName").val(dataS);
					$("#missionId").val(rowData.missionId);
					$("#comp").datagrid({
						closed : true,
					});
					$("#cus").window({
						closed : true
					})
				}
			});
		});

		function userParent() {
			$("#dcser").datagrid({
				closed : false,
				data : [],
			});
			$("#wsf").window('open')
			user.getUserAll({
				callback : function(data) {
					var obj = eval('(' + data + ')');
					for (var i = 0; i < obj['list'].length; i++) {
						var userId = obj['list'][i].userId;
						var userName = obj['list'][i].userName;
						$('#dcser').datagrid('appendRow', {
							"Id" : (i + 1),
							"userId" : userId,
							"userName" : userName
						});
					}
				}
			});
		}
		
		
		function showMission(){
		
		$("#dcser").datagrid({
			closed : false,
			data : [],
		});
		 mession.showWindowDatils({
		   callback:function(data){
		      var obj = eval('('+data+')');
		      for(var i = 0 ;i < obj['list'].length;i++){
		           $('#dcser').datagrid('appendRow', {
							"Id" : (i + 1),
							"missionId" : obj['list'][i].missionId,
							"missionSubject" : obj['list'][i].missionSubject
						});
		              }
		         $("#wsf").window('open');
		         
		         $("#dcser").datagrid({
						closed : false,
					});
		      }
		 });
		}
		
		
		function submitSchedule(){
		$.messager.progress({
			title : "稍等哦！",
			msg : "正在努力加载中....",
			interval : 10
		});
		    var shecduleName = $("#shecduleName").val();
		    var MissionName = $("#MissionName").val();
		    var missionId = $("#missionId").val();
		    var resultTime = $("#resultTime").val();
		    var shceduleDescription = $("#shceduleDescription").val();
			var schedulePriority = $("#schedulePriority").val();
			var scheduleId = $("#scheduleId").val();
			
		  var forMap = {
		    "shecduleName":shecduleName,
		    "MissionName":MissionName,
		    "missionId":missionId,
		    "resultTime":resultTime,
		    "shceduleDescription":shceduleDescription,
		    "schedulePriority":schedulePriority,
		    "scheduleId":scheduleId
		  }
		  
		  schedule.updataScheduel(forMap,{
		     callback:function(data){
		     $.messager.progress('close');
		     if(data=="SUCCESS"){
		        $.messager.alert('小提示!', "成功啦");
		     }else{
		     	$.messager.alert('小提示!', "失败啦");
		     }
				 window.opener.location.reload();
				  window.close();
		     
		     }
		  })
		
		}
		
		
	</script>
  </head>
  <body> 
  <center>
		 <h2 align="center" style="font-family:华义彩云;"> 日程更新</h2>
			<form name="addComplainInfoForm"   action=" " method="post" target="main">
			      <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <input type="hidden" name="scheduleId" id="scheduleId" value="${sdel.scheduleId }"/>
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 日程名：</td>
				      <td><input type="text" placeholder="填写主题哦" name="shecduleName" id="shecduleName" value="${sdel.scheduleName }"> </td>
				    </tr>
					  <tr style="padding:5px;">
					  
					   <td bgcolor="#eeeeee"> 任务：</td>
					      <td align="left">
					      <input type="text" placeholder="单击添加哦" name="MissionName" onclick="showMission()" id="MissionName" readonly="readonly" value="${sdel.mession.missionSubject }"> 
					      <input type="hidden" name="missionId" id="missionId" readonly="readonly" value="${sdel.mession.missionId }"> 
					      
					      </td>
					      
					
					  <td bgcolor="#eeeeee"> 结束时间：</td>
				      <td><input type="text" id="resultTime" value="${sdel.resultTime }" />
					    <tr style="padding:5px;">
					  
					       
				
					  <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 备注：</td>
						      <td align="left"  colspan="3"> 
						          <textarea rows="5" cols="60" name="shceduleDescription" id="shceduleDescription">${sdel.scheduleDescription }</textarea>
						      </td>
					  </tr>  
					        <td bgcolor="#eeeeee"> 优先级：</td>
					      <td align="left" > 
					      <select name="customerSatisfaction" id="schedulePriority">
					         <option value="1">重要</option>
					          <option value="2">一般</option>
					         </select>
					      </td>
			      </table>
			      <p align="center">
			      <input type="button" value="添加" class="tj"  onclick="submitSchedule();" />
			      <input type="reset" value="重置" class="tj" />
			      </p>
			</form>
			</center>
			
		<div id="wsf" class="easyui-window" title="任务"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			<table id="dcser"  class="easyui-datagrid" 
			style="width:570px;height:350px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,closed:false,align:'center'">
			<thead>
				<tr>
					<th data-options="field:'Id',width:80">编号</th>
					<th data-options="field:'missionId',width:100">任务Id</th>
					<th data-options="field:'missionSubject',width:250,align:'center'">任务主题</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="cus" class="easyui-window" title="客户"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			<table id="comp"  class="easyui-datagrid" 
			style="width:570px;height:350px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,closed:false,align:'center'">
			<thead>
				<tr>
					<th data-options="field:'Id',width:80">编号</th>
					<th data-options="field:'customerId',width:100">客户Id</th>
					<th data-options="field:'customerMc',width:120,align:'center'">客户名称</th>
				</tr>
			</thead>
		</table>
	</div>
  </body>
</html>

