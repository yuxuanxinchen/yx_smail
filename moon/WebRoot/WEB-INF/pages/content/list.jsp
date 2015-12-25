<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/WEB-INF/common/common.jsp" %>
	<link rel="stylesheet" href="${basePath}resources/css/main.css"/>
	<script type="text/javascript" src="${basePath}resources/sg/tz_page.js"></script>
	
	
 </head>
 <body>
	<div class="wrap">
		<%@ include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			  <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="channel"> 首页 > 内容管理</div>
			<div class="cnt">
				<div class="tabwrap">
					
					<!--表格-->
					<table class="tztab">
						<caption>
							2015年度一周统计报表数据
							<div class="fr sbtn">
								<input type="text" class="fl" id="keywords" placeholder="搜索的关键字..."/><a href="javascript:void(0)" onclick="tzAdmin.search(this);" class="fl"><i class="fa fa-search "></i></a>
							</div>
						</caption>
						<!--头部
						<colgroup id="days">
							<col/>
							<col style="background:green;width:200px;"/>
							<col id="t"/>
						</colgroup>-->
						<thead>
							<tr>
							
							
							
							
								<th>主键</th>
								<th>标题 <span class="up"></span> <span class="down"></span></th>	
								<th>栏目</th>	
								<th>作者</th>	
								<th>创建时间</th>	
								<ps:permission model="content" method="top"><th>是否置顶</th></ps:permission>
								<ps:permission model="content" method="essence"><th>是否精华</th>	</ps:permission>
								<ps:permission model="content" method="delete"><th>删除状态</th></ps:permission>	
								<ps:permission model="content" method="comment"><th>是否评论</th>	</ps:permission>	
								<ps:permission model="content" method="send"><th>发布状态</th></ps:permission>		
								<ps:permission model="content" method="opator"><th>操作</th></ps:permission>
							</tr>
						</thead>
						<!--身体部-->
						<tbody id="tbody" data-model="content">
						     <tr>
						         <td  colspan="11" id="loading"></td>
						     </tr>
						</tbody>
					</table>
					  	 <div class="cpage"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
	function loading2(target,mark){
	     $.loading({target:$(target),mark:1}); 
     };

		var tzAdmin = {
			timer : null,
			ltimer:null,
			initPage : function(itemCount) {
				$(".cpage").tzPage(itemCount, {
					num_edge_entries : 1, //边缘页数
					num_display_entries : 4, //主体页数
					num_edge_entries : 5,
					current_page : 0,
					showGo : true,
					showSelect : true,
					items_per_page : 10, //每页显示X项
					prev_text : "前一页",
					next_text : "后一页",
					callback : function(pageNo, psize) {//回调函数
						tzAdmin.loadData(pageNo, psize);
					}
				});
			},
			loadData : function(pageNo, pageSize, callback) {
				var keyword = $("#keywords").val();
				var $this = this;
				var model = $("#tbody").data("model");
				clearInterval(this.ltimer);
				this.ltimer = setTimeout(function(){
				  $.ajax({
					type : "post",
					beforeSend : function() {
						loading2($("#tbody"), 4);
					},
					url : "${basePath}admin/" + model + "/template",
					data : {
						pageNo : pageNo * pageSize,
						pageSize : pageSize,
						keyword : keyword
					},
					success : function(data) {
						var $data = $(data);
						$("#tbody").html($data);
						var itemCount = $data.find("#itemCount").val();
						if(isNotEmpty(keyword))$this.highligter(keyword);
						if (callback)
							callback(itemCount);
					}
				});
				},300);
				
			},
			search : function(key) {
				var keyword = $("#keywords").val();
				
				if (isEmpty(keyword)) {
					loading("请输入关键字...", 3);
					$("#keywords").focus();
					return;
				}
				tzAdmin.loadData(0, 10, function(itemCount) {
					tzAdmin.initPage(itemCount);//分页加载一次吗
				});
			},
			op : function(obj) {
				var $obj = $(obj);
				var opid = $obj.data("opid");
				var mark = $obj.data("mark");
				var val = $obj.data("val");
				var params = {"order":" create_time "};
				params[mark] = val;
				params["id"] = opid;
				
				$obj.removeData();
				clearTimeout(this.timer);
				this.timer = setTimeout(function() {
					loading("请稍候数据执行中......", 3)
					$.ajax({
						type : "post",
						url : "${basePath}admin/content/update",
						data : params,
						success : function(data) {
							if (data == "SUCCESS") {
								$obj.attr({
									opid : opid,
									val : val == 0 ? 1 : 0
								}).removeClass().addClass(
										val == 0 ? "red" : "green").text(
										val == 0 ? "是" : "否");
							}
							;
						}
					});
				}, 300);
			},
			remove : function(obj) {
				$.tzConfirm({
					content : "您确定要删除吗?",
					title:"友情提示!",
					callback : function(ok) {
						if (ok) {
							var $obj = $(obj);
							var opid = $obj.data("opid");
							var params = {};
							clearTimeout(this.timer);
							var params = {};
							params["id"] = opid;
							this.timer = setTimeout(function() {
								loading("请稍候数据执行中......", 3)
								$.ajax({
									type : "post",
									url : "${basePath}admin/content/delete",
									data : params,
									success : function(data) {
										loading("成功啦......", 3)
										$obj.parents("tr").remove();
									}
								});
							}, 200);
						}
					}
				});
			},
			highligter:function(key){
			    if(isEmpty(key)){
			      return ;
			    }
			   $("#tbody").find(".keys").each(function(){
			        var text = $(this).text();
			       var nt =  text.replace(key,"<span class='red'>"+key+"</span>")
			       $(this).html(nt)
			   });
			}
		};

		
		
	
		$(function() {
			$(".tmui-tips").tmTip();
			tzAdmin.loadData(0, 10, function(itemCount) {
				tzAdmin.initPage(itemCount);
			});

			$("#keywords").keydown(function(e) {
				if (e.keyCode == 13) {
					    tzAdmin.loadData(0, 10, function(itemCount) {
						tzAdmin.initPage(itemCount);
					});
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