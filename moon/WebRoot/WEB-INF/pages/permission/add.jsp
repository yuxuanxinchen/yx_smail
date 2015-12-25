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
	     #box{width:300px;height:400px;margin:40px;box-shadow:3px 4px 5px #141515}
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
	           <input type="text" required="required" placeholder="请输入用户名" maxlength="20" id="username" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</span>
	           <input type="password" placeholder="请输入密码" maxlength="20" id="password" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:</span>
	           <input type="email" placeholder="请输入登录邮箱" maxlength="50" id="email" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>手机号码:</span>
	           <input type="text" placeholder="请输入手机号码" maxlength="14" id="phoneNumber" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:</span>
	           <input type="text" placeholder="请输入地址" maxlength="100" id="address" autofocus="autofocus" name="text"/>
	       </div>
	           <div>
	           <input id="button" onclick="yxAdmin.register(this)" type="button" value="提交" name="text"/>
	       	   <input type="reset" name="reset"  style="display:None"/>
	       </div>
	   </div>
	   </form>
		
		<script type="text/javascript">
		var yxAdmin = {
		    username:null,
		    password:null,
		    email:null,
		    phoneNumber:null,
		    address:null,
		    timer:null,
		   register:function(obj){
		     if(yxAdmin.validate()){
		      $("#button").css({"background":"#999","color":"#141414"}).removeAttr("onclick").val("正在添加中....")
		     var param = {
							"username" : this.username,
							"password" : this.password,
							"email" : this.email,
							"telephone" : this.phoneNumber,
							"address" : this.address,

						};
						clearTimeout(this.timer);
						timer = setTimeout(function() {
							$.ajax({
						url:"${basePath}admin/adminuser/addUser",
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
					this.username = $("#username").val();
					this.password = $("#password").val();
					this.email = $("#email").val();
					this.phoneNumber = $("#phoneNumber").val();
					this.address = $("#address").val();
					if (isNotEmpty(this.username) && isNotEmpty(this.password)
							&& isNotEmpty(this.email)
							&& isNotEmpty(this.phoneNumber)
							&& isNotEmpty(this.address)) {
						return true;
					} else {
						loading("信息不能为空哦!", 4)
					}
				}
			}

		</script>
 </body>
</html>
