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
	<style type="text/css">
	    #addUser{right:10px;top:55px}
	    #addUser:hover{border:1px solid #141414;color:green;font-weight:600;box-shadow:3px 3px 3px #141414;}
	</style>
 </head>
 <body>
	<div class="wrap">
		<!-- left页面 -->
		<%@include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			 <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="content"> 首页 > 权限管理</div>
			<div class="cnt">
			<a href="javascript:void(0)" onclick="openAdd(this)" id="addUser">添加</a>
				<div class="tabwrap">
					<div id="permissiontree"></div>
				</div>
				
				<div class="cnt">
				<div class="tabwrap">
					<!--表格-->
					<table class="tztab">
						<caption>
							权限详细列表
							<div class="fr sbtn">
								<input type="text" class="fl" id="keywords" placeholder="搜索的关键字..."/><a href="javascript:void(0)" onclick="tzAdmin.search(this);" class="fl"><i class="fa fa-search "></i></a>
							</div>
						</caption>
						<thead>
							<tr> 
								<th>ID</th>	
								<th>权限名 <span class="up"></span> <span class="down"></span></th>	
								<th>添加时间</th>	
								<th>相对URL</th>	
								<th>模块名</th>	
								<th>上级ID</th>	
								<th>方法名</th>	
								<th>用户</th>	
								<th>描述</th>	
								<ps:permission model="permission" method="opator"><th>操作</th></ps:permission>	
							</tr>
						</thead>
						<!--身体部-->
						<tbody id="tbody" data-model="content">
						     <tr>
						         <td  colspan="11" id="loading"></td>
						     </tr>
						</tbody>
					</table>
					  	 <div class="cpage" style='display:block'></div>
				</div>
			</div>
				
				
			</div>
		</div>
	</div>
	<script type="text/javascript">

	 var pageMax = 0;
	 var keywords = "";
	 function openAdd(obj){
	      $.tzIframe({width:400,height:450,title:"添加权限!",drag:false,content:"${basePath}admin/permission/add",
	      callback:function(iframe,$dialog,opts){
	      initData();
	      }});
	   }
	   
	   
	   function initData(){
	    yxAjax.r({
             url:"${basePath}admin/permission/count",
             callback:function(data){
             pageMax = data;
              tzAdmin.initPage(data);
			  tempData(0,data);
             }
          })
	   }

		$(function() {
		 
		initData();
		
		$("#keywords").keydown(function(e) {
				if (e.keyCode == 13) {
					tempData(0,pageMax,$(this).val());
				}
				
			});
		
			initPermissionTree();
			function initPermissionTree() {
				yxAjax.r({
					url : "${basePath}admin/permission/root",
					callback : function(data) {
						$("#permissiontree").tmTree({
							root : data.root,
							children : data.children,
							"type" : "checkbox",
							"expandCount":0,
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
				"expandCount":0,
				"type" : "checkbox",
				"expand":true,
				"rightMenu":true,
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
		
		
		function tempData(pageNo,pageSize,keywords){
		   yxAjax.r({
		     url:"${basePath}admin/permission/template",
		     callback:function(data){
		      
		      	perseData(data);
		     }
		   },{pageNo : pageNo * pageSize ,pageSize :  pageSize ,keyword:keywords==""?"":keywords});
		}
		
		
	
	  function perseData(data){
	  var html = "";
         for(var k in data){
           if(data[k].id){
              html +="<tr><td>"+data[k].id+"</td>"+  
              "<td>"+data[k].name+"</td>"+
              "<td>"+yxSimpleDate(new Date(data[k].createTime),"Y-M-d")+"</td>"+
              "<td>"+data[k].url+"</td>"+
              "<td>"+data[k].model+"</td>"+
              "<td>"+data[k].parentId+"</td>"+
              "<td>"+data[k].method+"</td>"+
              "<td>"+data[k].adminUserName+"</td>"+
              "<td>"+data[k].description+"</td>"+
              "<ps:permission model='permission' method='opator'><td><a href='javascript:void(0)' class='red' data-opid='"+data[k].id+"' onclick='tzAdmin.remove(this)'>删除</a></td></tr></ps:permission>" ;       
           }
          } 
         	 $("#tbody").empty();
          $("#tbody").html(html);
          
      }
		
		var tzAdmin = {
			initPage : function(itemCount) {
				$(".cpage").tzPage(itemCount, {
					num_edge_entries : 1, //边缘页数
					num_display_entries : 1, //主体页数
					num_edge_entries : 1,
					current_page : 0,
					showGo : true,
					showSelect : true,
					items_per_page : 1, //每页显示X项
					prev_text : "前一页",
					next_text : "后一页",
					callback : function(pageNo, psize) {//回调函数
						tempData(pageNo,psize);
						
					}
				});
			},
			remove:function(obj){
			 var $this = $(obj);
			  $.tzConfirm({
					content : "您确定要删除吗?",
					title:"友情提示!",
					callback : function(ok) {
						if (ok) {
						var opid = $this.data("opid");
						loading("删除成功啦!",4);
						$.ajax({
						   type:"post",
						   url:"${basePath}admin/permission/delete",
						   data:{"id":opid},
						   success:function(data){
						     $this.parents("tr").remove();
							   loading("删除成功啦!",4);
						   }
						})
						}
					}
					});
					}
              };
              
		
	
		
	</script>
 </body>
</html>
