<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<c:forEach var="adminuser" varStatus="adminuserindex" items="${datas}">
	<tr>
		<td>
			${adminuser.id}
			<c:if test="${adminuserindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td>${adminuser.username}</td>	
		<td>${adminuser.email}</td>	
		<td>${adminuser.telephone}</td>	
		<td class="tmui-tips" tip="${yx:formatDate(adminuser.createTime,'yyyy-MM-dd HH:mm:ss')}">
			${yx:timeFormat(adminuser.createTime)}
		</td>	
		<td>
			<yx:if test="${adminuser.isDelete==0}">
				<yx:then><a href="javascript:void(0)" data-opid="${adminuser.id}" data-mark="isDelete" data-val="0" onclick="tzAdmin.op(this);" class="red">否</a></yx:then>
				<yx:else><a href="javascript:void(0)" data-opid="${adminuser.id}" data-mark="isDelete" data-val="1" onclick="tzAdmin.op(this);" class="green">是</a></yx:else>
			</yx:if>	
		</td>	
		<td>
			<yx:if test="${adminuser.forbiden==0}">
				<yx:then><a href="javascript:void(0)" data-opid="${adminuser.id}" data-mark="forbiden" data-val="1" onclick="tzAdmin.op(this);" class="red">是</a></yx:then>
				<yx:else><a href="javascript:void(0)" data-opid="${adminuser.id}" data-mark="forbiden" data-val="0" onclick="tzAdmin.op(this);" class="green">否</a></yx:else>
			</yx:if>	
		</td>	
		<td><a href="javascript:void(0);" data-opid="${adminuser.id}" onclick="tzAdmin.remove(this)">删除</a></td>
	</tr>
</c:forEach>