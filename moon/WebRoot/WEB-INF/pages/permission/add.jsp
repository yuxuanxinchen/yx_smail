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
	           <span>权限名:</span>
	           <input type="text" required="required" placeholder="请输入名称" maxlength="20" id="perName" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>相对路径:</span>
	           <input type="perName" placeholder="请输入路径" maxlength="50" id="relPath" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>模&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;块:</span>
	           <input type="perName" placeholder="请输入模块名" readonly="readonly" maxlength="50" id="modeName" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>上级ID:</span>
	           <input type="text" placeholder="请输入上级ID" maxlength="14" id="parentId" autofocus="autofocus" name="text"/>
	       </div>
	       <div>
	           <span>方法名:</span>
	           <input type="text" placeholder="请输入方法名" readonly="readonly" maxlength="100" id="methodName" autofocus="autofocus" name="text"/>
	       </div>
	        <div>
	           <span>描述:</span>
	           <input type="text" placeholder="请输入地址" maxlength="100" id="description" autofocus="autofocus" name="text"/>
	       </div>
	           <div>
	           <input id="button" onclick="yxAdmin.register(this)" type="button" value="提交" name="text"/>
	       	   <input type="reset" name="reset"  style="display:None"/>
	       </div>
	   </div>
	   </form>
		
		<script type="text/javascript">
		$(function(){
		   $("#relPath").keyup(function(){
		      var val = $(this).val();
		      var arr = val.split("/");
		      if(val==" "){
		      $("#modeName").val("")		
		      }else{
		        if(arr.length == 3 )
		      $("#modeName").val(arr[2])	
		      }
		      if(arr.length==4){
		      $("#methodName").val(arr[3])	
		      }
		  });
		});
		
		
		var yxAdmin = {
		    perName:null,
		    relPath:null,
		    modeName:null,
		    methodName:null,
		    parentId:null,
		    description:null,
		    timer:null,
		   register:function(obj){
		     if(yxAdmin.validate()){
		      $("#button").css({"background":"#999","color":"#141414"}).removeAttr("onclick").val("正在添加中....")
		     var param = {
							"name" : this.perName,
							"url" : this.relPath,
							"model" : this.modeName,
							"method" : this.methodName,
							"parentId":this.parentId,
							"description" : this.description,

						};
						clearTimeout(this.timer);
						timer = setTimeout(function() {
							$.ajax({
						url:"${basePath}admin/permission/save",
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
					this.perName = $("#perName").val();
					this.relPath = $("#relPath").val();
					this.methodName = $("#methodName").val();
					this.modeName = $("#modeName").val();
					this.parentId = $("#parentId").val();
					this.description = $("#description").val();
					if (isNotEmpty(this.perName) && isNotEmpty(this.relPath)
							&& isNotEmpty(this.modeName)
							&& isNotEmpty(this.parentId)
							&& isNotEmpty(this.description)
							&& isNotEmpty(this.methodName)) {
						return true;
					} else {
						loading("信息不能为空哦!", 4)
					}
				}
			}

		</script>
 </body>
</html>
