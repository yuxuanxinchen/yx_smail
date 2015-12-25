<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>角色信息</title>
<link href="<%=basePath%>/css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
	<script type='text/javascript'
	src='${basePath }/dwr/interface/roleInfo.js'></script>
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
	
// 	var htmlRole = "";
// 	function infos(id){
// 	  roleInfo.getRoleInfo(id,{
// 	    callback:function(data){
// 	       var obj = eval('('+data+')');
// 	       alert(obj['cinfo'].relations[0].menuInfo.menuName); 
	      
// 	    }
// 	  })
	  
	
// 	}
	
    </script>
    <style type="text/css">
       #datils{width:50px;height:30px;background:#141414;color:#fff;cursor:pointer;}
    </style>
  </head>
  <body> 
  
 
  
  <h2 style="text-align:center">客户详细信息</h2>
          
          
          <center>
			      <table width="35%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 角色ID</td>
				      <td align="left"> ${roleInfo.roleId } </td>
				    </tr>
				    
				     <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 角色名称</td>
				      <td align="left">
								${roleInfo.roleName }			     	 
				      
				      </td>
				    </tr>  
				     <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 角色权限</td>
				      <s:iterator value="#request.relations" id="rel">
				            <s:if test="#rel.roleRelactionAccess == 1">
				              <td>
								${rel.menuInfo.menuName }
								</td>			     	 
				          </s:if>
				      </s:iterator>
				      
				    </tr>  
			      </table>
			</form>
     </center>
          
 </body>
</html>

	