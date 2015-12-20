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
								<th>${content.isTop }</th>	
								<th>${content.push }</th>	
								<th>${content.isDelete }</th>	
								<th>${content.isComment }</th>	
								<th>${content.status }</th>	
								<th>操作</th>
							</tr>
						    </c:forEach>
