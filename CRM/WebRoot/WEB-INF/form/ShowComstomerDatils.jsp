<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center" style="font-family:华义彩云;">客户详细信息</h1>

	<table width="100%" height="48" border="1" cellpadding="0"
		cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"
		bordercolorlight="#FFFFFF">
		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">客户名称：</td>
			<td>${customerInfo.customerMc }</td>

			<td bgcolor="#eeeeee">客户性质：</td>
			<td>${customerInfo.sjzdxxByCustomerXz.sjzdxxMc }</td>
		</tr>
		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">客户类型：</td>
			<td>${customerInfo.sjzdxxByCustomerLx.sjzdxxMc }</td>

			<td bgcolor="#eeeeee">客户级别：</td>
			<td>${customerInfo.dataLevel.levelMc }</td>
		</tr>
		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">公司网址：</td>
			<td>${customerInfo.customerWz}</td>

			<td bgcolor="#eeeeee">公司电话：</td>
			<td>${customerInfo.customerDh}</td>
		</tr>

		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">登记人：</td>
			<td>${customerInfo.customerDjr}</td>
			<td bgcolor="#eeeeee">客户地址：</td>
			<td>${customerInfo.customerAddress}</td>
		</tr>

		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">所属省份：</td>
			<td>${customerInfo.customerSssf}</td>
			<td bgcolor="#eeeeee">所属城市：</td>
			<td>${customerInfo.customerSscs}</td>
		</tr>

		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">公司邮编：</td>
			<td>${customerInfo.customerYb}</td>
			<td bgcolor="#eeeeee">开户银行：</td>
			<td>${customerInfo.sjzdxxByCustomerKhyh.sjzdxxMc}</td>
		</tr>

		<tr style="padding:5px;">
			<td bgcolor="#eeeeee">银行账号：</td>
			<td>${customerInfo.customerYhzh}</td>
			<td bgcolor="#eeeeee">客户来源：</td>
			<td>${customerInfo.sjzdxxByCustomerLy.sjzdxxMc}</td>
		</tr>

		<tr>
			<td bgcolor="#eeeeee">备注信息：</td>
			<td colspan="3">${customerInfo.customerBz}</td>
		</tr>
	</table>


</body>
</html>