<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<c:forEach var="permission" varStatus="permissionindex" items="${datas}">
	<tr>
		<td>
			${permission.id}
			<c:if test="${permissionindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td>${permission.name}</td>	
		<td>${permission.userId}</td>	
		<td class="tmui-tips" tip="${yx:formatDate(permission.createTime,'yyyy-MM-dd HH:mm:ss')}">
			${yx:timeFormat(permission.createTime)}
		</td>	
		<td>
			<yx:if test="${permission.isDelete==0}">
				<yx:then><a href="javascript:void(0)" opid="${permission.id}" mark="isDelete" val="1" onclick="tzAdmin.op(this);" class="red">否</a></yx:then>
				<yx:else><a href="javascript:void(0)" opid="${permission.id}" mark="isDelete" val="0" onclick="tzAdmin.op(this);" class="green">是</a></yx:else>
			</yx:if>	
		</td>	
		<td>
			<yx:if test="${permission.status==0}">
				<yx:then><a href="javascript:void(0)" opid="${permission.id}" mark="status" val="1" onclick="tzAdmin.op(this);" class="red">否</a></yx:then>
				<yx:else><a href="javascript:void(0)" opid="${permission.id}" mark="status" val="0" onclick="tzAdmin.op(this);" class="green">是</a></yx:else>
			</yx:if>	
		</td>	
		<td><a href="javascript:void(0);">未删除</a></td>
	</tr>
</c:forEach>
