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


	function allChecked() {
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
	
	function addRoleInfo(){
	    var ids = DWRUtil.getValue("menuId");
	    var roleName = $("#roleName").val();
	     $.messager.progress({
	     title:"稍等哦！",
	     msg:"正在努力加载中....",
	     interval:10
	  }); 
	    roleInfo.addRole(ids,roleName,{
	      callback:function(data){
	        if(data!="SUCCESS"){
	         $.messager.progress('close');
	        }else{
	        $.messager.progress('close');
	        window.opener.document.location.reload();
	        }
	         $.messager.alert('小提示!','添加完成啦');
	      }
	    });
	}
	
	
	
	
</script>
</head>

<body>
	<h1 align="center" style="font-family:华义彩云;">角色添加</h1>
  <center>
			<form name="addRoleInfoForm"   action="addCustomerInfo.action" method="post" target="main">
			      <table width="35%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 角色名称</td>
				      <td align="left"><input type="text" name="roleName" id="roleName"  value=""> </td>
				    </tr>
				    
				     <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 角色权限</td>
				      <td align="left">
					      <input type="checkbox" onclick="allChecked();" id="selectAll" > 全选<br>
				     	 
				     	  <s:iterator value="#request.menuInfos" id="menu">
				     	  <input type="checkBox" name="menuId" value="${menu.menuId }"/>${menu.menuName }<br />
				     	  </s:iterator>
				      
				      </td>
				    </tr>  
			      </table>
			      <p align="center">
			      <input type="button" class="tj" value="提交" onclick="addRoleInfo();">
			      <input type="reset" class="tj" value="重置">
			      </p>
			</form>
     </center>
	
</body>
</html>

