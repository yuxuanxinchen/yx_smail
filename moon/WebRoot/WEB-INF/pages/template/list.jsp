<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>

						    <c:forEach var="content" varStatus="contentindex" items="${datas }">
						    	<tr>
								<td>${content.id }
								  <c:if test="${contentindex.index==0 }">
								     <input type="hidden" id="itemCount" value="${itemcount }"/>
								  </c:if>
								</td>
								<td class="keys">${content.title } <span class="up"></span> <span class="down"></span></td>	
								<td>${content.channelId }</td>	
								<td>${content.userId }</td>	
								<td class="tmui-tips" tip="${yx:formatDate(content.createTime,'yyyy-MM-dd HH:mm:ss') }" title="${yx:formatDate(content.createTime,'yyyy-MM-dd HH:mm:ss') }">
									${yx:timeFormat(content.createTime) }
								</td>	
								<ps:permission model="content" method="top">
								<yx:if test='${content.isTop==0}'>
									 <yx:then><td> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isTop" data-val="1" data-opid=${content.id } class="red">是</a></td></yx:then>
									 <yx:else><td><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isTop" data-val="0" data-opid=${content.id } class="green">否</a></td></yx:else>
								</yx:if>
								</ps:permission>
								<ps:permission model="content" method="essence">
								<yx:if test='${content.push==0}'>
									 <yx:then><td> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="push" data-val="1" data-opid=${content.id } class="red">是</a></td></yx:then>
									 <yx:else><td><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="push" data-val="0" data-opid=${content.id } class="green">否</a></td></yx:else>
								</yx:if>
								</ps:permission>
								<ps:permission model="content" method="delete">
								<yx:if test='${content.isDelete==0}'>
									 <yx:then><td> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isDelete" data-val="1" data-opid=${content.id } class="red">是</a></td></yx:then>
									 <yx:else><td><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isDelete" data-val="0" data-opid=${content.id } class="green">否</a></td></yx:else>
								</yx:if>
								</ps:permission>
								<ps:permission model="content" method="comment">
								<yx:if test='${content.isComment==0}'>
									 <yx:then><td> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isComment" data-val="1" data-opid=${content.id } class="red">是</a></td></yx:then>
									 <yx:else><td><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isComment" data-val="0" data-opid=${content.id } class="green">否</a></td></yx:else>
								</yx:if>
								</ps:permission>
								<ps:permission model="content" method="send">
								<yx:if test='${content.status==0}'>
									 <yx:then><td> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="status" data-val="1" data-opid=${content.id } class="red">是</a></td></yx:then>
									 <yx:else><td><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="status" data-val="0" data-opid=${content.id } class="green">否</a></td></yx:else>
								</yx:if>
								</ps:permission>
								
								
								<td><a href="javascript:void(0)" data-opid="${content.id }" onclick="tzAdmin.remove(this);">删除</a></td>
							</tr>
						    </c:forEach>
