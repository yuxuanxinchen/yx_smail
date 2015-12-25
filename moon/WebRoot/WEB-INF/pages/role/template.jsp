<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<c:forEach var="role" varStatus="roleindex" items="${datas}">
	<tr>
		<td>
			${role.id}
			<c:if test="${roleindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<ps:permission model="role" method="name">
		<td>${role.name}</td>	
		</ps:permission>
		<ps:permission model="role" method="user">
		<td>${role.userId}</td>	
		</ps:permission>
		<ps:permission model="role" method="createTime">
		<td class="tmui-tips" tip="${yx:formatDate(role.createTime,'yyyy-MM-dd HH:mm:ss')}">
			${yx:timeFormat(role.createTime)}
		</td>	
		</ps:permission>
		<ps:permission model="role" method="isDelete">
		<td>
			<yx:if test="${role.isDelete==0}">
				<yx:then><a href="javascript:void(0)" opid="${role.id}" mark="isDelete" val="1" onclick="tzAdmin.op(this);" class="red">否</a></yx:then>
				<yx:else><a href="javascript:void(0)" opid="${role.id}" mark="isDelete" val="0" onclick="tzAdmin.op(this);" class="green">是</a></yx:else>
			</yx:if>	
		</td>	
		</ps:permission>
		<ps:permission model="role" method="opator">
		<td>
			<a href="javascript:void(0);" data-opid="${role.id}" onclick="tzRole.user(this)"><i class="fa fa-user"></i>&nbsp;&nbsp;用户分配角色</a>
			<a href="javascript:void(0);" data-opid="${role.id}"  onclick="tzRole.permission(this)"><i class="fa fa-send"></i>&nbsp;&nbsp;授权</a>
		</td>
	</ps:permission>
	<ps:permission model="role" method="delete">
	    <td><a onclick="tzAdmin.remove(this);" data-opid="${role.id }" href="javascript:void(0)">删除</a></td>
	</ps:permission>
	/tr>
</c:forEach>
