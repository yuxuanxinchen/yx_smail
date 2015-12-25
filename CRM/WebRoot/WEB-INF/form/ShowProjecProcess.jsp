<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common.jsp" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目审批</title>
<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
	<script type='text/javascript'
	src='${basePath }/dwr/interface/mession.js'></script>
		<script type='text/javascript'
	src='${basePath }/dwr/interface/project.js'></script>

<script type='text/javascript' src='${basePath }/dwr/engine.js'></script>
<script type='text/javascript' src='${basePath }/dwr/util.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/menuInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/roleInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/user.js'></script>
<script type="text/javascript" src="${basePath }easyui/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${basePath }easyui/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath }easyui/themes/default/easyui.css" />
<script type="text/javascript"
	src="${basePath }easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${basePath }easyui/locale/easyui-lang-zh_CN.js"></script>
	<style type="text/css">
strong{width:200px;display:inline-block;}
#datils {
	width: 35px;
	height: 30px;
	background: #141414;
	color: #fff;
	cursor: pointer;
}

.inpsr {
	width: 180px;
	height: 30px;
}

.tj {
	display: bolck;
	width: 100%;
	height: 35px;
	background: #141414;
	color: #fff;
	font-size: 30px;
	line-height: 35px;
	text-align: center;
	letter-space: 1em;
	box-shadow: 3px 4px 5px #141414;
	border-radius: 10px;
	cursor: pointer
}

.containfo {
	width: 50px;
	height: 20px;
	background: #141414;
	color: #fff;
	display: inline-block;
	cursor: pointer
}

  .tj:hover{background:green;font-size:35px}
</style>
<script type="text/javascript">
     function allCheckBox() {
		if ($(":checkBox").prop("checked")) {
			$(":checkBox").prop({
				checked : true
			})
		} else {
			$(":checkBox").prop({
				checked : false
			})
		}
	}
     
     
	function submitVerify(obj) {
		project.updataVerify(obj, {
				callback : function(data) {
					if (data == "SUCCESS") {
						window.location.reload();
					} else if(data == "NOSTATE"){
						$.messager.alert('提示框', '请选择审核后重新提交!');
					}else{
					     $.messager.alert('提示框', '失败啦!');
					 }
				}
			})
	}
</script>
</head>
<body>



      <h1 style="text-align:center">进程列表</h1>
 <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
	          <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" onclick="allCheckBox();" id="selectAll" > </td>
				      <td align="center"> 项目编号</td>
				      <td align="center"> 项目名称</td>
				      <td align="center"> 创建人</td>
				      <td align="center"> 客户</td>
				      <td align="center"> 创建时间</td>
				      <td align="center"> 审核状态</td>
				      <td align="center"> 项目进程</td>
			  </tr>
			  
			  <s:iterator value="#request.pm" id="p">
			   <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" onclick="allCheckBox();" id="selectAll" > </td>
				      <td align="center"> ${p.projectId }</td>
				      <td align="center"> ${p.projectName }</td>
				      <td align="center"> ${p.user.userName }</td>
				      <td align="center"> ${p.customerInfo.customerMc }</td>
				      <td align="center"> ${p.sDate }</td>
				      <td align="center" > 
				           <s:if test="#p.projectVerify == 1">
				              	<b style="color:red">未审核</b> 
				           </s:if>
				           <s:else>
				               	已审核
				           </s:else>
						</td>
						<td align="center"><strong> ${p.projectRate }%</strong></td>
						</td>
			  </tr>
			</s:iterator>
			  
				  <tr style="padding:5px;font-size: 12px;">
				  <td colspan="12" align="center">
				      <s:if test="#request.page.currentPage">
				         <a href="pc/project.action?currentPage=1">首页</a>
				         <a href="pc/project.action?currentPage=${request.currentPage-1}">上一页</a>
				      </s:if>
				      <s:else>
				       首页
				       上一页
				      </s:else>
				      
				       <s:if test="#request.page.hasNextPage">
				         <a href="pc/project.action?currentPage=${request.currentPage+1}">下一页</a>
				         <a href="pc/project.action?currentPage=${request.page.totalPage }">尾页</a>
				      </s:if>
				      <s:else>
				       下一页
				       尾页
				      </s:else>
				      当前第${request.currentPage}页| 共${request.page.totalPage}页 | 共${request.page.totalCount}条记录。
				  </td>
			  </tr>
			  ${request.totalPage }
	  </table>
</body>
</html>