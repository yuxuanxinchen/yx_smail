<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>导航栏</title>
    
    <script type="text/javascript" src="${basePath }js/dtree.js"></script> 
    <link rel="StyleSheet" href="${basePath }css/dtree.css" type="text/css" /> 
    <link rel="StyleSheet" href="${basePath }css/leftStyle.css" type="text/css" /> 
    
    <!-- dwr要引用的js engine.js文件是固定的；DictionaryTypeDAO.js文件的命名是根据 dwr.xml 的javascript="?"里面的 -->
    <script type="text/javascript" src="${basePath }dwr/engine.js"></script>
    <script type="text/javascript" src="${basePath }dwr/interface/SjzdxxDAO.js"></script>
    
  </head>
  <body>
 <form action="sjzd/updateCustomerLevel.action" method="post">
        <center><img src="${basePath }image/user.gif"><font size="2">录入级别名称</font></center>
	<table align="center" border="1" cellspacing="0">
		<tr bgcolor="#666666" >
			<td align="center"><font color="#FFFFFF" size="2">序号</font></td>
			<td align="center"><font color="#FFFFFF" size="2">业务累积量</font></td>
			<td align="center"><font color="#FFFFFF" size="2">选项</font></td>
		</tr>
		
		
	    <s:hidden name="sjzdflIds" value="%{#request.allcus}"></s:hidden>
		<s:iterator value="#request.allcus" id="customerlevel" >
		<tr bgcolor="#E3E3E3" > 
				<td align="center">${customerlevel.levelId }</td>
				<s:hidden name="levelId" value="%{#customerlevel.levelId}"></s:hidden>
				<td align="center">业务累积量<input name="levelYwl" value="${customerlevel.levelYwl }"/></td>
				<td align="center"><input type="text" name="levelMc" value="${customerlevel.levelMc }"></td>
		    </tr>
		</s:iterator>
	</table>
	<br>
	<center><input type="submit" value="提交">  </center>

</form>
  </body>
</html>
