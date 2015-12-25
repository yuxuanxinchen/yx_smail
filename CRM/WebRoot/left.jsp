<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ include file="/common.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>导航栏</title>
    
    <script type="text/javascript" src="js/dtree.js"></script> 
    <link rel="StyleSheet" href="css/dtree.css" type="text/css" /> 
    <link rel="StyleSheet" href="css/leftStyle.css" type="text/css" /> 
    
    <!-- dwr要引用的js engine.js文件是固定的；DictionaryTypeDAO.js文件的命名是根据 dwr.xml 的javascript="?"里面的 -->
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/interface/SjzdxxDAO.js"></script>
  </head>
  <body>
  
  <p> <a href="javascript:d.openAll();">打开全部</a> |  <a href="javascript:d.closeAll();">关闭全部</a></p>
  
  
     
      
      
				      
<script type="text/javascript">
        
        var sjzdflArr = [];
        DWREngine.setAsync(false);  //设置为同步
        SjzdxxDAO.findAll({
          callback:function(data){
             for(var i = 0 ; i < data.length; i++){
             	sjzdflArr=data;
             }
             DWREngine.setAsync(true);
          }
        });
        
        
       var d = new dTree('d');
		       d.config.useCookies = false;//不使用cookies
		       d.config.useStatusText = true; //状态栏显示文本
		       d.config.closeSameLevel = true; //关闭同一层次的其他节点
		       
      //dTree.prototype.add = function(id, pid, name, url, title, target, icon, iconOpen, open) 
      		 d.add(0,-1,"客户关系管理系统");
             
        //一级导航  
// 		       d.add(1,0,"客户信息");
// 		       d.add(2,0,"客户服务");
// 		       d.add(3,0,"日程/项目");
// 		       d.add(4,0,"项目管理");
// 		       d.add(5,0,"系统管理");
// 		       d.add(6,0,"数据字典");
// 		       d.add(7,0,"消息提醒");
		       
		       
		       <c:forEach items="${sessionScope.rs}" var="isd" varStatus="status">
            <c:if test="${isd.roleRelactionAccess == 1}">
                d.add(${status.index+1 },0,"${isd.menuInfo.menuName}");
            </c:if>
      </c:forEach>
		       
		       d.add(11,1,"客户","sjzd/customerInfoAll.action?currentPage=1","","main");
		       d.add(12,1,"联系人","cts/contactsInfopage.action?currentPage=1","","main");
		       
		       d.add(21,2,"客户投诉","cpl/sComplain.action?currentPage=1","","main");
		       d.add(22,2,"客户报表P","${basePath}form/complainCharts.jsp","","main");
		       d.add(23,2,"客户报表B","${basePath}form/complainChartsBar.jsp","","main");
		       
		       d.add(31,3,"日程","${basePath}scdl/schedule.action","","main");
		       d.add(32,3,"任务","${basePath}mes/mession.action?currentPage=1","","main");
		       
		       d.add(41,4,"项目立项","${basePath}pc/prbegin.action","","main");
		       d.add(42,4,"项目审批","${basePath}pc/project.action","","main");
		       d.add(43,4,"项目进程","${basePath}pc/prProcess.action","","main");
		       d.add(44,4,"项目总结","${basePath}pc/prsummarize.action","","main");
		       d.add(45,4,"项目交易","${basePath}pc/prbusiness.action","","main");
		    
		       d.add(51,5,"用户","user/user.action","","main");
		       d.add(52,5,"角色","role/roleInfo.action","","main");
		       //Node(id, pid, name, url, title, target, icon, iconOpen, open)
		       d.add(61,6,"数据字典类型","sjzd/getSjzdfl.action?currentPage=1","","main")
		       var i = 0;
		       for( ; i < sjzdflArr.length;i++){
		       		if(sjzdflArr[i].sjzdflMc != null && sjzdflArr[i].sjzdflMc != "" && sjzdflArr[i].isOk == 'Y'){
		       			d.add(61+i,6,sjzdflArr[i].sjzdflMc,"sjzd/gSjzdxx.action?sjzdflId="+sjzdflArr[i].sjzdflId,"","main")
		       		}
		       }
		       
		       d.add(62+i,6,"客户级别","sjzd/customerLevel.action","","main");
		       d.add(71,7,"短信息");
		       document.write(d);
             
       

    </script>
    
    
    
  </body>
</html>
