<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ע���û�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="Shortcut Icon" href="images/favicon.ico">
	
	
  </head>
  
  <body class="body1">
	<script type="text/javascript" src="js/jquery-1.9.js"></script>
	<script type="text/javascript" src="js/Abandon.js"></script>
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
	<!-- Logo -->
	<div class="logo">
		<div class="logo_1"></div>
		<div class="logo_2">
			<form action="SearchSong" method="post">
			<span>
				<input id="logo1" type="text" value="�Ѹ��֡�����" name="show"class="logo_2_1"/>
				<input type="submit" value=""class="logo_2_2"/>
			</span>
			</form>
		</div>
		<div class="logo_3">
			<div class = "logo_3_1">
				<span class="logo_3_1_0">�û�<a href="#" title="�����ȥ��ȫ����" style="color:red">${name}</a>�Ե�½�ɹ���</span>
			</div>
			<div class ="logo_3_2">
				<span class = "logo_3_2_1">
					<a href="#" title="��ҳ������">��ҳ������</a>
				</span>
				<span class = "logo_3_2_2">
					<a href=# title="�ṷ��Ϸ">�ṷ��Ϸ</a>
				</span>
				<span class = "logo_3_2_3">
					<a href=# title="���ؿͻ���">���ؿͻ���</a>
				</span>
			</div>
		</div>
	</div>
	<!-- ������Ϣ -->
	<div class="nav">
		<div id="nva-1" class="nva-1">
			<ul>
				<li><a href="#" title="�ֿ�">�ֿ�</a></li>
				<li><a href="xu/��̨Ƶ��.html" title="��̨">��̨</a></li>
				<li><a href="#" title="MV">MV</a></li>
				<li><a href="#" title="��Ѷ">��Ѷ</a></li>
				<li><a href="xu/������.html" title="��Ů�㳡">��Ů�㳡</a></li>
				<li><a href="#" title="���ִ���">���ִ���</a></li>
			</ul>
		</div>
		<div class="nav_0"></div>
		<div class="nav_2">
			<ul>
				<li><a href = "#" title="VIP����">VIP����</a></li>
				<li><a href = "#" title="�ͷ�����">�ͷ�����</a></li>
				<li><a href = "#" title="��Ʒ����">��Ʒ����</a></li>
			</ul>
		</div>
	</div>
	
	
	
	
	
	
	<div class="module">
		<div  class="module_1">
			<span>��ϲ�����ɹ�ע��ṷ�ʺ�:<i>${name}</i></span>
		</div>
		<div  class="module_2">
			<span>�ף�����������Ϣ��û����֤Ŷ~��ȥ <a href="#" title="��������">��������</a> ��֤�����!!!!</span>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- ���� -->
	<div class="foot">
		<p>����������������ͨ��P2P���繲����վδ��һһ��ˣ������ַ���Ȩ�뼰ʱ����market@kugou.com����ʾ��Ȩ֤�������ǽ���24Сʱ��ɾ����</p>	
	</div>
	<!-- �ṷ�ײ� -->
	<div style = "width:960px;height:110px;">
		<div class="links">
		  <div class="kugou"></div>
			  <a href="#" >���ڿṷ</a> |
			  <a href="#" >������</a> |
			  <a href="#" >��������</a> |
			  <a href="#" >��Ƹ��Ϣ</a> |
			  <a href="#" >�ͷ�����</a> | 
			  <a href="#" >�û����������ƻ�</a>
			  <strong>
				 <a href="#">�ṷ2013�ٷ��������</a>
			  </strong>
		  <br />
			<span>�����������֤1910564�� ������[2010]175�� Copyright (C) 2004-2013 KuGou-Inc.All Rights Reserved</span>
		  <br />
			 <span>��ֵ����ҵ��Ӫ���֤��B2-20060339 ��ICP��09017694��-2 &nbsp;
				<a href="#">
					 <img alt="" src="images/logo_down.jpg" style="width:20px;height:20px" />
				</a>
		  </span>
		</div>
	</div>
  </body>
</html>
