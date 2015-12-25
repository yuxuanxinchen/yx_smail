<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/base/tag.jsp"%>
<!DOCTYPE html >
<html>
<head>
    <title>用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引用jquery easy ui的js库及css -->
     <LINK rel="stylesheet" type="text/css" href="${baseurl}js/easyui/styles/default.css">
	<%@ include file="/WEB-INF/jsp/base/common_css.jsp"%>
	<%@ include file="/WEB-INF/jsp/base/common_js.jsp"%>
	
	<script type="text/javascript">
	
	var content_row = [[
	                     {field:"userid",title:"帐号",width:120},
	                     {field:"username",title:"名称",width:120},
	                     {field:"groupname",title:"用户类型",width:80
// 	                    	 formatter:function(value,row,index){//格式化显示的内容
// 	                    	 if(value==1){
// 	                    		 return "卫生局";
// 	                    	 }else if(value==2){
// 	                    		 return "卫生院";
// 	                    	 }else if(value==3){
// 	                    		 return "卫生室";
// 	                    	 }else if(value==4){
// 	                    		 return "供货商";
// 	                    	 }else 	 if(value==0){
// 	                    		 return "系统管理员";
// 	                    	 }
	                     },
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
	                     {field:"addr",title:"联系地址",width:120},
	                     {field:"opt1",title:"删除",width:80,formatter:function(value,row,index){
	                         return "<a href='javascript:deleteuser("+row.id+")'>删除</a>";
	                     }} ,
	                     {field:"opt2",title:"修改",width:80,formatter:function(value,row,index){
	                         return "<a href='javascript:edituser("+row.id+")'>修改</a>";
	                     }} 
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
			toolbar : toolbar_v
		});
	});
	
	//删除用户
	function deleteuser(id){
		
		//第一个参数是提示信息，第二个参数，取消执行的函数指针，第三个参是，确定执行的函数指针
		_confirm('您确认删除吗？',null,function (){

			//将要删除的id赋值给deleteid，deleteid在sysuserdeleteform中
			$("#delete_id").val(id);
			//使用ajax的from提交执行删除
			//sysuserdeleteform：form的id，userdel_callback：删除回调函数，
			//第四个参数是datatype，表示服务器返回的类型
			jquerySubByFId('sysuserdeleteform',userdelete_callback,null,"json");
		});
	}
	
	
	function userdelete_callback(data){
		message_alert(data);
		var type=data.resultInfo.type;
		if(type==1){
			queryuser();			
		}
	}
	
	/* 查询方法   --要求是传json数据，最终讲key  value的传入action*/
	function queryuser(){
		//讲FROM表单中的数据提取出来组成一个方法
		var formdata=$("#sysqueryuser").serializeJson();
		$("#sysuserlist").datagrid('load',formdata);
	}
	
	/*修改用户*/
	function edituser(id){
	   createmodalwindow("修改用户信息", 800, 250, '${baseurl}user/edituser.action?id='+id);
	}
	
	</script>
	
</head>
<body>
<form id="sysqueryuser">
<TABLE class="table_search">
		<TBODY>
			<TR>
				<TD class="left">用户账号：</td>
				<td><INPUT type="text" name="sysuserCustom.userid" /></TD>
				<TD class="left">用户名称：</TD>
				<td><INPUT type="text" name="sysuserCustom.username" /></TD>
				<TD class="left">单位名称：</TD>
				<td><INPUT type="text" name="sysuserCustom.sysmc" /></TD>
				<TD class="left">用户类型：</TD>
				<td><select name="sysuserCustom.groupid">
						<option value="">请选择</option>
							<c:forEach items="${grouplist }" var="dictinfo">
							   <option value="${dictinfo.dictcode }">${dictinfo.info }</option>
							</c:forEach>
				</select></TD>
				<td><a id="btn" href="#" onclick="queryuser()"
					class="easyui-linkbutton" iconCls='icon-search'>查询</a></td>
			</TR>
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
<form id="sysuserdeleteform" action="${baseurl}user/deleteuser.action" method="post">
   <input type="hidden" id="delete_id" name="id"/>
</form>
</body>
</html>