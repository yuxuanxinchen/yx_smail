<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@  include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>客户投诉添加</title>
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
					var dataS = rowData.userName;
					$("#userLeadName").val(dataS);
					$("#userLeadId").val(rowData.userId);
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
			var complainPerson = $("#complainPerson").val();
			var userLeadName = $("#userLeadName").val();
			var userLeadId = $("#userLeadId").val();
			var customerSatisfaction = $("#customerSatisfaction").val();
			var complainStatus = $("#complainStatus").val();
			var complainContent = $("#complainContent").val();
			var complainHandleWay = $("#complainHandleWay").val();
			var complainRemarkInfo = $("#complainRemarkInfo").val();			
			var forMap = {
			  "complainTheme":complainTheme,
			  "customerName":customerName,
			  "customerId":customerId,
			  "complainPerson":complainPerson,
			  "userLeadName":userLeadName,
			  "userLeadId":userLeadId,
			  "customerSatisfaction":customerSatisfaction,
			  "complainStatus":complainStatus,
			  "complainContent":complainContent,
			  "complainContent":complainContent,
			  "complainHandleWay":complainHandleWay,
			  "complainRemarkInfo":complainRemarkInfo
			}
			
			complain.addComplain(forMap,{
			   callback:function(data){
			     $.messager.progress('close');
				 $.messager.alert('小提示!', data);
				 window.opener.location.reload()
				 window.close();
			   }
			})
		}
	</script>
  </head>
  
  <body> 
  
  <center>
		 <h5 align="center" style="font-family:华义彩云;"> 客户投诉添加</h5>
			<form name="addComplainInfoForm"   action=" " method="post" target="main">
			      <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 投诉主题：</td>
				      <td><input type="text" name="complainTheme" id="complainTheme" value=""> </td>
				     
				      <td bgcolor="#eeeeee"> 投诉客户：</td>
				      <td><input onclick="customerInfos()" type="text" name="customerName" id="customerName" value="" placeholder="点击文本框添加哦"  readonly="readonly"/> 
				          <input  type="hidden" name="customerId" id="customerId"   value=""/> <!-- 隐藏上级id -->
				      </td>
				      
				    </tr>
				    
				      <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 投 诉 人：</td>
					      <td align="left">
					      <input type="text" name="complainPerson" id="complainPerson"  value=""> 
					      </td>
					      
					       <td bgcolor="#eeeeee">受 理 人：</td>
					       <td align="left">
					            <input type="text" name="userName" id="userLeadName" onclick="userParent()" placeholder="点击文本框添加哦"   value="" readonly="readonly"/> 
					            <input type="hidden" name="userId"   id="userLeadId"   value=""/> <!-- 隐藏上级id -->
					       </td>
					  </tr>
					  
					  <tr style="padding:5px;">
					       <td bgcolor="#eeeeee"> 客户满意：</td>
					      <td align="left" > 
					      <select name="customerSatisfaction" id="customerSatisfaction">
					        <s:iterator value="#request.sjzdm" id="m">
					           <s:if test='#m.sjzdxxMc != ""' >
						                  <option value="${m.sjzdxxId }">
						                       ${m.sjzdxxMc}
						                       </s:if>
						                  </option>
					              </s:iterator>
					         </select>
					      </td>
					      <td bgcolor="#eeeeee"> 处理状态：</td>
					      <td align="left">
					        <select name="complainStatus" id="complainStatus">
					            <s:iterator value="#request.sjzdc" id="c">
					           <s:if test='#c.sjzdxxMc != ""' >
						                  <option value="${c.sjzdxxId }">
						                       ${c.sjzdxxMc}
						                       </s:if>
						                  </option>
					              </s:iterator>
					        
					         </select>
					      </td>
					  </tr>     
				
				      <tr style="padding:5px;">
					  </tr>  
					     
					  <tr style="padding:5px;">
						      <td bgcolor="#eeeeee"> 投诉内容：</td>
						      <td align="left"  colspan="3"> 
						      <textarea rows="5" cols="60" name="complainContent" id="complainContent"></textarea>
						      </td>
					  </tr>
					    
					  <tr style="padding:5px;" > 
						      <td bgcolor="#eeeeee" > 处理办法：</td>
						      <td align="left"  colspan="3"> 
						          <textarea rows="5" cols="60" name="complainHandleWay" id="complainHandleWay"></textarea>
						      </td>
					  </tr>  
					  <tr style="padding:5px;">    
						      <td bgcolor="#eeeeee"> 备注信息：</td>
						      <td align="left"  colspan="3"> 
						          <textarea rows="5" cols="60" name="complainRemarkInfo" id="complainRemarkInfo"></textarea>
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
					<th data-options="field:'userId',width:100">用户Id</th>
					<th data-options="field:'userName',width:120,align:'center'">用户名称</th>
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

