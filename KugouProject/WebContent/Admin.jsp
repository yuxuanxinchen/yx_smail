<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��̨��½</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="Shortcut Icon" href="images/favicon.ico">
	
	
  </head>
  
  <body class="body2">
  <script type="text/javascript">
		function getOs() 
		{ 
		    var OsObject = ""; 
		   if(navigator.userAgent.indexOf("MSIE")>0) { 
		        return "MSIE";
		   } 
		   if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){ 
		        return "Firefox"; 
		   } 
		   if(isSafari=navigator.userAgent.indexOf("Safari")>0) { 
		        return "Safari"; 
		   }  
		   if(isCamino=navigator.userAgent.indexOf("Camino")>0){ 
		        return "Camino"; 
		   } 
		   if(isMozilla=navigator.userAgent.indexOf("Gecko")>0){ 
		        return "Gecko"; 
		   } 
		} 
		if(getOs() == "MSIE"){
			document.write("<link rel='stylesheet' type='text/css' href='css/IERegister.css'>");
		}
		if(getOs() == "Firefox"){
			document.write("<link rel='stylesheet' href='css/FFRegister.css' type='text/css'>");
		}
		if(getOs() == "Safari"){
			document.write("<link rel='stylesheet' href='css/GGRegister.css' type='text/css'>");
		}
		if(getOs() == "Camino"){
			alert("Camino");
		}
		if(getOs() == "Gecko"){
			alert("Gecko");
		}
	</script>
	<script type="text/javascript" src="js/jquery-1.9.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#back").click(function(){
				if($("#name").val() == null || $("#name").val() == ""){
					$(".backstage_2").css("display","block");
					$(".backstage_1_5").css("display","block");
				}else if($("#pwd").val() == null || $("#pwd").val() == ""){
					$(".backstage_2").css("display","block");
					$(".backstage_1_5").css("display","block");
				}else if($("#spanCode").html() != $(".backstage_1_4_2").val()){
					$(".backstage_2").css("display","block");
					$(".backstage_1_5").css("display","block");
				}else{
					$.ajax({dataType: "text",type: "POST",url: "AdminLogin",data: "name="+$("#name").val()+"&"+"pwd="+$("#pwd").val(),success: function(msg){
						if(msg.length > 0){
								location.href="Backstage.jsp";
							}else{
								$(".backstage_2").css("display","block");
								$(".backstage_1_5").css("display","block");
							}
						 }
					});
				}	
			});
		});
	</script>
 	 <img class="backstage" src="images/133T53031-0.jpg"></img>
   	<div class="backstage_1">
		  <div class="backstage_1_1">
		  	<h2>�ṷ������̨�����½ϵͳ</h2>
		  </div> 
		  <div class="backstage_1_2">
		  	<div class="backstage_1_2_1">
		  		<span>�û�����</span>
		  		<input type="text" id="name"/>
		  	</div>
		 	<div class="backstage_1_2_2">
		  		<span>��&nbsp;&nbsp;�룺</span>
		  		<input type="password" id="pwd"/>
		  	</div>
		  </div>	
		  <div class="backstage_1_3">
		  	<input type="button" value="" id="back" />
		  </div>
		  <script type="text/javascript" src="js/Admin.js"></script>
		  <div class="backstage_1_4">
		  	<span class="backstage_1_4_1">��֤�룺</span>
		  	<input class="backstage_1_4_2" type="text" maxlength="4"/>
		  	<span class="backstage_1_4_3" id="spanCode"></span>
		  	<a onclick="createCode()">�����壬��һ��</a>
		  </div>
		  <p class="backstage_1_5" style="display: none;">����Ƿ���½��</p>
		  <div class="backstage_2" style="display: none;"></div>
   	</div>
   
  </body>
</html>
