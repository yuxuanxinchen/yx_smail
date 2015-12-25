<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>客户添加</title>
	<link href="<%=basePath%>/css/rightStyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${basePath }easyui/jquery.min.js"></script>
<script type='text/javascript' src='${basePath }/dwr/engine.js'></script>
<script type='text/javascript' src='${basePath }/dwr/interface/customerInfo.js'></script>
<script type='text/javascript' src='${basePath }/dwr/util.js'></script>
    <script type="text/javascript">
       function deleteCustomerInfo(obj){
	     var isOk = window.confirm("是否确认删除该记录");
	        if(isOk){
	         customerInfo.deleteCustomerInfo(obj,{
	               callback:function(data){
	                 alert(data);
	                 location.reload();
	               }
	             });
	        }  
       }
        
       function alldelete(){
            var isOk = window.confirm("是否批量删除!");
            if(isOk){
            var selects = DWRUtil.getValue("selected")
            customerInfo.deleteCheckedAllCustomerInfo(selects,{
               callback:function(data){
                  window.location.reload();
                  alert(data);
                  
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
    <style type="text/css">
       #datils{width:50px;height:30px;background:#141414;color:#fff;cursor:pointer;}
    </style>
  </head>
  <body> 
  <h2 style="text-align:center">客户信息</h2>
	  <form action="sjzd/customerInfoAll.action" method="post">
		  <table width="100%" height="23" border="0" cellpadding="0" cellspacing="0">
		         <tr>
			         <td colspan="2" width="100%" align="center">
			           请输入查询条件：
				         <select name="type" class="textarea">
		                  <option value="customerMc" ${customerMc }> 客户名称</option>
			              <option value="customerAddress" ${customerAddress } >客户地址</option>
			              <option value="customerSssf" ${customerSssf }>所属省份</option>
			              <option value="customerSscs" ${customerSscs }>所属城市</option>
			              <option value="customerYb" ${customerYb }>公司邮编</option>
			              <option value="customerYhzh" ${customerYhzh }>银行账号</option>
			              <option value="customerWz" ${customerWz }>公司网址</option>
			              <option value="customerDh" ${customerDh }>公司电话</option>
			              <option value="customerBz" ${customerBz }>备注信息</option>
				         </select>
				         <input name="key"  type="text" class="txt_grey" size="24" value="${key}">
				         <input type="submit" class="subt_grey" value="搜索">
			         </td>
		         </tr>
		  </table>
	  </form>
  
	  <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
	          <tr bgcolor="#eeeeee" style="padding:5px;">
				      <td align="center"> <input type="checkbox" name="selectedss" onclick="allCheckBox();" id="selectAll" ></td>
				      <td align="center"> 编号</td>
				      <td align="center"> 客户名称</td>
				      <td align="center"> 客户性质</td>
				      <td align="center"> 客户类型</td>
				      <td align="center"> 客户级别</td>
				      <td align="center"> 公司网址</td>
				      <td align="center"> 公司电话</td>
				      <td align="center"> 登记人</td>
				      <td align="center"> 查看详情</td>
				      <td align="center"> 修改</td>
				      <td align="center"> 删除</td>
			  </tr>
			  <s:iterator value="#request.customerinfos" id="cus">
			    
				   <tr bgcolor="#eeeeee" style="padding:5px;">
					      <td align="center" style="width:20px"> <input type="checkbox" onclick="allChecked();" value="<s:property value="#cus.customerId"/>" name="selected" id="selectAll" ></td>
					      <td align="center" style="width:20px"> <s:property value="#cus.customerId"/></td>
					      <td align="center" style="width:50px"> <s:property value="#cus.customerMc"/></td>
					      <td align="center" style="width:50px"> <s:property value="#cus.sjzdxxByCustomerXz.sjzdxxMc"/></td>
					      <td align="center" style="width:50px"> <s:property value="#cus.sjzdxxByCustomerLx.sjzdxxMc"/> </td>
					      <td align="center" style="width:50px"> <s:property value="#cus.dataLevel.levelMc"/> </td>
					      <td align="center" style="width:70px"> <s:property value="#cus.customerWz"/></td>
					      <td align="center" style="width:50px"><s:property value="#cus.customerDh"/> </td>
					      <td align="center" style="width:50px"> <s:property value="#cus.customerDjr"/></td>
					      <td align="center" style="width:30px"> <a id="datils" href="sjzd/customerInfoDatils.action?customerInfoId=${cus.customerId }">查看详细</a> </td>
					      <td align="center" style="width:20px"><a id = "datils" href="${basePath }ajax/updateComtomerInfoBefore.action?customerId=${cus.customerId }";>修改</a> </td>
					      <td align="center" style="width:20px"><a id="datils" onclick="deleteCustomerInfo(<s:property value="#cus.customerId"/>)">删除</a> </td>
				  </tr>
				  </s:iterator>
				  <tr style="padding:5px;font-size: 12px;">
				  <td colspan="12" align="center">
				      <s:if test="#request.page.currentPage">
				         <a href="sjzd/customerInfoAll.action?currentPage=1">首页</a>
				         <a href="sjzd/customerInfoAll.action?currentPage=${request.currentPage-1}">上一页</a>
				      </s:if>
				      <s:else>
				       首页
				       上一页
				      </s:else>
				      
				       <s:if test="#request.page.hasNextPage">
				         <a href="sjzd/customerInfoAll.action?currentPage=${request.currentPage+1}">下一页</a>
				         <a href="sjzd/customerInfoAll.action?currentPage=${request.page.totalPage }">尾页</a>
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
		 <input type="button" value="添加" onclick="window.open('${basePath}ajax/customerInfoAjax.action');" style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>
		 <input type="button" value="批量删除" onclick="alldelete()" style='display:bolck;width:100%;height:50px;background:#141414;color:#fff;font-size:30px;line-height:50px;text-align:center;letter-space:1em;box-shadow:3px 4px 5px #141414;border-radius:10px;cursor:pointer'>
  </body>
</html>

	