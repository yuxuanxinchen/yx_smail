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
 <form action="sjzd/updateSjzdxx.action" method="post">
        <center><img src="${basePath }image/user.gif"><font size="2">录入${requestScope.sjzdflxx.sjzdflMc}</font></center>
	<table align="center" border="1" cellspacing="0">
		<tr bgcolor="#666666" >
			<td align="center"><font color="#FFFFFF" size="2">序号</font></td>
			<td align="center"><font color="#FFFFFF" size="2">启用</font></td>
			<td align="center"><font color="#FFFFFF" size="2">选项</font></td>
		</tr>
		
		
	    <s:hidden name="sjzdflIds" value="%{#request.sjzdflId}"></s:hidden>
		<s:iterator value="#request.allSjzdxx" id="sjzdxx" >
		<tr bgcolor="#E3E3E3" > 
				<td align="center">${sjzdxx.sjzdxxId % 10==0?10:sjzdxx.sjzdxxId % 10}</td>
				<s:hidden name="sjzdxxIds" value="%{#sjzdxx.sjzdxxId}"></s:hidden>
				<td align="center"><input type="checkbox" name="isOk" <s:if test='#sjzdxx.isOk=="Y"'> checked="checked" </s:if>value="OK${sjzdxx.sjzdxxId }"> </td>
				<td align="center"><input type="text" name="sjzdflMcs" value="${sjzdxx.sjzdxxMc }"></td>
		    </tr>
		</s:iterator>
	</table>
	<br>
	<center><input type="submit" value="提交">  </center>

</form>
  </body>
</html>
