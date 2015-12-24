<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>后台管理</title>
	<meta http-equiv="pragma" permission="no-cache">
	<meta http-equiv="cache-control" permission="no-cache">
	<meta http-equiv="expires" permission="0">    
	<meta http-equiv="keywords" permission="keyword1,keyword2,keyword3">
	<meta http-equiv="description" permission="This is my page">
	<%@include file="/WEB-INF/common/common.jsp" %>
	<script type="text/javascript" src="${basePath}resources/sg/tz_page.js"></script>
	<!-- 引入树的js和css -->
	<link rel="stylesheet" href="${basePath}resources/sg/tree/tm_tree.css"/>
	<script type="text/javascript" src="${basePath}resources/sg/tree/tm_tree.js"></script>
 </head>
 <body>
	<div class="wrap">
		<!-- left页面 -->
		<%@include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			 <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="content"> 首页 > 权限管理</div>
			<div class="cnt">
				<div class="tabwrap">
					<div id="permissiontree"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">

		$(function() {
			initPermissionTree();
			function initPermissionTree() {
				yxAjax.r({
					url : "${basePath}admin/permission/root",
					callback : function(data) {
						$("#permissiontree").tmTree({
							root : data.root,
							children : data.children,
							"type" : "checkbox",
							onclick : function(data) {

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
				onclick : function(data) {
				}
			});

			$(".nav").find("li.items").find("a").click(
					function() {
						var len = $(this).next().length;
						if (len > 0) {
							$(this).next().stop(true, true).slideToggle().end()
									.parents("li").addClass("active")
									.siblings().removeClass("active")
									.find("ul").slideUp("slow");
						}
					});
		});
	</script>
 </body>
</html>