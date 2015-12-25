<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="slider">
<div class="logo">
	<a href="#"><img src="${basePath}resources/images/logo.png"/></a>
	</div>
	<div class="nav">
		<ul>
		     
		   <!-- 查看内容权限控制 -->
		       	<yx:if test='${yx:indexOf(pageContext.request.requestURI,"content/list")!=-1}'>
				    <yx:then>
				    	 <li class="items active"> <a href="javascript:void(0)"><i class="fa fa-home"></i>内容管理</a></li>
				    </yx:then>
				    <yx:else>
				         <li class="items"> <a href="${basePath}admin/content/list"><i class="fa fa-home"></i>内容管理</a></li>
				    </yx:else>
				</yx:if>
			
			<!-- 日记统计权限控制 -->
			<ps:permission model="adminstat" method="list">
				  <yx:if test="${yx:indexOf(pageContext.request.requestURI,'adminstat')!=-1}">
					<yx:then>
						<li class="items active"><a href="javascript:void(0);"><i class="fa fa-home "></i>日记统计</a>
						<ul style="display:block">
						 <ps:permission model="stat" method="content">
							 <yx:if test="${yx:indexOf(pageContext.request.requestURI,'adminstat/contentList')!=-1}">
							 	<yx:then><li class="citems active"><a href="javascript:void(0);"><i class="fa fa-area-chart"></i>内容统计</a></li></yx:then>
							 	<yx:else><li class="citems"><a href="${basePath}admin/adminstat/contentList"><i class="fa fa-area-chart"></i>内容统计</a></li></yx:else>
							 </yx:if>
							 </ps:permission>
							 <ps:permission model="stat" method="userregister">
							  <yx:if test="${yx:indexOf(pageContext.request.requestURI,'adminstat/userList')!=-1}">
							 	<yx:then><li class="citems active"><a href="javascript:void(0);"><i class="fa fa-bar-chart"></i>用户 统计</a></li></yx:then>
							 	<yx:else><li class="citems"><a href="${basePath}admin/adminstat/userList"><i class="fa fa-bar-chart"></i>用户 统计</a></li></yx:else>
							 </yx:if>
							 </ps:permission>
							 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-bar-chart-o"></i>日记统计</a></li>
						</ul>
					</li></yx:then>
					<yx:else>
						<li class="items"><a href="${basePath}admin/adminstat/list"><i class="fa fa-home "></i>日记统计</a></li>
					</yx:else>
				 </yx:if>
			 </ps:permission>
			 
			 
			 <!-- 权限管理控制 -->
			<ps:permission model="adminuser" method="list">
				<yx:if test='${yx:indexOf(pageContext.request.requestURI,"adminuser/list")!=-1}'>
				    <yx:then>
				    	 <li class="items active"> <a href="javascript:void(0)"><i class="fa fa-home"></i>用户管理</a></li>
				    </yx:then>
				 <yx:else>
				         <li class="items"><a href="${basePath}admin/adminuser/list"><i class="fa fa-signal"></i>用户管理</a></li>
				    </yx:else>
				</yx:if>
			</ps:permission>
			
			 <!-- 权限管理控制 -->
			<ps:permission model="permission" method="list">
				<yx:if test='${yx:indexOf(pageContext.request.requestURI,"permission/list")!=-1}'>
				    <yx:then>
				    	 <li class="items active"> <a href="javascript:void(0)"><i class="fa fa-home"></i>权限管理</a></li>
				    </yx:then>
				 <yx:else>
				         <li class="items"><a href="${basePath}admin/permission/list"><i class="fa fa-signal"></i>权限管理</a></li>
				    </yx:else>
				</yx:if>
			</ps:permission>
			
			
			<!-- 用户角色权限控制 -->
			<ps:permission model="role" method="list">
				<yx:if test='${yx:indexOf(pageContext.request.requestURI,"role/list")!=-1}'>
				    <yx:then>
				    	 <li class="items active"> <a href="javascript:void(0)"><i class="fa fa-home"></i>角色管理</a></li>
				    </yx:then>
				 <yx:else>
				         <li class="items"><a href="${basePath}admin/role/list"><i class="fa fa-signal"></i>角色管理</a></li>
				    </yx:else>
				</yx:if>
			</ps:permission>
			
			
			<!-- 音乐权限控制 -->
			<ps:permission model="music" method="list">
				 <li class="items"><a href="${basePath}admin/music/list"><i class="fa fa-inbox"></i>音乐管理</a></li>
			</ps:permission>
			
			<!-- 统计报表 -->
			<ps:permission model="census" method="list">
				<yx:if test='${yx:indexOf(pageContext.request.requestURI,"census/list")!=-1}'>
				    <yx:then>
				    	 <li class="items active"> <a href="javascript:void(0)"><i class="fa fa-home"></i>统计报表</a></li>
				    </yx:then>
				 <yx:else>
				         <li class="items"><a href="${basePath}admin/census/list"><i class="fa fa-signal"></i>统计报表</a></li>
				    </yx:else>
				</yx:if>
			</ps:permission>
			
			 
			 <ps:permission model="xx" method="xx">
				 <li class="items"><a href="${basePath}admin/gather/list"><i class="fa fa-send"></i>爬虫采集</a></li>
			</ps:permission>
			
			<!-- 暂无 -->
<!-- 			 <ps:permission model="xx" method="xx"> -->
<!-- 				 <li class="items"> -->
<!-- 					<a href="javascript:void(0);"><i class="fa fa-th-list"></i>表单</a> -->
<!-- 					<ul> -->
<!-- 						 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-inbox"></i>区块</a></li> -->
<!-- 						 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-th"></i>表格</a></li> -->
<!-- 						 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-send"></i>其他</a></li> -->
<!-- 					</ul> -->
<!-- 					<span class="numicon c5">3</span> -->
<!-- 				 </li> -->
			</ps:permission>
			
			<!--暂无  -->
<!-- 			 <ps:permission model="xx" method="xx"> -->
<!-- 					 <li class="items"> -->
<!-- 						<a href="javascript:void(0);"><i class="fa fa-tint"></i>按钮组</a> -->
<!-- 						<ul> -->
<!-- 							 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-inbox"></i>区块</a></li> -->
<!-- 							 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-th"></i>表格</a></li> -->
<!-- 							 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-send"></i>其他</a></li> -->
<!-- 							 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-th"></i>表格</a></li> -->
<!-- 							 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-send"></i>其他</a></li> -->
<!-- 						</ul> -->
<!-- 						<span class="numicon c1">5</span> -->
<!-- 					 </li> -->
<!-- 					 <li class="items"><a href="javascript:void(0);"><i class="fa fa-pencil"></i>元素</a></li> -->
<!-- 					 <li class="items"><a href="javascript:void(0);"><i class="fa fa-star"></i>Addons 5</a></li> -->
<!-- 					 <li class="items"><a href="javascript:void(0);"><i class="fa fa-file-o"></i>Error</a></li> -->
<!-- 				</ul> -->
			</ps:permission>
	</div>
</div>