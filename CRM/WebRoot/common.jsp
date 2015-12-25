<%-- <%@ taglib uri="http://java.sun.com/jstl/core"  prefix="c"%> --%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  pageContext.setAttribute("basePath", basePath);

%>



