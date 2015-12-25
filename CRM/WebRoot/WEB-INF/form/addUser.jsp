<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>客户添加</title>
<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>

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
				$("#userParents").val(dataS);
				$("#userLeadId").val(rowData.userId);
				$("#dcser").datagrid({
					closed : true,
				});
				$("#wsf").window({
					closed : true
				})
			}
		});
		
		$("#roleIns").datagrid({
		onDblClickRow : function(rowIndex, rowData) {
					var dataS = rowData.roleName;
					var rowdataId = rowData.userId;
					$("#userRoleName").val(dataS);
					$("#roleInfoId").val(rowData.roleId);
					$("#dcser").datagrid({
						closed : true,
					});
					$("#roleP").window({
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

	function roleInfo() {
		$("#roleIns").datagrid({
			closed : false,
			data : [],
		});
		$("#roleP").window('open')
		user.getRoleInfo({
			callback : function(data) {
				var obj = eval('(' + data + ')');
				for (var i = 0; i < obj['list'].length; i++) {
					$('#roleIns').datagrid('appendRow', {
						Id : (i + 1),
						roleId : obj['list'][i].roleId,
						roleName : obj['list'][i].roleName
					});
				}
			}
			
		})
	}
	
	
	function submitUser(){
	
	$.messager.progress({
			title : "稍等哦！",
			msg : "正在努力加载中....",
			interval : 10
		});
		var userName = $("#userName").val();
		var passWord = $("#userPassword").val();
		var userLobin = $("#userLoginName").val();
		var reUserPassWord = $("#reUserPassWord").val();
		var userTelphone = $("#userTelphone").val();
		var userEmail = $("#userEmail").val();
		var userParents = $("#userParents").val();
		var userParentsId = $("#userLeadId").val();
		var userRoleName = $("#userRoleName").val();
		var userRoleNameId = $("#roleInfoId").val();
		var forMap = {
			"userName" : userName,
			"passWord" : passWord,
			"userLobin" : userLobin,
			"reUserPassWord" : reUserPassWord,
			"userTelphone" : userTelphone,
			"userEmail" : userEmail,
			"userParents" : userParents,
			"userParentsId" : userParentsId,
			"userRoleName" : userRoleName,
			"userRoleNameId" : userRoleNameId
		}

		user.addUser(forMap, {
			callback : function(data) {
				$.messager.progress('close');
				$.messager.alert('小提示!', data);
				
			}
		})
	}
</script>

</head>

<body>

	<center>
		 <h1 align="center" style="font-family:华义彩云;"> 用户信息添加</h1>
			<form name="addUserInfoForm"  action="" method="post" target="main">
			      <table width="80%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 用户名：</td>
				      <td><input type="text" name="userName" id="userName"  value=""> </td>
				     
				      <td bgcolor="#eeeeee"> 登陆名：</td>
				      <td><input type="text" name="userLoginName" id="userLoginName"  value=""> </td>
				    </tr>
				      <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 密码：</td>
					      <td><input type="password" name="userPassWord" id="userPassword"  value=""> </td>
					      
					       <td bgcolor="#eeeeee">确认密码：</td>
					        <td><input type="password" name="reUserPassWord" id="reUserPassWord"  value=""> </td>
					    </tr>
					  
					  <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 手机：</td>
					      <td>
					      <input type="text" name="userTelphone" id="userTelphone"  value="">
					      </td>
					      <td bgcolor="#eeeeee"> 邮箱：</td>
					      <td>
					      <input type="text" name="userEmail" id="userEmail"  value="">
					      </td>
					  </tr>     
				
				        <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 上级：</td>
					      <td> 
					      <input type="text"   name="userLeadName"  ondblclick="userParent()" readonly="readonly" placeholder="双击我添加上级哦!!"  id="userParents"  value="">
					      <input type="hidden" name="userLeadId"   id="userLeadId" value=""/> <!-- 隐藏上级id -->
					      </td>
					      <td bgcolor="#eeeeee"> 角色：</td>
					      <td>
					      <input type="text"   name="userRoleName"  ondblclick="roleInfo()" id="userRoleName" placeholder="双击我添加角色!" value="" readonly="readonly" />
					      <input type="hidden" name="roleInfoIdss"   id="roleInfoId" value=""/>
					      </td>
					     </tr>  
			      </table>
			      <p align="center">
			      <input type="button" class="tj" value="添加"  onclick="submitUser()">
			      <input type="reset" class="tj" value="重置">
			      </p>
			</form>
			</center>
			
	
	<div id="wsf" class="easyui-window" title="添加上级"
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
	
	
	<div id="roleP" class="easyui-window" title="添加上级"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			<table id="roleIns"  class="easyui-datagrid" 
			style="width:570px;height:350px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,closed:true,align:'center'">
			<thead>
				<tr>
					<th data-options="field:'Id',width:80">编号</th>
					<th data-options="field:'roleId',width:100">角色Id</th>
					<th data-options="field:'roleName',width:120,align:'center'">角色名称</th>
				</tr>
			</thead>
		</table>
	</div>
	
</body>
</html>

