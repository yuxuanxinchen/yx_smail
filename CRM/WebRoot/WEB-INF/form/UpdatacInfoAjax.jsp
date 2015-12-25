<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>客户更新</title>
<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript' src='<%=basePath%>/dwr/engine.js'></script>
<script type='text/javascript'
	src='<%=basePath%>/dwr/interface/customerInfo.js'></script>
<script type='text/javascript' src='<%=basePath%>/dwr/util.js'></script>
<script type="text/javascript">
	function AjaxSubmitUpdata() {
	 $.messager.progress({
					title : "稍等哦！",
					msg : "正在努力加载中....",
					interval : 10
				});
		var formMap = DWRUtil.getValues("customerInfoForm");//<form name="customerInfoForm"
		customerInfo.updateCustomerInfo(formMap, {
			callback : function(data) {
			           $.messager.progress('close');
			           if(data=="SUCCESS"){
						$.messager.alert('小提示!', "成功啦");
			           }else{
			              $.messager.alert('小提示!', "失败啦");
			           }
						window.location.reload()
			}
		});
	}
</script>
</head>
<body>
	<h1 align="center" style="font-family:华文彩云">客户信息更新</h1>
	<form action="sjzd/addCustomerInfo.action" name="customerInfoForm"
		method="post" target="main">
		<table width="100%" height="48" border="1" cellpadding="0"
			cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"
			bordercolorlight="#FFFFFF">
			<input type="hidden" name="customerFormId" value="${ custom.customerId}" />
			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">客户名称：</td>
				<td><input type="text" name="customerName" disabled="disabled"
					value="${custom.customerMc }" /><font color="red">${requestScope.error }</font></td>
				<td bgcolor="#eeeeee">客户性质</td>
				<td><select name="customerProperties">
						<s:iterator value="#request.allxz" id="customerxz">
							<s:if test='#customerxz.sjzdxxMc !="" && #customerxz.isOk=="Y"'>
								<option value="${customerxz.sjzdxxId }"
									<s:if test="#request.custom.sjzdxxByCustomerXz.sjzdxxId == #request.customerxz.sjzdxxId ">
								    selected="selected"
								  </s:if>>
									${customerxz.sjzdxxMc}</option>
							</s:if>
						</s:iterator>
				</select></td>
			</tr>

			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">客户类型</td>
				<td><select name="customerTypeId">

						<s:iterator value="#request.alllx" id="customerly">
							<s:if test='#customerly.sjzdxxMc !="" && #customerly.isOk=="Y"'>
								<option value="${customerly.sjzdxxId }"
									<s:if test="#request.custom.sjzdxxByCustomerLx.sjzdxxId == #request.customerly.sjzdxxId ">
								    selected="selected"
								  </s:if>>
									${customerly.sjzdxxMc}</option>
							</s:if>
						</s:iterator>

				</select></td>

				<td bgcolor="#eeeeee">客户级别:</td>
				<td><select name="levelId">

						<s:iterator value="#request.alljb" id="customerjb">
							<s:if test='#customerjb.levelMc !=""'>
								<option value="${customerjb.levelId }"
									<s:if test="#request.custom.dataLevel.levelId == #request.customerjb.levelId ">
								    selected="selected"
								  </s:if>>
									${customerjb.levelMc}</option>
							</s:if>
						</s:iterator>

				</select></td>
			</tr>


			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">公司网址：</td>
				<td><input type="text" name="customerCompanyWebsize"
					value="${custom.customerWz }"></td>
				<td bgcolor="#eeeeee">公司电话：</td>
				<td><input type="text" name="customerCompanyPhone"
					value="${custom.customerDh }"></td>
			</tr>


			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">登记人：</td>
				<td><input type="text" name="register"
					value="${custom.customerDjr }"> <input
					type="hidden" name="hyId" value="1"></td>
				<td bgcolor="#eeeeee">客户地址：</td>
				<td><input type="text" name="customerAddress"
					value="${custom.customerAddress }"></td>
			</tr>


			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">所属省份：</td>
				<td><input type="text" name="customerProvinces"
					value="${custom.customerSssf }"></td>
				<td bgcolor="#eeeeee">所属城市：</td>
				<td><input type="text" name="customerCity"
					value="${custom.customerSscs }"></td>
			</tr>

			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">公司邮编：</td>
				<td><input type="text" name="customerCode"
					value="${custom.customerYb }"></td>
				<td bgcolor="#eeeeee">开户银行：</td>
				<td><select name="openBankId">

						<s:iterator value="#request.allkhyh" id="customerkhyh">
							<s:if
								test='#customerkhyh.sjzdxxMc !="" && #customerkhyh.isOk=="Y"'>
								<option value="${customerkhyh.sjzdxxId }"
									<s:if test="#request.custom.sjzdxxByCustomerLy.sjzdxxId == #request.customerkhyh.sjzdxxId ">
								    selected="selected"
								  </s:if>>
									${customerkhyh.sjzdxxMc}</option>
							</s:if>
						</s:iterator>

				</select></td>
			</tr>

			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">银行账号：</td>
				<td><input type="text" name="bankAccount"
					value="${custom.customerYhzh }"></td>
				<td bgcolor="#eeeeee">客户来源：</td>
				<td><select name="customerSourceId">

						<s:iterator value="#request.allly" id="customerly">
							<s:if test='#customerly.sjzdxxMc !="" && #customerly.isOk =="Y"'>
								<option value="${customerly.sjzdxxId }"
									<s:if test="#request.custom.sjzdxxByCustomerKhyh.sjzdxxId == #request.customerly.sjzdxxId ">
								    selected="selected"
								  </s:if>>
									${customerly.sjzdxxMc}</option>
							</s:if>
						</s:iterator>

				</select></td>
			</tr>

			<tr>
				<td bgcolor="#eeeeee">备注信息：</td>
				<td colspan="3"><textarea rows="3" cols="48"
						name="noteInformation">${custom.customerBz }</textarea></td>
			</tr>
		</table>
		<p align="center">
			<input type="button" onclick="AjaxSubmitUpdata()" value="提交"
				style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer' />
			<input type="reset" value="重置"
				style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer' />
		</p>
	</form>


</body>
</html>

