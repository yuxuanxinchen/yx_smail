<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>后台管理</title>
	<meta http-equiv="pragma" adminuser="no-cache">
	<meta http-equiv="cache-control" adminuser="no-cache">
	<meta http-equiv="expires" adminuser="0">    
	<meta http-equiv="keywords" adminuser="keyword1,keyword2,keyword3">
	<meta http-equiv="description" adminuser="This is my page">
	<%@include file="/WEB-INF/common/common.jsp" %>
	<script type="text/javascript" src="${basePath}resources/sg/tz_page.js"></script>
	<style type="text/css">
	     body{font-family:"微软雅黑"}
	     #box{width:300px;height:150px;margin:40px;box-shadow:3px 4px 5px #141515}
	     #box div{margin-top:22px;text-align: center;}
	     #box div span{width:80px;height:20px;display:inline-block;text-align:center;font-size:14px;color:#888}
		 #box div input{color:#fff;background:#141414;border-radius:2px;width:200px;height:30px;border:1px solid #ccc;padding-left:10px;font-size:14px;font-weight:600}
	     #box div input:hover{border:1px solid green;transition:all .5s ease-in .1s;border-radius:5px}
	     .yxs{border:1px solid green;transition:all .5s ease-in .1s;border-radius:5px}
	     #box div #button{background:#141414;color:#fff;font-size:15px;font-family:"微软雅黑"}
	     #box div #button:hover{background:green}
	</style>
 </head>
 <body>
      <form>
	   <div id="box">
	       <div>
	           <span>用 户 名:</span>
	           <input type="text" required="required" placeholder="请输入角色名称" maxlength="20" id="name" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述:</span>
	           <input type="text" placeholder="描述一下哦" maxlength="20" id="desc" autofocus="autofocus" name="text"/>
	       </div>
	         <div>
	           <input id="button" onclick="yxAdmin.register(this)" type="button" value="提交" name="text"/>
	       	   <input type="reset" name="reset"  style="display:None"/>
	       </div>
	        </div>
	       
	   </form>
		
		<script type="text/javascript">
		var yxAdmin = {
		    name:null,
		    desc:null,
		    timer:null,
		   register:function(obj){
		     if(yxAdmin.validate()){
		      $("#button").css({"background":"#999","color":"#141414"}).removeAttr("onclick").val("正在添加中....")
		     var param = {
							"name" : this.name,
							"description" : this.desc,

						};
						clearTimeout(this.timer);
						timer = setTimeout(function() {
							$.ajax({
						url:"${basePath}admin/role/addRole",
						type:"post",
						data:param,
						success:function(data){
						$("#button").css({"background":"#141414","color":"#fff"}).attr("onclick","yxAdmin.register(this)").val("添加")
						      $("input[type=reset]").trigger("click");
						   loading("恭喜您，添加成功啦");
						  }
						  });
						}, 200)
					}
				},
				validate : function() {
					this.name = $("#name").val();
					this.desc = $("#desc").val();
					if (isNotEmpty(this.name) && isNotEmpty(this.desc)) {
						return true;
					} else {
						loading("信息不能为空哦!", 4)
					}
				}
			}

		</script>
 </body>
</html>
