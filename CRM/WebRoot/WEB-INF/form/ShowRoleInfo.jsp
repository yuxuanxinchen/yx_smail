<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>角色信息</title>
<link href="<%=basePath%>/css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
	<script type='text/javascript'
	src='${basePath }/dwr/interface/roleInfo.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/engine.js'></script>
<script type='text/javascript' src='${basePath }/dwr/util.js'></script>
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
      
					function deleteCustomerInfo(obj) {
						var isOk = window.confirm("是否确认删除该记录");
						if (isOk) {
							customerInfo.deleteCustomerInfo(obj, {
								callback : function(data) {
									alert(data);
									location.reload();
								}
							});
						}
					}

					function alldelete() {
						var isOk = window.confirm("是否批量删除!");
						if (isOk) {
							var selects = DWRUtil.getValue("selected")
							customerInfo.deleteCheckedAllCustomerInfo(selects,
									{
										callback : function(data) {
											window.location.reload();
											alert(data);

										}
									});
						}
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


					function deleteRoleInfo(obj) {
					
					 $.messager.confirm("消息框!","您确定要删除吗?",function(r){
                         if(r){
                         $.messager.progress({
								title : "稍等哦！",
								msg : "正在努力加载中....",
								interval : 10
							});
							roleInfo.deleteRole(obj, {
								callback : function(data) {
								   
									$.messager.progress('close');
									$.messager.alert('小提示!', '删除完啦');
									 window.location.reload()
								}
							})
                         }
					});
					}
					
					
	
					function alldelete() {
					$.messager.confirm("消息框!", "您确定要删除吗?", function(r) {
							if (r) {
								$.messager.progress({
									title : "稍等哦！",
									msg : "正在努力加载中....",
									interval : 10
								});
								var selects = DWRUtil.getValue("selectedss")
								roleInfo.deleteBatch(selects, {
									callback : function(data) {
										$.messager.progress('close');
										$.messager.alert('小提示!', '删除完啦');
										window.location.reload()
									}
								})
							}
						});

					}
				</script>
    <style type="text/css">
       #datils{width:50px;height:30px;background:#141414;color:#fff;cursor:pointer;}
    </style>
  </head>
  <body> 
  <h2 style="text-align:center">客户信息</h2>
<!-- 	  <form action="role/searchRoleInfo.action" method="post"> -->
<!-- 		  <table width="100%" height="23" border="0" cellpadding="0" cellspacing="0"> -->
<!-- 		         <tr> -->
<!-- 			         <td colspan="2" width="100%" align="center"> -->
<!-- 			              请输入查询条件： -->
<!-- 				         <select name="type" class="textarea"> -->
<!-- 		                  <option value="" > 选择</option> -->
<!-- 			              <option value="roleId" ${roleId }>角色编号</option> -->
<!-- 			              <option value="roleName" ${roleName }>角色名称</option> -->
<!-- 				         </select> -->
<!-- 				         <input name="key"  type="text" class="txt_grey" size="24" value="${key}"> -->
<!-- 				         <input type="submit" class="subt_grey" value="搜索"> -->
<!-- 			         </td> -->
<!-- 		         </tr> -->
<!-- 		  </table> -->
<!-- 	  </form> -->
	  <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
	          <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox"  name="selected" onclick="allCheckBox();" id="selectAll" ></td>
				      <td align="center"> 编号</td>
				      <td align="center"> 角色名称</td>
				      <td align="center"> 查看权限</td>
				      <td align="center"> 更新角色</td>
				      <td align="center"> 注销角色</td>
			  </tr>
			 <s:iterator value="#request.roleInfos" id="role">
			  <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" value="${ role.roleId}" name="selectedss"  id="selectAll" ></td>
				      <td align="center"> ${role.roleId }</td>
				      <td align="center"> ${role.roleName }</td>
				      <td align="center"> <a id="datils" href="${basePath}role/roleRelationInfo.action?roleId=${role.roleId }" >查看权限</a></td>
				      <td align="center"> <a id="datils" href="${basePath}role/updataRoleInfo.action?roleId=${role.roleId }">编辑</a></td>
				      <td align="center"> <a id="datils" onclick="deleteRoleInfo(${role.roleId});">删除</a></td>
			  </tr>
			  </s:iterator>
				  <tr style="padding:5px;font-size: 12px;">
				  <td colspan="12" align="center">
				      <s:if test="#request.page.currentPage">
				         <a href="role/roleInfo.action?currentPage=1">首页</a>
				         <a href="role/roleInfo.action?currentPage=${request.currentPage-1}">上一页</a>
				      </s:if>
				      <s:else>
				       首页
				       上一页
				      </s:else>
				      
				       <s:if test="#request.page.hasNextPage">
				         <a href="role/roleInfo.action?currentPage=${request.currentPage+1}">下一页</a>
				         <a href="role/roleInfo.action?currentPage=${request.page.totalPage }">尾页</a>
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
		 <input type="button" value="添加" onclick="window.open('${basePath}menu/menuInfo.action');" style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>
		 <input type="button" value="批量删除" onclick="alldelete()" style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>



	<!-- 添加联系人弹出窗口 -->
	<div id="wsd" class="easyui-window" title="添加联系人"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width:600px;height:400px;padding:10px;">
			<table align="center" width="100%" height="48" border="0">
              <tr>
                  <td>角色</td>
              </tr>
               <tr>
                  <td>角色名称</td>
              </tr>
               <tr>
                  <td>角色权限</td>
              </tr>
              
              
              
          </table>
	</div>


 </body>
</html>

	