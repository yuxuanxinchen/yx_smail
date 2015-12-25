<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/base/tag.jsp"%>
<html> 
<head>
<title>药品目录导出</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%@ include file="/WEB-INF/jsp/base/common_css.jsp"%>
<%@ include file="/WEB-INF/jsp/base/common_js.jsp"%>

<script type="text/javascript">
//药品信息导出
	function ypxxexport(){
		jquerySubByFId('ypxxlistFrom',ypxxExprot_callback,null,"json");//调用ajax Form提交
	}
	
	function ypxxExprot_callback(data){
		message_alert(data);
	}
	
	var content_row = [[
	                     {field:"userid",title:"帐号",width:120},
	                     {field:"username",title:"名称",width:120},
	                     {field:"groupname",title:"用户类型",width:80 },
	                     {field:"sysmc",title:"所属单位",width:120},
	                     {field:"phone",title:"电话",width:90},
	                     {field:"email",title:"E-Mail",width:150},
	                     {field:"userstate",title:"状态",width:50,formatter:function(value,row,index){
	                    	 if(value==1){
	                    		 return "正常";
	                    	 }else if(value==0){
	                    		 return "暂停";
	                    	 }
	                     }},
	                     {field:"addr",title:"联系地址",width:120}
	                     
	                    ]];
	
	//定义工具栏
	var toolbar_v = [ {//工具栏
		id : 'btnadd',text : '添加',iconCls : 'icon-add',
		handler : function() {
			//打开一个窗口，用户添加页面
			//参数：窗口的title、宽、高、url地址
			createmodalwindow("添加用户信息", 800, 250, '${baseurl}user//addsysuser.action');
		}
	} ];
	//加载datagrid
	$(function() {
		$('#sysuserlist').datagrid({
			title : '用户查询',//数据列表标题
			nowrap : true,//单元格中的数据不换行，如果为true表示不换行，不换行情况下数据加载性能高，如果为false就是换行，换行数据加载性能不高
			striped : true,//条纹显示效果
			url : '${baseurl}user/queryuser_result.action',//加载数据的连接，引连接请求过来是json数据
			idField : 'id',//此字段很重要，数据结果集的唯一约束(重要)，如果写错影响 获取当前选中行的方法执行
			loadMsg : '',
			columns : content_row,
			pagination : true,//是否显示分页
			rownumbers : true,//是否显示行号
			align:"center",
			halign:"center",
			pageList:[15,30,50],
// 			toolbar : toolbar_v
		});
	});
	
	/* 查询方法   --要求是传json数据，最终讲key  value的传入action*/
	function queryuser(){
		//讲FROM表单中的数据提取出来组成一个方法
		var formdata=$("#sysqueryuser").serializeJson();
		$("#sysuserlist").datagrid('load',formdata);
	}
	
	
	
	
	
	
</script>

</head>
<body>
<!-- 导出条件 -->

<form id="ypxxlistFrom" name="ypxxlistFrom" action="${baseurl}ypml/exportYpxxSubmit.action" method="post">
<TABLE  class="table_search">
				<TBODY>
					<TR>
						<TD class="left">流水号：</TD>
						<td ><INPUT type="text" name="ypxxCustom.bm" /></td>
						<TD class="left">通用名：</td>
						<td><INPUT type="text"  name="ypxxCustom.mc" /></TD>
						
						<TD class="left">药品类别：</TD>
						<td >
							<select id="ypxxCustom.lb" name="ypxxCustom.lb" style="width:150px">
								<option value="">全部</option>
								<c:forEach items="${yplblist}" var="value">
									<option value="${value.id}">${value.info}</option>
								</c:forEach>
							</select>
						</td>
						<TD class="left">交易状态：</TD>
						<td >
							<select id="ypxxCustom.jyzt" name="ypxxCustom.jyzt" style="width:150px">
								<option value="">全部</option>
								<c:forEach items="${jyztlist}" var="value">
									<option value="${value.dictcode}">${value.info}</option>
								</c:forEach>
							</select>
							
						</td>
					  <td colspan="12" style="text-align:center"><a id="btn" href="#" onclick="ypxxexport()" class="easyui-linkbutton" iconCls='icon-search'>导出</a></td>
					</TR>
				</TBODY>
			</TABLE>
</form>

<form id="sysqueryuser">
<TABLE class="table_search">
		<TBODY>
			<TR>
		</TBODY>
	</TABLE>
	
		<!-- 查询列表 -->
	<TABLE border=0 cellSpacing=0 cellPadding=0 width="99%" align=center>
		<TBODY>
			<TR>
				<TD>
					<table id="sysuserlist"></table>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</form>

</body>
</html>