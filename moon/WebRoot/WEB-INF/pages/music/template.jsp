<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>

						    <c:forEach var="mus" varStatus="contentindex" items="${music }">
						    	<tr>
								<td>${mus.id}
								  <c:if test="${contentindex.index==0 }">
								     <input type="hidden" id="itemCount" value="${itemcount }"/>
								  </c:if>
								</td>
								<ps:permission model="music" method="title">
								<td>${mus.name }</td>
								</ps:permission>
								<ps:permission model="music" method="author">
							    <td>${mus.author }</td>
							    </ps:permission>
							    <ps:permission model="music" method="fromuser">
								<td>${mus.username }</td>
								</ps:permission>
								<ps:permission model="music" method="status">
								<td>${mus.status }</td>
								</ps:permission>
								<ps:permission model="music" method="size">
								<td>${mus.size_string}</td>
								</ps:permission>
								<ps:permission model="music" method="createTime">
								<td class="tmui-tips" tip="${yx:formatDate(mus.create_time,'yyyy-MM-dd HH:mm:ss') }" title="${yx:formatDate(mus.create_time,'yyyy-MM-dd HH:mm:ss') }">
									${yx:timeFormat(mus.create_time) }
								</td>
								</ps:permission>
								<ps:permission model="music" method="isDelete">
								<yx:if test='${mus.is_delete==0}'>
								    <yx:then><td> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isDelete" data-val="1" data-opid=${mus.id } class="red">否</a></td></yx:then>
									<yx:else><td><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isDelete" data-val="0" data-opid=${mus.id } class="green">是</a></td></yx:else>
								</yx:if>
								</ps:permission>
								<ps:permission model="music" method="hits">
								<td>${mus.hits }</td>
								</ps:permission>
								<ps:permission model="music" method="contentTitle">
								<td>${mus.title }</td>
								</ps:permission>
								<ps:permission model="music" method="sort">
								<td>${mus.sort }</td>
								</ps:permission>
								<ps:permission model="music" method="opator">
								<td><a href="javascript:void(0)" data-opid="${mus.id }" onclick="tzAdmin.remove(this);">删除</a></td>
								</ps:permission>
							</tr>
						    </c:forEach>
