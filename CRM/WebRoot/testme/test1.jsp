<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/common.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="${basePath }js/divwin.js"></script>
    <script type="text/javascript">
    
    window.onload = function(){
    
    var myWin;
 		var registerForm = '<form action="">'+
 							'用户名：<input type="text" name="username"/><br>' +
 							'密码：<input type="password" name="password"/><br>' +
 							'<input type="submit" value="注册">' +
 							'<input type="reset" value="重置">' +
 							'</form>'
    
    if(myWin == null) {
 				myWin = new xWin("1",300,200,200,200,"注册新用户",registerForm);
 			}else {
 				myWin.show();
 			}
    }
 	</script>
<body>


</body>
</html>