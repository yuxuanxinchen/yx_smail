<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common.jsp" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
strong{width:200px;display:inline-block;}
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
		var userId = $("#userId").val();
		var parentId = $("#parentId").val();
		var forMap = {
			"userName" : userName,
			"passWord" : passWord,
			"userLobin" : userLobin,
			"reUserPassWord" : reUserPassWord,
			"userTelphone" : userTelphone,
			"userId":userId,
			"userEmail" : userEmail,
			"userParents" : userParents,
			"userParentsId" : userParentsId,
			"userRoleName" : userRoleName,
			"userRoleNameId" : userRoleNameId,
			"parentId":parentId,
		}

		user.updataUser(forMap, {
			callback : function(data) {
				$.messager.progress('close');
				$.messager.alert('小提示!', data);
				window.location.reload()
			}
		})
	}
     
     function detail(obj){
     var html ;
     user.getUesrDetail(obj,{
        callback:function(data){
			var obj = eval('('+data+')');
			html = "<p>用户编号："+obj['user'].userId+"</p>"+
			"<p>用户姓名："+obj['user'].userName+"</p>"+
			"<p>上级部门："+obj['user'].parentName+"</p>"+
			"<p>登陆名称："+obj['user'].userAdminName+"</p>"+
			"<p>电子信箱："+obj['user'].userEmail+"</p>"+
			"<p>手机号码："+obj['user'].userPhone+"</p>"+
			"<p>用户角色："+obj['user'].roleInfo.roleName+"</p>";
			$("#wsfe").empty();
			$("#wsfe").append(html);
			$("#wsfe").window('open');
        }
     })
     }
     
     
     function updataUser(id){
       user.getUesrDetail(id,{
         callback:function(data){
            var obj = eval('('+data+')');
				$("#userName").val(obj['user'].userName);
				$("#userLoginName").val(obj['user'].userAdminName);
				$("#userTelphone").val(obj['user'].userPhone);
				$("#userEmail").val(obj['user'].userEmail);
				$("#userParents").val(obj['user'].parentName);
				$("#userRoleName").val(obj['user'].roleInfo.roleName);
				$("#roleInfoId").val(obj['user'].roleInfo.roleId);
				$("#userId").val(obj['user'].userId);
				$("#userLeadId").val(obj['user'].parentId);
				
			}
		})
		
		$("#updataUser").window('open')

	}
	
	function deleteUser(obj){
		$.messager.confirm("消息框!", "您确定要删除吗?", function(r) {
			if (r) {
				$.messager.progress({
					title : "稍等哦！",
					msg : "正在努力加载中....",
					interval : 10
				});
				user.deleteUser(obj, {
					callback : function(data) {
						$.messager.progress('close');
						$.messager.alert('小提示!', data);
						window.location.reload()
					}
				});
			}
		})
	}
	
	function deleteAllUser(obj){
	$.messager.confirm("消息框!", "您确定要删除吗?", function(r) {
			if (r) {
				$.messager.progress({
					title : "稍等哦！",
					msg : "正在努力加载中....",
					interval : 10
				});
				var selects = DWRUtil.getValue("selectedss")
				user.deleteAll(selects, {
					callback : function(data) {
						$.messager.progress('close');
						$.messager.alert('小提示!', data);
						window.location.reload()
					}
				})
			}
		});

	}

	function allCheckBox() {

		if ($(":checkBox").prop("checked")) {
			$(":checkBox").prop({
				checked : true
			})
		} else {
			$(":checkBox").prop({
				checked : false
			})
		}
	}
</script>
</head>
<body>

 <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
	          <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" onclick="allCheckBox();" id="selectAll" > </td>
				      <td align="center"> 用户编号</td>
				      <td align="center"> 用户名称</td>
				      <td align="center"> 上级姓名</td>
				      <td align="center"> 查看详情</td>
				      <td align="center"> 更新用户</td>
				      <td align="center"> 注销用户</td>
			  </tr>
			  <s:iterator value="#request.users" id="u">
			  <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" name="selectedss" id="selectAll" value="${u.userId }"> </td>
				      <td align="center"> ${u.userId }</td>
				      <td align="center"> ${u.userName }</td>
				      <td align="center">
				        		 ${u.parentName} 
						</td>
				      <td align="center"> <a href="#" id="datils" onclick="detail(${u.userId})">查看详情</a></td>
				      <td align="center"> <a href="#" id="datils" onclick="updataUser(${u.userId})">更新用户</a></td>
				      <td align="center"> <a href="#" id="datils" onclick="deleteUser(${u.userId})">注销用户</a></td>
			  </tr>
			  </s:iterator>
			  
				  <tr style="padding:5px;font-size: 12px;">
				  <td colspan="12" align="center">
				      <s:if test="#request.page.currentPage">
				         <a href="user/user.action?currentPage=1">首页</a>
				         <a href="user/user.action?currentPage=${request.currentPage-1}">上一页</a>
				      </s:if>
				      <s:else>
				       首页
				       上一页
				      </s:else>
				      
				       <s:if test="#request.page.hasNextPage">
				         <a href="user/user.action?currentPage=${request.currentPage+1}">下一页</a>
				         <a href="user/user.action?currentPage=${request.page.totalPage }">尾页</a>
				      </s:if>
				      <s:else>
				       下一页
				       尾页
				      </s:else>
				      当前第${request.currentPage}页| 共${request.page.totalPage}页 | 共${request.page.totalCount}条记录。
				  </td>
			  </tr>
			  ${request.totalPage }
			  
	  </table>
		 <input type="button" value="添加" class="tj" onclick="window.location.href='${basePath}form/addUser.jsp'" />
	     <input type="button" class="tj" value="批量删除" onclick="deleteAllUser()">


     	<!-- 用户信息-->
		<div id="wsfe" class="easyui-window" title="用户详细" style="width:600px;height:400px"
		    data-options="iconCls:'icon-save',modal:true,closed:true">
		</div>

	    <div id="updataUser" class="easyui-window" title="用户详细"
		style="width:600px;height:400px"
		data-options="iconCls:'icon-save',modal:true,closed:true">
		
	<center>
		 <h1 align="center" style="font-family:华义彩云;"> 用户信息添加</h1>
			<form name="addUserInfoForm"  action="" method="post" target="main">
			      <table width="80%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				     <input type="hidden" id="userId" name="userId" value=""/>
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 用户名：</td>
				      <td><input type="text" name="userName" id="userName"  value=""> </td>
				     
				      <td bgcolor="#eeeeee"> 登陆名：</td>
				      <td><input type="text" name="userLoginName" id="userLoginName"  value=""> </td>
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
		
		
		</div>





</body>
</html>