<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="slider">
<div class="logo">
	<a href="#"><img src="${basePath}resources/images/logo.png"/></a>
	</div>
	<div class="nav">
		<ul>
		
	       	<yx:if test='${yx:indexOf(pageContext.request.requestURI,"content/list")!=-1}'>
			    <yx:then>
			    	 <li class="items active"> <a href="javascript:void(0)"><i class="fa fa-home"></i>内容管理</a></li>
			    </yx:then>
			    <yx:else>
			         <li class="items"> <a href="${basePath}admin/content/list"><i class="fa fa-home"></i>内容管理</a></li>
			    </yx:else>
			</yx:if>
             
			 <li class="items"><a href="${basePath}admin/user/list"><i class="fa fa-signal"></i>用户管理</a></li>
			 <li class="items"><a href="${basePath}admin/music/list"><i class="fa fa-inbox"></i>音乐管理</a></li>
			 <li class="items"><a href="${basePath}admin/stat/list"><i class="fa fa-th"></i>统计报表</a></li>
			 <li class="items"><a href="${basePath}admin/gather/list"><i class="fa fa-send"></i>爬虫采集</a></li>
			 <li class="items">
				<a href="javascript:void(0);"><i class="fa fa-th-list"></i>表单</a>
				<ul>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-inbox"></i>区块</a></li>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-th"></i>表格</a></li>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-send"></i>其他</a></li>
				</ul>
				<span class="numicon c5">3</span>
			 </li>
			 <li class="items">
				<a href="javascript:void(0);"><i class="fa fa-tint"></i>按钮组</a>
				<ul>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-inbox"></i>区块</a></li>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-th"></i>表格</a></li>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-send"></i>其他</a></li>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-th"></i>表格</a></li>
					 <li class="citems"><a href="javascript:void(0);"><i class="fa fa-send"></i>其他</a></li>
				</ul>
				<span class="numicon c1">5</span>
			 </li>
			 <li class="items"><a href="javascript:void(0);"><i class="fa fa-pencil"></i>元素</a></li>
			 <li class="items"><a href="javascript:void(0);"><i class="fa fa-star"></i>Addons 5</a></li>
			 <li class="items"><a href="javascript:void(0);"><i class="fa fa-file-o"></i>Error</a></li>
		</ul>
	</div>
</div>