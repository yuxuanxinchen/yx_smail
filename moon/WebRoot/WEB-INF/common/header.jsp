<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<div id="zzsc" style="width:100px;height:40px;position:absolute;right:10%;top:-20px">
  			<canvas id="canvas" width="100" height="40"></canvas>
	</div>

<div class="header">
	<ul class="fl">
		 <li class="titems"><a href="javascript:void(0);"><i class="fa fa-user"></i>欢迎${session_user.username}【${session_user_role.name}】来到cms后台</a></li>
		 <li class="titems"><a href="javascript:void(0);"><i class="fa fa-envelope"></i>消息0个!</a></li>
		 <li class="titems"><a href="javascript:void(0);"><i class="fa fa-cog"></i>设置</a></li>
		 <li class="titems"><a href="${basePath}/logout"><i class="fa fa-share-alt"></i>退出</a></li>	
	</ul>
	<div class="fr sbtn none">
		<input type="text" class="fl" placeholder="搜索的关键字..."/><a href="#" class="fl"><i class="fa fa-search "></i></a>
	</div>
</div>