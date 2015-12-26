<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<c:forEach var="p" varStatus="permissionindex" items="${permission}">
	<tr>
		<td>
		${p.id}
			<c:if test="${permissionindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td>${p.name}</td>	
		<td>${p.userId}</td>	
		
		<td class="tmui-tips" tip="${yx:formatDate(p.createTime,'yyyy-MM-dd HH:mm:ss')}">
			${yx:timeFormat(p.createTime)}
		</td>	
		<td>${p.url}</td>
		<td>${p.model}</td>
		<td>${p.parentId}</td>
		<td>${p.method}</td>
		<td>${p.adminUserName}</td>
		<td>${p.description}</td>
		<td>
			<yx:if test="${p.isDelete==0}">
				<yx:then><a href="javascript:void(0)" opid="${p.id}" mark="isDelete" val="1" onclick="tzAdmin.op(this);" class="red">否</a></yx:then>
				<yx:else><a href="javascript:void(0)" opid="${p.id}" mark="isDelete" val="0" onclick="tzAdmin.op(this);" class="green">是</a></yx:else>
			</yx:if>	
		</td>	
		<td><a href="javascript:void(0);">操作</a></td>
	</tr>
</c:forEach>
