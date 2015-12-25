<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp"%>
<!DOCTYPE HTML >
<html>
<head>
<title>联系人添加</title>
<link href="<%=basePath%>/css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/engine.js'></script>
<script type='text/javascript' src='${basePath }/dwr/util.js'></script>
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
	$(function() {
		$("#dcser").datagrid({
			onDblClickRow : function(rowIndex, rowData) {
				var dataS = rowData.customerMc;
				$("#customerName").val(dataS)
				$("#selectDser").window({
					closed : true
				})
			}
		});

		customerInfo.ajaxWindow({
			callback : function(data) {
				var obj = eval('(' + data + ')');
				for (var i = 0; i < obj['list'].length; i++) {
					$('#dcser').datagrid('appendRow', {
						customerId : i,
						customerMc : obj['list'][i].customerMc,
						customerDh : obj['list'][i].customerDh,
						customerWz : obj['list'][i].customerWz
					});
				}
			}
		});
	});

	function fsubmit() {
		var formMap = DWRUtil.getValues("ContactsINfo")
		contacts.saveContacts(formMap, {
			callback : function(data) {
				alert(data)
				window.location.reload();
			}
		});
	}
	var table = "";
	function infoDetail(obj){
	    contacts.ContactsShowDetail(obj,{
	      callback:function(data){
	       var objs = eval('(' + data + ')');
	       table = "<table>"+
	              "<tr><td><strong>编号:"+objs['contactsInfo'].contactsId+"</td></tr>"+
	              "<tr><td style='width:200px'>客户名称："+objs['contactsInfo'].contactsName+"</td></tr>"+
	              "<tr><td>联系人职务："+objs['contactsInfo'].contactsJob+"</td></tr>"+
	              "<tr><td>联系人姓名："+objs['contactsInfo'].customerInfo.customerMc+"</td></tr>"+
	              "<tr><td>客户生日："+objs['contactsInfo'].sbirthday+"</td></tr>"+
	              "<tr><td>注册日期："+objs['contactsInfo'].Sregister+"</td></tr>"+
	              "<tr><td>办公室电话："+objs['contactsInfo'].contactsOfficePhone+"</td></tr>"+
	              "<tr><td>电子邮箱："+objs['contactsInfo'].contactsEmail+"</td></tr>"+
	              "<tr><td>QQ："+objs['contactsInfo'].contactsQq+"</td></tr>"+
	              "<tr><td>介绍："+objs['contactsInfo'].contactsDescription+"</td></tr>"+
	      " </table>";
	       $("#wsf").empty();
	       $("#wsf").append(table);
	   	   $('#wsf').window('open')
	      }
	    })
	}
	
	var updata = "";
	function contactsUpdata(obj){
	     contacts.ContactsShowDetail(obj,{
	        callback:function(data){
	        var objs = eval('('+data+')');
	          
	   updata =""+
	    " <form action='ajax/contactsInfoAjax.action' name='ContactsUpdate'"+
		"	method='post'>"+
		"	<table><input type='hidden' value="+objs['contactsInfo'].contactsId+" name='contactsId'></input>"+
		"		<tr>"+
		"			<td align='center'><strong>姓名：</strong> <input"+
		"				name='contactsName' value="+objs['contactsInfo'].contactsName+" class='inpsr easyui-validatebox'"+
		"				data-options='required:true' type='text' /></td>"+
		"			<td align='center'><strong>客户名称：</strong> <input"+
		"				name='customerName' value="+objs['contactsInfo'].customerInfo.customerMc+" placeholder='点文本框添加哦!' readonly='readonly'"+
		"				onclick='$('#selectDser').window('open')' id='customerName'"+
		"				class='inpsr' type='text' /></td>"+
		"		</tr>"+
		"		<tr style='height:35px'>"+
		"			<td align='center'><strong>生日：</strong> <input"+
		"				class='easyui-datetimebox' readonly='readonly' value="+objs['contactsInfo'].sbirthday+" name='birthday'"+
		"				data-options='required:true,showSeconds:false' type='text' /></td>"+
		"			<td align='center'><strong>联系人性别：</strong> 男<input"+
		"				name='customersex' id='sexNa' checked='checked' type='radio' value='男' /> 女<input value='女'"+
		"				type='radio' name='customersex' id='sexNV'/></td>"+
		"		</tr>"+
		"		<tr>"+
		"			<td align='center'><strong>联系人职务：</strong> <input"+
		"				name='contactsJob' value="+objs['contactsInfo'].contactsJob+" class='inpsr easyui-validatebox'"+
		"				data-options='required:true' type='text' /></td>"+
		"			<td align='center'><strong>联系人办公电话：</strong> <input"+
		"				name='contactsOfficePhone' value="+objs['contactsInfo'].contactsOfficePhone+" class='inpsr easyui-validatebox'"+
		"				data-options='required:true' type='text' /></td>"+
		"		</tr>"+
		"		<tr>"+
		"			<td align='center'><strong>联系人个人电话：</strong> <input"+
		"				class='inpsr easyui-validatebox' value="+objs['contactsInfo'].contactsPhone+" data-options='required:true'"+
		"				name='contactsPersonPhone' type='text' /></td>"+
		"			<td align='center'><strong>联系人QQ号码：</strong> <input"+
		"				class='inpsr' value="+objs['contactsInfo'].contactsQq+" name='contactsQQ' type='text' /></td>"+
		"		</tr>"+
		"		<tr>"+
		"			<td align='center'><strong>登记日期：</strong> <input"+
		"				name='registDate' value="+objs['contactsInfo'].Sregister+" class='easyui-datetimebox inpsr' name='birthday'"+
		"				data-options='required:true,showSeconds:false' type='text' readonly='readonly'/></td>"+
		"		</tr>"+
		"		<tr>"+
		"			<td align='center'><strong>联系人邮箱：</strong> <input"+
		"				class='inpsr easyui-validatebox' value="+objs['contactsInfo'].contactsEmail+" name='email'"+
		"				data-options='required:true,validType:'email'' type='text' /></td>"+
		"		</tr>"+
		"				<tr align='center'>"+
		"			<td><strong>备注<strong></strong></td>"+
		"			<td><textarea rows='4' cols='50' name='contactsDescription'>"+objs['contactsInfo'].contactsDescription+"</textarea></td>"+
		"		</tr>"+
		"				<tr align='center'>"+
		"			<td><input type='button' onclick='updateContacts()' value='提交'"+
		"				class='tj' /> </td>"+
		"		</tr>"+
		"		</table>"+
		"</form>";
	  
	          $("#updataContacts").empty();
	          $("#updataContacts").append(updata);
	          $("#updataContacts").window('open');
	         if(objs['contactsInfo'].contactsSex=='男'){
	            $("#sexNa").prop({checked:true});
	          }else{
	           $("#sexNV").prop({checked:true});
	          }
	          
	        }
	     });
	    }
	    
	 
	function updateContacts() {
		var formMap = DWRUtil.getValues("ContactsUpdate")
		contacts.updateContacts(formMap, {
			callback : function(data) {
				alert(data)
				window.location.reload();
			}
		});

	}
	
	
	function contactsdelete(obj){
	   var isOk = confirm("确认要删除吗?");
	   if(isOk){
	      contacts.deleteContacts(obj,{
	       callback:function(data){
	       window.location.reload();
	          alert(data);
	       }
	    })
	   }
	 
	}
	
	
	function allContactsDelete(obj){
		var isOk = window.confirm("确定要删除这些信息记录吗?");
		if (isOk) {
			var selects = DWRUtil.getValue("checkeds");
			contacts.deleteContactsAll(selects, {
				callback : function(data) {
				window.location.reload();
					alert(data)
				}
			});
		}
	}
	
	
	function allCheckBox(){
	  if($(":checkBox").prop("checked")){
	      $(":checkBox").prop({checked:true})
	   }else{
	   $(":checkBox").prop({checked:false})
	   }
	}
	
	
	
</script>

</head>
<body>

	<h2 style="text-align:center">联系人信息</h2>
	
	
	 <form action="cts/conditionContactsInfopage.action" method="post">
		  <table width="100%" height="23" border="0" cellpadding="0" cellspacing="0">
		         <tr>
			         <td colspan="2" width="100%" align="center">
			           请输入查询条件：
				         <select name="type" class="textarea">
		                  <option value="contactsName" ${contactsName }> 联系人姓名</option>
			              <option value="contactsJob" ${contactsJob }>联系人职务</option>
			              <option value="contactsSex" ${contactsSex } >性别</option>
			              <option value="contactsOfficePhone" ${contactsOfficePhone } >办公室电话</option>
			              <option value="contactsEmail" ${contactsEmail }>电子邮箱</option>
			              <option value="contactsQq" ${contactsQq }>QQ</option>
				         </select>
				         <input name="key"  type="text" class="txt_grey" size="24" value="${key}">
				         <input type="submit" class="subt_grey" value="搜索">
			         </td>
		         </tr>
		  </table>
	  </form>
	
	
	
	
	<div id="updataContacts" class="easyui-window" title="修改联系人"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width:850px;height:500px;padding:10px;">
		
	</div>
	


	<div id="w" class="easyui-window" title="添加联系人"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width:850px;height:500px;padding:10px;">
		<form action="ajax/contactsInfoAjax.action" name="ContactsINfo"
			method="post">
			<table>
				<tr>
					<td align="center"><strong>姓名：</strong> <input
						name="contactsName" class="inpsr easyui-validatebox"
						data-options="required:true" type="text" /></td>
					<td align="center"><strong>客户名称：</strong> <input
						name="customerName" placeholder="点文本框双击添加哦!" readonly="readonly"
						onclick="$('#selectDser').window('open')" id="customerName"
						class="inpsr" type="text" /></td>
				</tr>

				<tr style="height:35px">
					<td align="center"><strong>生日：</strong> <input
						class="easyui-datetimebox" name="birthday"  placeholder="请真人选择，保存后无法修改"
						data-options="required:true,showSeconds:false" type="text" /></td>
					<td align="center"><strong>联系人性别：</strong> 男<input
						name="customersex" type="radio" value="男" /> 女<input value="女"
						type="radio" name="customersex" /></td>
				</tr>
				<tr>
					<td align="center"><strong>联系人职务：</strong> <input
						name="contactsJob" class="inpsr easyui-validatebox"
						data-options="required:true" type="text" /></td>
					<td align="center"><strong>联系人办公电话：</strong> <input
						name="contactsOfficePhone" class="inpsr easyui-validatebox"
						data-options="required:true" type="text" /></td>
				</tr>
				<tr>
					<td align="center"><strong>联系人个人电话：</strong> <input
						class="inpsr easyui-validatebox" data-options="required:true"
						name="contactsPersonPhone" type="text" /></td>
					<td align="center"><strong>联系人QQ号码：</strong> <input
						class="inpsr easyui-validatebox" name="contactsQQ" data-options="required:true,showSeconds:true"  type="text"  /></td>
				</tr>
				<tr>
					<td align="center"><strong>XXXXXX：</strong> <input class="inpsr"
						name="contactsInfos" type="text" readonly="readonly" /></td>
					<td align="center"><strong>登记日期：</strong> <input
						name="registDate" class="easyui-datetimebox inpsr"  placeholder="请真人选择，保存后无法修改" name="birthday"
						data-options="required:true,showSeconds:false" type="text" /></td>
				</tr>
				<tr>
					<td align="center"><strong>联系人邮箱：</strong> <input
						class="inpsr easyui-validatebox" name="email"
						data-options="required:true,validType:'email'" type="text" /></td>
				</tr>

				<tr align="center">
					<td><strong>备注<strong></strong></td>
					<td><textarea rows="4" cols="50" name="contactsDescription"></textarea></td>
				</tr>

				<tr align="center">
					<td><input type="button" onclick="fsubmit()" value="提交"
						class="tj" /> <input type="reset" value="重置" class="tj" /></td>
				</tr>
				</table>
		</form>
		
	</div>

	<!-- 标题头 -->
	<table width="100%" height="48" border="1" cellpadding="0"
		cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"
		bordercolorlight="#FFFFFF">
		<tr bgcolor="#eeeeee" style="padding:5px;">
			<td align="center"><input type="checkbox" onclick="allCheckBox();"
				id="selectAll"></td>
			<td align="center">编号</td>
			<td align="center">客户名称</td>
			<td align="center">联系人姓名</td>
			<td align="center">联系人性别</td>
			<td align="center">联系人职务</td>
			<td align="center">联系人办公电话</td>
			<td align="center">联系人个人电话</td>
			<td align="center">联系人QQ号码</td>
			<td align="center">查看详情</td>
			<td align="center">修改</td>
			<td align="center">删除</td>
		</tr>

		<!-- 数据显示区 -->
		<s:iterator value="#request.contacts" id="conts">
			<tr bgcolor="#eeeeee" style="padding:5px;">
				<td align="center"><input type="checkbox" value="${conts.contactsId }" name="checkeds" id="selectAll"></td>
				<td align="center">${conts.contactsId }</td>
				<td align="center">${conts.customerInfo.customerMc }</td>
				<td align="center">${conts.contactsName }</td>
				<td align="center">${conts.contactsSex }</td>
				<td align="center">${conts.contactsJob }</td>
				<td align="center">${conts.contactsOfficePhone }</td>
				<td align="center">${conts.contactsPhone }</td>
				<td align="center">${conts.contactsQq }</td>
				<td align="center">  <a class="containfo" onclick="infoDetail(${conts.contactsId })">查看详情</a> </td>
				<td align="center"> <a class="containfo" onclick="contactsUpdata(${conts.contactsId })">修改</a> </td>
				<td align="center"><a class="containfo" onclick="contactsdelete(${conts.contactsId })">删除</a></td>
			</tr>
		</s:iterator>
		<tr style="padding:5px;font-size: 12px;">
			<td colspan="12" align="center"><s:if
					test="#request.page.currentPage">
					<a href="cts/contactsInfopage.action?currentPage=1">首页</a>
					<a
						href="cts/contactsInfopage.action?currentPage=${request.currentPage-1}">上一页</a>
				</s:if> <s:else>
				       首页
				       上一页
				      </s:else> <s:if test="#request.page.hasNextPage">
					<a
						href="cts/contactsInfopage.action?currentPage=${request.currentPage+1}">下一页</a>
					<a
						href="cts/contactsInfopage.action?currentPage=${request.page.totalPage }">尾页</a>
				</s:if> <s:else>
				       下一页
				       尾页
				      </s:else> 当前第${request.currentPage}页| 共${request.page.totalPage}页 |
				共${request.page.totalCount}条记录。</td>
		</tr>
	</table>
	
	
	<!-- 添加数据区 -->
	<input type="button" value="添加" class="easyui-linkbutton"
		onclick="$('#w').window('open')"
		style='display:bolck;width:100%;height:35px;background:#141414;color:#fff;font-size:30px;line-height:35px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>
	<input type="button" value="批量删除" onclick="allContactsDelete()"
		style='display:bolck;width:100%;height:35px;background:#141414;color:#fff;font-size:30px;line-height:35px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>

	<div id="selectDser" class="easyui-window " title="添加联系人"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width:800px;height:500px;padding:10px;">
		<table id="dcser" class="easyui-datagrid" title="Basic DataGrid"
			style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'',method:'post',singleSelect:true,">
			<thead>
				<tr>
					<th data-options="field:'customerId',width:80">客户编号</th>
					<th data-options="field:'customerMc',width:100">客户名称</th>
					<th data-options="field:'customerWz',width:80,align:'right'">公司网址</th>
					<th data-options="field:'customerDh',width:80,align:'right'">公司电话</th>
				</tr>
			</thead>
		</table>
	</div>
	
	
	<!-- 添加联系人弹出窗口 -->
	<div id="wsf" class="easyui-window" title="添加联系人"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width:600px;height:400px;padding:10px;">
			
	</div>
	
	
	
</body>
</html>

