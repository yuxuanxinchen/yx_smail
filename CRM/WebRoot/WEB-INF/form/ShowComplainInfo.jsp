<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>投诉信息</title>
	<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/complain.js'></script>
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
    function allCheckBox(){
	    if($(":checkBox").prop("checked")){
	      $(":checkBox").prop({checked:true})
	   }else{
	   $(":checkBox").prop({checked:false})
	   }
	}
    
        function showDetail(obj){
			complain.showDatils(obj,{
			  callback:function(data){
			    var obj = eval('('+data+')');
			        var html = ""+
			        "<p>投诉编号 : "+obj['complain'].complainId+"</p>"+
			        "<p>处理用户 : "+obj['complain'].user.userName+"</p>"+
			        "<p>处理状态 : "+obj['complain'].sjzdxxByPleasedLevel.sjzdxxMc+"</p>"+
			        "<p>投诉客户 : "+obj['complain'].customerInfo.customerMc+"</p>"+
			        "<p>投诉人 : "+obj['complain'].complainPersion+"</p>"+
			        "<p>投诉主题 : "+obj['complain'].complainTheme+"</p>"+
			        "<p>投诉内容 : "+obj['complain'].complainText+"</p>"+
			        "<p>投诉时间 : "+obj['complain'].sDate+"</p>"+
			        "<p>处理方法 : "+obj['complain'].complainManage+"</p>"+
			        "<p>备注信息: "+obj['complain'].complainRemarks+"</p>"+
			        "";
			    $("#wsf").empty();
			    $("#wsf").append(html);
			    
			  }
			})
		$("#wsf").window('open');           
        }
    
    
   
					function deleteComplain(obj) {
						$.messager.confirm("消息框!", "您确定要删除吗?", function(r) {
							if (r) {
								$.messager.progress({
									title : "稍等哦！",
									msg : "正在努力加载中....",
									interval : 10
								});
								complain.deleteComplain(obj, {
									callback : function(data) {
										$.messager.progress('close');
									  if(data=="SUCCESS"){
									      $.messager.alert('小提示!', "删除成功啦");
									  }else{
									      $.messager.alert('小提示!', "很抱歉！删除失败啦");
									  }
										window.location.reload()
									}

								})

							}
						});
					}

					function deleteAllComplain(obj) {
						$.messager.confirm("消息框!", "您确定要批量删除吗?", function(r) {
							if (r) {
								$.messager.progress({
									title : "稍等哦！",
									msg : "正在努力加载中....",
									interval : 10
								});
								var selects = DWRUtil.getValue("comSelecteds")
								alert(selects)
								complain.deleteMoreComplain(selects, {
									callback : function(data) {
									$.messager.progress('close');
									  if(data=="SUCCESS"){
									      $.messager.alert('小提示!', "删除成功啦");
									  }else{
									      $.messager.alert('小提示!', "很抱歉！删除失败啦");
									  }
										window.location.reload()
									}

								})

							}
						});
					}
				</script>

  </head>
  <body> 
    
  
  <h2 style="text-align:center">客户信息</h2>
  
	  <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
	          <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" name="selectedss" onclick="allCheckBox();" id="selectAll" ></td>
				      <td align="center"> 编号</td>
				      <td align="center"> 投诉主题</td>
				      <td align="center"> 投诉客户</td>
				      <td align="center"> 投诉日期</td>
				      <td align="center"> 查看详情</td>
				      <td align="center"> 修改</td>
				      <td align="center"> 删除</td>
			  </tr>
			  <s:iterator value="#request.complain" id="cop">
			       <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" name="comSelecteds"  id="selectAll" value="${cop.complainId }" /></td>
				      <td align="center"> ${cop.complainId }</td>
				      <td align="center"> ${cop.complainTheme }</td>
				      <td align="center"> ${cop.user.userName }</td>
				      <td align="center"> ${fn:substring(cop.complainDate,0,10)}</td>
				      <td align="center"> <a href="#" id="datils" onclick="showDetail(${cop.complainId})">查看详情</a> </td>
				      <td align="center"> <a id="datils" href="${basePath }cpl/uComplain.action?updateId=${cop.complainId}">修改</a> </td>
				      <td align="center"> <a href="#" id="datils" onclick="deleteComplain(${cop.complainId})">删除</a></td>
			       </tr>
			  </s:iterator>
			  <tr style="padding:5px;font-size: 12px;">
			<td colspan="12" align="center"><s:if
					test="#request.page.currentPage">
					<a href="cpl/sComplain.action.action?currentPage=1">首页</a>
					<a
						href="cpl/sComplain.action.action?currentPage=${request.currentPage-1}">上一页</a>
				</s:if> <s:else>
				       首页
				       上一页
				      </s:else> <s:if test="#request.page.hasNextPage">
					<a
						href="cpl/sComplain.action.action?currentPage=${request.currentPage+1}">下一页</a>
					<a
						href="cpl/sComplain.action.action?currentPage=${request.page.totalPage }">尾页</a>
				</s:if> <s:else>
				       下一页
				       尾页
				      </s:else> 当前第${request.currentPage}页| 共${request.page.totalPage}页 |
				共${request.page.totalCount}条记录。</td>
		</tr>
			 
	  </table>
		 <input type="button" value="添加" onclick="window.open('${basePath}cpl/complain.action');" style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>
		 <input type="button" value="批量删除" onclick="deleteAllComplain()" style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>
 
 
 	   <div id="wsf" class="easyui-window" title="添加上级"
		data-options="modal:true,closed:true,iconCls:'icon-save',closed:true"
		style="width:600px;height:400px;padding:10px;">
			
	   </div>
 
        
 
 
  </body>
</html>

	