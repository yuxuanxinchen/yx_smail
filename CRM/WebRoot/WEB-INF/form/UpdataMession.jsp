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
	src='${basePath }/dwr/interface/complain.js'></script>
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
			$("#dcser").datagrid({
				onDblClickRow : function(rowIndex, rowData) {
					var dataS = rowData.contactsName;
					$("#contactsPerson").val(dataS);
					$("#contactsPersonId").val(rowData.contactsId);
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
		
		
		function submitComplain(){
		$.messager.progress({
			title : "稍等哦！",
			msg : "正在努力加载中....",
			interval : 10
		});
		     var complainTheme = $("#complainTheme").val();
		     var customerName = $("#customerName").val();
		     var customerId = $("#customerId").val();
		     var contactsPerson = $("#contactsPerson").val();
		     var contactsPersonId = $("#contactsPersonId").val();
		     var customerSatisfaction = $("#customerSatisfaction").val();
		     var complainRemarkInfo = $("#complainRemarkInfo").val();
		     var messionId = $("#messionId").val();
		     
		     var forMap = {
		      "messionTheme":complainTheme,
		      "messionCustomerName":customerName,
		      "messionCustomerId":customerId,
		      "messionContactsPerson":contactsPerson,
		      "messionContactsPersonId":contactsPersonId,
		      "messionPrioriy":customerSatisfaction,
		      "messionDescription":complainRemarkInfo,
		      "messionId":messionId
		     }
		     mession.updataMission(forMap,{
		       callback:function(data){
		          $.messager.progress('close');
				  $.messager.alert('小提示!', data);
				 window.opener.location.reload();
				  window.close();
		       }
		     })
		}
		
		function showContacts(){
		$("#dcser").datagrid({
				closed : false,
				data : [],
			});
			$("#wsf").window('open')
		  contacts.getContactsAll({
		    callback:function(data){
		       var obj = eval('('+data+')');
		        for(var i = 0 ; i< obj['list'].length;i++){
		            $('#dcser').datagrid('appendRow', {
							"Id" : (i + 1),
							"contactsId" : obj['list'][i].contactsId,
							"contactsName" : obj['list'][i].contactsName
						});
		        }
		    }
		  })
		
		}
		
	</script>
  </head>
  
  <body> 
  <center>
		 <h2 align="center" style="font-family:华义彩云;"> 任务添加</h2>
			<form name="addComplainInfoForm"   action=" " method="post" target="main">
			      <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <input type="hidden" id="messionId" name="messionId" value="${ upmsinfo.missionId}"/>
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 任务主题：</td>
				      <td><input type="text" placeholder="填写主题哦" name="complainTheme" id="complainTheme" value="${upmsinfo.missionSubject }"> </td>
				     
				      <td bgcolor="#eeeeee"> 客户姓名：</td>
				      <td><input onclick="customerInfos()" type="text" name="customerName" id="customerName" value="${upmsinfo.customerInfo.customerMc }" placeholder="点击文本框添加哦"  readonly="readonly"/> 
				          <input  type="hidden" name="customerId" id="customerId"   value="${upmsinfo.customerInfo.customerId }"/> <!-- 隐藏上级id -->
				      </td>
				      
				    </tr>
					  
					  <tr style="padding:5px;">
					  
					   <td bgcolor="#eeeeee"> 联系人：</td>
					      <td align="left">
					      <input type="text" placeholder="单击添加哦" name="contactsPerson" onclick="showContacts()" id="contactsPerson" readonly="readonly" value="${upmsinfo.contactsInfo.contactsName }"> 
					      <input type="hidden" name="contactsPersonId" id="contactsPersonId" readonly="readonly" value="${upmsinfo.contactsInfo.contactsId }"> 
					      
					      </td>
					  
					       <td bgcolor="#eeeeee"> 任务优先级：</td>
					      <td align="left" ><select name="customerSatisfaction"
						id="customerSatisfaction">
							<s:if test="#request.upmsinfo.missionPrecedence == 1">
								<option value="1" selected="selected">高</option>
								<option value="2">中</option>
								<option value="3">低</option>
							</s:if>
							<s:if test="#request.upmsinfo.missionPrecedence == 2">
								<option value="2">中</option>
								<option value="1">高</option>
								<option value="3">低</option>
							</s:if>
							<s:if test="#request.upmsinfo.missionPrecedence == 3">
								<option value="3">低</option>
								<option value="1">高</option>
								<option value="2">中</option>
							</s:if>
					</select></td>
				
				      <tr style="padding:5px;">
					  </tr>  
					     
					  <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 任务详细：</td>
						      <td align="left"  colspan="3"> 
						          <textarea rows="5" cols="60" name="complainRemarkInfo" id="complainRemarkInfo">${upmsinfo.missionDescription }</textarea>
						      </td>
					  </tr>  
			      </table>
			      <p align="center">
			      <input type="button" value="添加" class="tj"  onclick="submitComplain();" />
			      <input type="reset" value="重置" class="tj" />
			      </p>
			</form>
			</center>
			
		<div id="wsf" class="easyui-window" title="用户"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			<table id="dcser"  class="easyui-datagrid" 
			style="width:570px;height:350px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,closed:true,align:'center'">
			<thead>
				<tr>
					<th data-options="field:'Id',width:80">编号</th>
					<th data-options="field:'contactsId',width:100">联系人Id</th>
					<th data-options="field:'contactsName',width:120,align:'center'">用户姓名</th>
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

