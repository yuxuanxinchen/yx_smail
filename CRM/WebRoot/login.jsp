<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>Web CRM系统首页</title>
    <LINK href="<%=basePath%>/css/login.css" type=text/css rel=stylesheet>
   <link href="${basePath }css/rightStyle.css" rel="stylesheet"
	type="text/css">
<script type='text/javascript'
	src='${basePath }/dwr/interface/contacts.js'></script>
<script type='text/javascript'
	src='${basePath }/dwr/interface/customerInfo.js'></script>

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
    
	<script type="text/javascript">
	$(function(){
	        //点击涮新图片
            $("#nosee").click(function(){
			      $("#imgVcode").attr("src",'${baseurl}validatecode.jsp?time' + new Date().getTime());
			});
	});     
   //登录
  
    function login(){
    $.messager.progress({
					title : "稍等哦！",
					msg : "正在努力加载中....",
					interval : 10
				});
       var userName = $("#textUserLoginName").val();
       var passWord = $("#textUserPassWord").val();
       var code = $("#textCodeNumber").val();
           user.loginVaild(userName,passWord,code,{
             callback:function(data){
					$.messager.progress('close');
					$.messager.alert('小提示!', data);
					if(data=="SUCCESS"){
					   window.location.href="${basePath}index.jsp"
					  }
				}

			})

		}
	</script>
  </head>
<body >

<center>
<form name="userLoginForm"  action="user/login.action" method="post" id="f">
<table  height="100%" cellSpacing=0 cellPadding=0 border=0>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 border=0>
        <tr class=UpTr height=20>
          <td></td>
          <td><div id="DivTesy" style="color:red; font-size:12px;"></div></td> 
          <td class=VersionTitle align=right>版本:1.0
          </td>
        </tr>
        <tr class=UpTr height=65>
          <td width=20></td>
          <td colSpan=2><IMG src="images/login/logo.gif" border=0></td>
        </tr>
        <tr height=3>
          <td colSpan=3></td>
        </tr>
        <tr class=DownTr>
          <td></td>
          <td>
            <table height=204 cellSpacing=0 cellPadding=0 border=0>
              <tr height=50>
                <td colSpan=3></td>
              </tr>
              <tr height=18>
                <td width=290  background=images/login/userLogin.gif  colSpan=3></td>
              </tr>
              <tr>
                <td class=LoginLine width=2></td>
                <td width=286>
                  <table height="100%" cellSpacing=0 cellPadding=0 width="100%"  border=0>
                    <tr height=10>
                      <td colSpan=6></td>
                    </tr>
                    <tr>
                      <td class=ItemTitleFont align=right width=80 height=25>用户名：</td>
                      <td width=100><input class="inputFrm" id="textUserLoginName" name="userName" value="${param.userLoginName }"><div class="text_leftMsg" id="UserLoginNameValidateMsg"></div></td>
                      <td align="center" rowSpan=2><input type="button"  src="images/login/userLogin_button.gif"  border=0 value="登录" onclick="login()"></td>
                    </tr>
                    <tr>
                      <td class=ItemTitleFont align=right height=25>密　码：</td>
                      <td><input class="inputFrm" id="textUserPassWord" type="password"  name="passWord"/><div class="text_leftMsg" id="userPassWordValidateMsg"></div></td>
                    </tr>
                    <tr>
                      <td class=ItemTitleFont align=right height=25>验证码：</td>
                      <td><input class="loginyzm" id="textCodeNumber" name="codeNumber" maxlength="4"/>
                      <a href="javascript:;" id="nosee"><img id="imgVcode" src="${baseurl}validatecode.jsp?time' + new Date().getTime()"  class="yzm_img" />
                      <div class="text_leftMsg" id="codeNumberValidateMsg"></div>
                      </td>          
                    </tr>
                  </table>
                  </td>
                <td class=LoginLine width=2></td>
              </tr>
              <tr height=11>
                <td width=290 background=images/login/userLogin_down.gif  colSpan=3></td>
              </tr>
                </table>
              </td>
          <td width=228><IMG src="images/login/logo_bg.gif" border=0></td>
          </tr>
          <tr class=DownTr height=24>
              <td></td>
              <td class=VersionTitle vAlign=bottom align=right  background=images/login/logo_copyright_bg.gif colSpan=2>
              <a class=close href="http://www.hao123.com/"  target=_blank>版权所有 盗版必究</a></td>
          </tr>
          </table>
          </td>
          </tr>
          <tr height="3%">
              <td></td>
          </tr>
      </table>
    </form>
    </center>
      </body>
</html>
