<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp" %>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <%@ include file="/WEB-INF/common/common.jsp" %>
     <style type="text/css">
        body{font-size:14ppx;font-family: "微软雅黑"}
        #box{width:400px;height:200px;background: gray;margin:100px auto;position: relative; color: #fff; font-size: 30px; text-align: center;line-height: 150px;}
        #prog{    width: 0px;height: 40px; color: #fff; background: blue;position: absolute; bottom: 0px;left: 0px; text-align: center;line-height: 40px;font-size: 20px}
        
     </style>

  </head>
  
  
  <body>
   
   
     <div id="box">
        <h1>文件拖放在此区域</h1>
	     <div id="prog"></div>
     </div>
     
  
      <form action="${basePath }admin/uplod/fileupload" method="post" enctype="multipart/form-data">
          <input  type="file" name="doc"/>
          <input type="submit" value="提交哦">
      </form>    
   
  <script type="text/javascript">
  
    window.onload = function(){
     
			//鼠标拖离事件
		  	document.ondragleave = function(e){
		  		e.preventDefault();//阻止浏览器的默认行为
		  	};
		  	
		  	//拖放后事件
		  	document.ondrop = function(e){
		  		e.preventDefault();//阻止浏览器的默认行为
		  	};
		  	//鼠标拖动按下去的时候
		  	document.ondragover = function(e){
		  		e.preventDefault();
		  	};
		  	//鼠标拖动按下去的时候
		  	document.ondragenter = function(e){
		  		e.preventDefault();
		  	};
		  	
		  	var prog = document.getElementById("prog");
		  	
		  	function yxupload(){
		  		var fileboxDom = document.getElementById("box");
		  		 fileboxDom.addEventListener("dragenter",function(e){
		  			fileboxDom.style.background="green";
		  		},false);
		  		
		  		fileboxDom.addEventListener("dragleave",function(e){
		  			fileboxDom.style.background="gray";
		  		},false);
		  		
		  		fileboxDom.addEventListener("drop",function(e){
		  			fileboxDom.style.background="";
		  			//file是一个文件列表
		  			var files = e.dataTransfer.files;
		  			//取第一张图片
		  			var file =files[0];
		  			//文件的名称
		  			var name = file.name;
		  			//file.name:文件名称
		  			//file.size:文件大小
		  			//file.type:文件类型
// 		  			if(name.indexOf("jpg")==-1){
// 		  				alert("请选择图片....");
// 		  				return;
// 		  			}
					 if(!file.size>5242880){
					    alert("文件太大")
					    return;
					}
		  			
		  			//没错通过ajax
		  			var xhr = new XMLHttpRequest();
		  			xhr.open("post","http://localhost:8011/moon/admin/uplod/fileupload",true);
		  			xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
		  			//设置文件数据
		  			var fd = new FormData();
		  			fd.append("doc",file);
			  		xhr.upload.addEventListener("progress",function(evt){
			  			if(evt.lengthComputable){
							var percent = event.loaded / event.total;
							if((percent*100)*(400/100)>20){
							    prog.innerText= Math.round((percent*100))+"%";
							}
							prog.style.width=(percent*100)*(400/100)+"px";
							console.log(percent*(100/400)+"px")
						}
			  		},true);
		  			xhr.send(fd);
		  			xhr.onreadystatechange = function(){
		  				if(xhr.readyState==4 && xhr.status == 200){
		  					var data = $.trim(xhr.responseText);
// 		  					var img = document.createElement("img");
// 		  					img.src= "${basePath}"+eval('('+data+')').url;
// 		  					document.getElementsByName("body").appendChild(img);
		  				}
		  			};
		  		}, false);
		  	};
		  	yxupload();
		  	};
		  	
		</script>

  </body>
</html>
