<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>页面后台</title>
	<meta http-equiv="pragma" role="no-cache">
	<meta http-equiv="cache-control" role="no-cache">
	<meta http-equiv="expires" role="0">    
	<meta http-equiv="keywords" role="keyword1,keyword2,keyword3">
	<meta http-equiv="description" role="This is my page">
	<%@include file="/WEB-INF/common/common.jsp" %>
	<!-- 引入树的js和css -->
	<link rel="stylesheet" href="${basePath}resources/sg/tree/tm_tree.css"/>
	<script type="text/javascript" src="${basePath}resources/sg/tree/tm_tree.js"></script>
	<style type="text/css">#permissiontree{height:420px;overflow-y: auto;} .tree li a, .tree li span{color:#fff}</style>
	
 </head>
 <body>
 	<div id="permissiontree"></div>
 	<script type="text/javascript">
 	
 	var permissions = "";
 	$(function() {
			initPermissionTree();
			function initPermissionTree() {
				yxAjax.r({
					url : "${basePath}admin/permission/root",
					callback : function(data) {
					var root  = data.root;
					var children =data.children;
						$("#permissiontree").tmTree({
							root : data.root,
							children : data.children,
							"type" : "checkbox",
							onclick : function($obj,data) {
							permissions = data.checkArr.opid;
							}
						});
					}
				});
			}
			;

			
			$("#permissiontree").tmTree({
					root : tree.root,
					children : tree.children,
					"type" : "checkbox",
					success : function(data) {
						var $this = $(this);
						$.tzConfirm({
							callback : function(ok) {
								if (ok) {
									$this.closest("li").remove();
								}
							}
						});
						if (callback)
							callback();
					}
				});
			});

			function saveRolePermission(roleId, $dialog, opts) {
				if (isEmpty(permissions)) {
					loading("请选择一个权限进行操作..", 4);
					return;
				}
				var datas = {
						"rid" : roleId,
						"permissions" : permissions
					}
				
				$.ajax({
					type : "post",
					url : "${basePath}/admin/role/saveRolePermission",
					data:datas,
					success : function(data) {
						alert(data)
					}
				});
			}
		</script>	
 </body>
</html>
