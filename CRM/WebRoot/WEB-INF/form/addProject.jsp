<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@  include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>任务添加</title>
<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
	<script type='text/javascript'
	src='${basePath }/dwr/interface/schedule.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/complain.js'></script>
	<script type='text/javascript'
	src='${basePath }/dwr/interface/project.js'></script>
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
			$("#comp").datagrid({
				onDblClickRow : function(rowIndex, rowData) {
					var dataS = rowData.customerMc;
					$("#customerName").val(dataS);
					$("#customerId").val(rowData.customerId);
					$("#comp").datagrid({
						closed : true,
					});
					$("#cus").window({
						closed : true
					})
				}
			});
			
			$("#shcedData").datagrid({
				onDblClickRow : function(rowIndex, rowData) {
					var dataS = rowData.scheduleName;
					$("#scheduleName").val(dataS);
					$("#scheduleId").val(rowData.scheduleId);
					$("#shcedData").datagrid({
						closed : true,
					});
					$("#shced").window({
						closed : true
					})
				}
			});
		});
		
		function customerInfos(){
		$("#cus").window('open')
		  customerInfo.ajaxWindow({
		     callback:function(data){
		       var obj = eval('('+data+')');
		       for(var i = 0 ;i < obj['list'].length; i++){
		          $("#comp").datagrid('appendRow',{
		            "Id":(i+1),
		             "customerId":obj['list'][i].customerId,
		             "customerMc":obj['list'][i].customerMc,
		        });
		       }
		     }
		  });
		}
		
		
		function showSchedul(){
		$("#shcedData").datagrid({
						closed : false,
						data:[]
					});
		
		 $("#shced").window('open')
		   schedule.showWindowAll({
		      callback:function(data){
		         var obj = eval('('+data+')');
		         for(var i = 0 ; i<obj['list'].length;i++){
		              $("#shcedData").datagrid('appendRow',{
		                  "Id":(i+1),
		                  "scheduleId":obj['list'][i].scheduleId,
		                  "scheduleName":obj['list'][i].scheduleName,
		              });
		         }
		      }
		   })
		}
		
		
		function submitProject(){
		   var projectName = $("#projectName").val();
		   var customerId = $("#customerId").val();
		   var scheduleId = $("#scheduleId").val();
		   var projectComplete = $("#projectComplete").val();
		   var projectRate = $("#projectRate").numberbox('getValue');
		   var projectState = $("#projectState").val();
		   var projectDescription = $("#projectDescription").val();
		   var projectVerify = $("#projectVerify").val();
		   var projectSummarize = $("#projectSummarize").val();
		   
		   
		   var forMap  = {
		    "projectName":projectName,
		    "customerId":customerId,
		     "scheduleId":scheduleId,
		     "projectComplete":projectComplete,
		     "projectRate":projectRate,
		     "projectState":projectState,
		     "projectDescription":projectDescription,
		     "projectVerify":projectVerify,
		     "projectSummarize":projectSummarize
		   }
		
		project.saveProjectManager(forMap,{
		   callback:function(data){
		     alert(data);
		   }
		})
		  
		
		
		}
		
		
	</script>
  </head>
  		
  <body> 
  <center>
		 <h2 align="center" style="font-family:华义彩云;"> 项目立项</h2>
			<form name="addComplainInfoForm"   action=" " method="post" target="main">
			      <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 项目名称：</td>
				      <td><input type="text" placeholder="填写项目名称哦" name="projectName" id="projectName" value=""> </td>
				     
				      <td bgcolor="#eeeeee"> 客户姓名：</td>
				      <td><input onclick="customerInfos()" type="text" name="customerName" onclick="customerInfos()" id="customerName" value="" placeholder="点击文本框添加哦"  readonly="readonly"/> 
				          <input  type="hidden" name="customerId" id="customerId"   value=""/> <!-- 隐藏上级id -->
				      </td>
				      
				    </tr>
					  
					  <tr style="padding:5px;">
					  
					   <td bgcolor="#eeeeee"> 日程：</td>
					      <td align="left">
					      <input type="text" placeholder="单击添加哦" name="scheduleName" onclick="showSchedul()" id="scheduleName" readonly="readonly" value=""> 
					      <input type="hidden" name="contactsPersonId" id="scheduleId" readonly="readonly" value=""> 
					      
					      </td>
					  
					       <td bgcolor="#eeeeee"> 项目完成度：</td>
					      <td align="left" > 
					      <select name="projectComplete" id="projectComplete">
					         <option value="1">未完成</option>
					          <option value="2">已完成</option>
					         </select>
					      </td>
				
					   <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 项目进度：</td>
						      <td align="left"  colspan="3"> 
						          <input type="text" id="projectRate" value="" class="easyui-numberbox" style="width:80px;" required="required" data-options="min:10,max:100,editable:false,suffix:'%'"/>
						      </td>
						     
					  </tr>  
					  <td bgcolor="#eeeeee"> 交易状态：</td>
						      <td align="left"  colspan="3"> 
						         <select name="projectState" id="projectState">
								         <option value="1">交易成功</option>
								          <option value="2">交易失败</option>
					         </select>
						      </td>
					      
					   <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 项目审核：</td>
						      <td align="left"  colspan="3"> 
						         <select name="projectVerify" id="projectVerify">
								         <option value="1">未审核</option>
								          <option value="2">已审核</option>
					         </select>
						      </td>
						      
					  </tr>  
					     
					     
					  <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 项目详细：</td>
						      <td align="left"  colspan="3"> 
						          <textarea rows="5" cols="60" name="projectDescription" id="projectDescription"></textarea>
						      </td>
					  </tr> 
					    <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 项目总结：</td>
						      <td align="left"  colspan="3"> 
						          <textarea rows="5" cols="60" name="projectSummarize" id="projectSummarize"></textarea>
						      </td>
					  </tr>  
			      </table>
			      <p align="center">
			      <input type="button" value="添加" class="tj"  onclick="submitProject();" />
			      <input type="reset" value="重置" class="tj" />
			      </p>
			</form>
			</center>
			
			
			
<div id="cus" class="easyui-window" title="客户"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			<table id="comp"  class="easyui-datagrid" 
			style="width:570px;height:350px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,closed:false,align:'center'">
			<thead>
				<tr>
					<th data-options="field:'Id',width:80">编号</th>
					<th data-options="field:'s',width:100">客户Id</th>
					<th data-options="field:'customerMc',width:120,align:'center'">客户名称</th>
				</tr>
			</thead>
		</table>
	</div>		
	
	
	<div id="shced" class="easyui-window" title="日程"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			<table id="shcedData"  class="easyui-datagrid" 
			style="width:570px;height:350px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,closed:false,align:'center'">
			<thead>
				<tr>
					<th data-options="field:'Id',width:80">编号</th>
					<th data-options="field:'scheduleId',width:100">日程ID</th>
					<th data-options="field:'scheduleName',width:120,align:'center'">日程名称</th>
				</tr>
			</thead>
		</table>
	</div>	
	
	

  </body>
</html>

