<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>客户添加</title>
<link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">

</head>

<body>

	<h1 align="center" style="font-family:华文彩云">客户信息添加</h1>
	<form action="sjzd/addCustomerInfo.action" method="post" target="main">
		<table width="100%" height="48" border="1" cellpadding="0"
			cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"
			bordercolorlight="#FFFFFF">
			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">客户名称</td>
				<td><input type="text" name="customerName" value=""><font color="red">${requestScope.error }</font></td>
				<td bgcolor="#eeeeee">客户性质</td>
				<td><select name="customerProperties">
						<s:iterator value="#request.allxz" id="customerxz">
							<s:if test='#customerxz.sjzdxxMc !="" && #customerxz.isOk=="Y"'>
								<option value="${customerxz.sjzdxxId }">
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
								<option value="${customerly.sjzdxxId }">
									${customerly.sjzdxxMc}</option>
							</s:if>
						</s:iterator>

				</select></td>

				<td bgcolor="#eeeeee">客户级别:</td>
				<td><select name="levelId">

						<s:iterator value="#request.alljb" id="customerjb">
							<s:if test='#customerjb.levelMc !=""'>
								<option value="${customerjb.levelId }">
									${customerjb.levelMc}</option>
							</s:if>
						</s:iterator>

				</select></td>
			</tr>


			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">公司网址：</td>
				<td><input type="text" name="customerCompanyWebsize" value="">
				</td>
				<td bgcolor="#eeeeee">公司电话：</td>
				<td><input type="text" name="customerCompanyPhone" value="">
				</td>
			</tr>


			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">登记人：</td>
				<td><input type="text" name="register" value="雨宣"
					readonly="readonly"> <input type="hidden" name="hyId"
					value="1"></td>
				<td bgcolor="#eeeeee">客户地址：</td>
				<td><input type="text" name="customerAddress" value="">
				</td>
			</tr>


			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">所属省份：</td>
				<td><input type="text" name="customerProvinces" value="">
				</td>
				<td bgcolor="#eeeeee">所属城市：</td>
				<td><input type="text" name="customerCity" value=""></td>
			</tr>

			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">公司邮编：</td>
				<td><input type="text" name="customerCode" value=""></td>
				<td bgcolor="#eeeeee">开户银行：</td>
				<td><select name="openBankId">

						<s:iterator value="#request.allkhyh" id="customerkhyh">
							<s:if
								test='#customerkhyh.sjzdxxMc !="" && #customerkhyh.isOk=="Y"'>
								<option value="${customerkhyh.sjzdxxId }">
									${customerkhyh.sjzdxxMc}</option>
							</s:if>
						</s:iterator>

				</select></td>
			</tr>

			<tr style="padding:5px;">
				<td bgcolor="#eeeeee">银行账号：</td>
				<td><input type="text" name="bankAccount" value=""></td>
				<td bgcolor="#eeeeee">客户来源：</td>
				<td><select name="customerSourceId">

						<s:iterator value="#request.allly" id="customerly">
							<s:if test='#customerly.sjzdxxMc !="" && #customerly.isOk =="Y"'>
								<option value="${customerly.sjzdxxId }">
									${customerly.sjzdxxMc}</option>
							</s:if>
						</s:iterator>

				</select></td>
			</tr>

			<tr>
				<td bgcolor="#eeeeee">备注信息：</td>
				<td colspan="3"><textarea rows="3" cols="48"
						name="noteInformation"></textarea></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="提交"> <input type="reset"
				value="重置">
		</p>
	</form>
</body>
</html>

