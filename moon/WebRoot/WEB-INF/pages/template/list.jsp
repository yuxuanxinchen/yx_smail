<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
						    <c:forEach var="content" varStatus="contentindex" items="${datas }">
						    	<tr>
								<th>${content.id }
								  <c:if test="${contentindex.index==0 }">
								     <input type="hidden" id="itemCount" value="${itemcount }"/>
								  </c:if>
								</th>
								<th>${content.title } <span class="up"></span> <span class="down"></span></th>	
								<th>${content.channelId }</th>	
								<th>${content.userId }</th>	
								<th class="time_tip" tip="${yx:formatDate(content.createTime,'yyyy-MM-dd HH:mm:ss') }">
									${yx:timeFormat(content.createTime) }
								</th>	
								
								<yx:if test='${content.isTop==0}'>
									 <yx:then><th> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isTop" data-val="1" data-opid=${content.id } class="red">是</a></th></yx:then>
									 <yx:else><th><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isTop" data-val="0" data-opid=${content.id } class="green">否</a></th></yx:else>
								</yx:if>
								
								<yx:if test='${content.push==0}'>
									 <yx:then><th> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="push" data-val="1" data-opid=${content.id } class="red">是</a></th></yx:then>
									 <yx:else><th><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="push" data-val="0" data-opid=${content.id } class="green">否</a></th></yx:else>
								</yx:if>
								
								<yx:if test='${content.isDelete==0}'>
									 <yx:then><th> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isDelete" data-val="1" data-opid=${content.id } class="red">是</a></th></yx:then>
									 <yx:else><th><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isDelete" data-val="0" data-opid=${content.id } class="green">否</a></th></yx:else>
								</yx:if>
								
								<yx:if test='${content.isComment==0}'>
									 <yx:then><th> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isComment" data-val="1" data-opid=${content.id } class="red">是</a></th></yx:then>
									 <yx:else><th><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="isComment" data-val="0" data-opid=${content.id } class="green">否</a></th></yx:else>
								</yx:if>
								
								
								<yx:if test='${content.status==0}'>
									 <yx:then><th> <a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="status" data-val="1" data-opid=${content.id } class="red">是</a></th></yx:then>
									 <yx:else><th><a href="javascript:void(0)" onclick="tzAdmin.op(this)" data-mark="status" data-val="0" data-opid=${content.id } class="green">否</a></th></yx:else>
								</yx:if>
								
								
								
								<th>操作</th>
							</tr>
						    </c:forEach>
