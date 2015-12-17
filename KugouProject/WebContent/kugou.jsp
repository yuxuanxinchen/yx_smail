<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>�ṷ��ҳ</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="Shortcut Icon" href="images/favicon.ico">
	</head>
	<body>
		<div>
			<script type="text/javascript">
				function getOs() 
				{ 
				    var OsObject = ""; 
				   if(navigator.userAgent.indexOf("MSIE")>0) { 
				        return "MSIE";
				   } 
				   if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){ 
				        return "Firefox"; 
				   } 
				   if(isSafari=navigator.userAgent.indexOf("Safari")>0) { 
				        return "Safari"; 
				   }  
				   if(isCamino=navigator.userAgent.indexOf("Camino")>0){ 
				        return "Camino"; 
				   } 
				   if(isMozilla=navigator.userAgent.indexOf("Gecko")>0){ 
				        return "Gecko"; 
				   } 
				} 
				if(getOs() == "MSIE"){
					document.write("<link rel='stylesheet' type='text/css' href='css/IEstyles.css'>");
				}
				if(getOs() == "Firefox"){
					document.write("<link rel='stylesheet' type='text/css' href='css/FFstyles.css'>");
				}
				if(getOs() == "Safari"){
					document.write("<link rel='stylesheet' type='text/css' href='css/GGstyles.css'>");
				}
				if(getOs() == "Camino"){
					alert("Camino");
				}
				if(getOs() == "Gecko"){
					alert("Gecko");
				}
			</script>
			<script type="text/javascript" src="js/jquery-1.9.js"></script>
			<script type="text/javascript" src="js/Abandon.js"></script>
			<!-- ͷ����ϵ -->
			<div class="logo">
				<div class="logo_1"></div>
				<div class="logo_2">
					<form action="SearchSong" method="post">
					<span>
						<input id="logo1" type="text" value="�Ѹ��֡�����" name="show" class="logo_2_1"/>
						<input type="submit" value=""class="logo_2_2"/>
					</span>
					</form>
				</div>
				<div class="logo_3">
					<div class = "logo_3_1">
					<c:if test="${user != null}">
						<span class="logo_3_1_0">�û�<a href="#" title="�����ȥ��ȫ����" style="color:red">${user.userName}</a>�ѵ�½�ɹ���</span>
					</c:if>
					<c:if test="${user == null}">
						<span class = "logo_3_1_1">
						<a href="Register.jsp" title="���û�ע��">���û�ע��</a>
						</span>
						<span class = "logo_3_1_2">
							<a href="#" id = "qq" title="���̵�½" id="login1" onclick="loginInfo()">���̵�½</a>
						</span>
					</c:if>
					</div>
					<div class ="logo_3_2">
						<span class = "logo_3_2_1">
							<a href="#" title="��ҳ������">��ҳ������</a>
						</span>
						<span class = "logo_3_2_2">
							<a href=# title="�ṷ��Ϸ">�ṷ��Ϸ</a>
						</span>
						<span class = "logo_3_2_3">
							<a href=# title="���ؿͻ���">���ؿͻ���</a>
						</span>
					</div>
				</div>
			</div>
			<!-- ������Ϣ -->
			<div class="nav">
				<div id="nva-1" class="nva-1">
					<ul>
						<li><a href="#" title="�ֿ�">�ֿ�</a></li>
						<li><a href="xu/��̨Ƶ��.html" title="��̨">��̨</a></li>
						<li><a href="#" title="MV">MV</a></li>
						<li><a href="#" title="��Ѷ">��Ѷ</a></li>
						<li><a href="xu/������.html" title="��Ů�㳡">��Ů�㳡</a></li>
						<li><a href="#" title="���ִ���">���ִ���</a></li>
					</ul>
				</div>
				<div class="nav_0"></div>
				<div class="nav_2">
					<ul>
						<li><a href = "#" title="VIP����">VIP����</a></li>
						<li><a href = "#" title="�ͷ�����">�ͷ�����</a></li>
						<li><a href = "#" title="��Ʒ����">��Ʒ����</a></li>
					</ul>
				</div>
			</div>
			<!-- С������Ϣ,��������� -->
			<div class="hover">
				<div class="hover_1">
					<ul id="hover-1">
						<li><a href="#" title="�Ƽ�">�Ƽ�</a></li>
						<li><a href="#" title="���а�">���а�</a></li>
						<li><a href="#" title="����">����</a></li>
						<li><a href="#" title="��ѡ">��ѡ</a></li>
						<li><a href="#" title="�ø�">�ø�</a></li>
						<li><a href="#" title="������">������</a></li>
					</ul>
				</div>
				<div class="hover_2"></div>
			</div>
			<!-- ��ͼƬ���� -->
			<div class="banner">
			<script type="text/javascript" src="js/jquery-1.9.js"></script>
			<script type="text/javascript" src="js/Change.js"></script>
				<div class="banner_1" >
						<div id="banner">
							 <c:forEach items="${list }" var="img" varStatus="status">
							 	<a href="#">
							 		<img src="${img.imgURL }"/>
							 	</a>
							 </c:forEach>
						<div id = "slide">
							<c:forEach begin = "1" end = "6" step="1" var = "index">
									<span>${index}</span>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="banner_2">
					<div class="banner_2_0">
						<ul>
							<li class="banner_2_1">
								<a href="#" title="�ṷ���ֺе��԰��������">
									<i>v7506</i>
								</a>
							</li>
							<li class="banner_2_2">
								<a href="#" title="�ṷ���ֺа�׿���������">
									<i>v5.6</i>
								</a>
							</li>
							<li class="banner_2_3">
								<a href="#" title="�ṷ���ֺ�iPhone���������">
									<i>v3.5</i>
								</a>
								
							</li>				
						</ul>
					</div>
				</div>
			</div>
			<!-- ���¸��� -->
			<div class="wrap">
				<div class="wrap_1">
					<p class="wrap_1_1">
						<strong class="wrap_1_1_1">���¸���</strong>
						<span class="wrap_1_1_2"><a href="#" title="����">����</a></span>
						<span class="wrap_1_1_3"><a href="#" title="����">����</a></span>
						<span class="wrap_1_1_4"><a href="#" title="�Ƽ���">�Ƽ���</a></span>
						<strong class="wrap_1_1_5"><a href="#" title="�ṷ���ֺ�2013�ٷ��������">�ṷ���ֺ�2013�ٷ��������</a></strong>
						<a href="#" title="���������Ƽ�" class="wrap_1_1_6">����</a>
					</p>
					<div class="wrap_1_2">
					<script type="text/javascript" src="js/Wrap.js"></script>
						<div  class="wrap_1_2_1">
							1
						</div>
						<div  class="wrap_1_2_2">
						2
						</div>
						<div  class="wrap_1_2_3">
							<table class="wrap_1_2_3_1" >
								<c:forEach items="${song }" begin = "0" end = "5" var="wrap" varStatus="status">
									<tr  <c:if test="${status.index % 2 != 0 }">class="wrap_1_2_3_1_1"</c:if><c:if test="${status.index % 2 == 0 }">class="wrap_1_2_3_1_2"</c:if>>
										<td style="width: 340px;height: 55px;margin: 0px;padding: 0px;">
											<div style="float: left;width: 50px;height: 53px;line-height: 50px;text-align: center;font-weight: bold">
												${status.index+1 }
											</div>
											<div style="float: left;width: 180px;">
												<div style="float: left;width: 180px;color:#282828;font-size:12px;height: 30px;line-height: 30px;">${wrap.songName }</div>
												<div style="float: left;width: 180px;color:#C3C9CA;font-size:12px;">
												${wrap.songWords }
												</div>
											</div>
											<div style="float: left;width: 70px;height:53px;line-height: 50px;font-size:12px;text-align: center; ">
												${wrap.songSinger }
											</div>
										</td>
									</tr>
								</c:forEach>
							</table>
							<table class="wrap_1_2_3_2" >
								<c:forEach items="${song }" begin = "0" end = "5" var="wrap" varStatus="status">
									<tr  <c:if test="${status.index % 2 != 0 }">class="wrap_1_2_3_1_1"</c:if><c:if test="${status.index % 2 == 0 }">class="wrap_1_2_3_1_2"</c:if>>
										<td style="width: 340px;height: 55px;margin: 0px;padding: 0px;cursor: pointer;">
											<div style="float: left;width: 50px;height: 53px;line-height: 50px;text-align: center;font-weight: bold">
												${status.index+1 }
											</div>
											<div style="float: left;width: 180px;">
												<div style="float: left;width: 180px;color:#282828;font-size:12px;height: 30px;line-height: 30px;">${wrap.songName }</div>
												<div style="float: left;width: 180px;color:#C3C9CA;font-size:12px;">
												${wrap.songWords }
												</div>
											</div>
											<div style="float: left;width: 70px;height:53px;line-height: 50px;font-size:12px;text-align: center; ">
												${wrap.songSinger }
											</div>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<!-- �ֿ� -->
				<div class="wrap_2">
					<div class="wrap_2_1">
						<h4>�ֿ�</h4>
					</div>
					<div class="wrap_2_2">
						<ul>
							<li class="wrap_2_2_1">
								<span>�и���</span>
								<a href="#" title="ɽҰ">ɽҰ</a>
								<a href="#" title="�ܽ���">�ܽ���</a>
								<a href="#" title="�ֿ���">�ֿ���</a>
								<a href="#" title="֣Դ">֣Դ</a>
								<a href="#" title="����Ѹ">����Ѹ</a>
								<a href="#" title="������">������</a>
								<a href="#" title="�Ž�">�Ž�</a>
								<a href="#" title="���»�">���»�</a>
								<a  href="#" title="�����и���" class="wrap_2_2_1_1">����</a>
							</li>
							<li class="wrap_2_2_1">
								<span>Ů����</span>
								<a href="#" title="������">������</a>
								<a href="#" title="������">������</a>
								<a href="#" title="����">����</a>
								<a href="#" title="����">����</a>
								<a href="#" title="�Ż���">�Ż���</a>
								<a href="#" title="����">����</a>
								<a href="#" title="��ɯ">��ɯ</a>
								<a href="#" title="����ӱ">����ӱ</a>
								<a  href="#" title="����Ů����" class="wrap_2_2_1_1">����</a>
							</li>
							<li class="wrap_2_2_2">
								<span>��ɫ����</span>
								<a href="#" title="������">������</a>
								<a href="#" title="DJ����">DJ����</a>
								<a href="#" title="��Ů�Գ�">��Ů�Գ�</a>
								<a href="#" title="�������">�������</a>
								<a href="#" title="��Ӱ����">��Ӱ����</a>
								<a href="#" title="�����ϸ�">�����ϸ�</a>
								<a  href="#" title="������ɫ����" class="wrap_2_2_1_1">����</a>
							</li>
							<li class="wrap_2_2_3">
								<span>ȫ����</span>
								<a href="#" title="ȫ�����а�">ȫ�����а�</a>
								<a href="#" title="����Billboard">����Billboard</a>
								<a href="#" title="���RTHK��">���RTHK��</a>
								<a href="#" title="CHANNEL[V]">CHANNEL[V]</a>
								<a  href="#" title="����������" class="wrap_2_2_1_1">����</a>
							</li>
							<li class="wrap_2_2_1">
								<span>���ֵ�̨</span>
								<a href="#" title="�ȸ�">�ȸ�</a>
								<a href="#" title="������">������</a>
								<a href="#" title="ҡ��">ҡ��</a>
								<a href="#" title="������">������</a>
								<a href="#" title="����">����</a>
								<a href="#" title="80��">80��</a>
								<a href="#" title="����">����</a>
								<a href="#" title="ŷ��">ŷ��</a>
								<a  href="#" title="�����̨����" class="wrap_2_2_1_1">����</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- �Ȱ�TOP10 -->
			<div class="hot">
				<div class="hot_1">
					<div class="hot_1_1">
						<div class="hot_1_1_1">
							<span>
							�Ȱ�Top10
							</span>
							<span>
								<a href="#" title="�¸�Top10">����</a>
							</span>
							<span>
								<a href="#" title="�Ȱ�Top10">����</a>
							</span>
							<span>
								<a href="#" title="�����������а�">����</a>
							</span>
						</div>
						<div class="hot_1_1_2">
							<table id="hot1" border="0" cellpadding="0" cellspacing="0">
							<c:forEach items="${songHeat }" var="song" begin="0"  end="9" varStatus="status">
								<tr  <c:if test="${status.index % 2 != 0 }">class="hot_1_1_2_8"</c:if><c:if test="${status.index % 2 == 0 }">class="hot_1_1_2_9"</c:if>>
									<td>
									<a href="#" title="${song.songName }">
										<span class="hot_1_1_2_1">
											${status.index+1 }
										</span>
										<span class="hot_1_1_2_2">
											${song.songName }
										</span>
									</a>
									</td>
								</tr>
							</c:forEach>
						</table>
							<div class="hot_1_1_3">
								<a></a>
							</div>
						</div>
					</div>
					<div class="hot_1_2">
						<div class="hot_1_2_1">
							<span>ȫ���Ȱ�</span>
							<span><a href="#"title="���RTHK��̨��">���</a></span>
							<span><a href="#"title="̨��Hito��">̨��</a></span>
							<span><a href="#"title="Ӣ��������">Ӣ��</a></span>
							<span><a href="#"title="����BillBoard��">����</a></span>
							<span><a href="#"title="�����������а�">����</a></span>
						</div>
						<div class="hot_1_2_2">
							<div class="hot_1_1_2">
								<table id="hot1" border="0" cellpadding="0" cellspacing="0">
								<c:forEach items="${songHeat }" var="song" begin="0"  end="9" varStatus="status">
									<tr  <c:if test="${status.index % 2 != 0 }">class="hot_1_1_2_8"</c:if><c:if test="${status.index % 2 == 0 }">class="hot_1_1_2_9"</c:if>>
										<td>
										<a href="#" title="${song.songName }">
											<span class="hot_1_1_2_1">
												${status.index+1 }
											</span>
											<span class="hot_1_1_2_2">
												${song.songName }
											</span>
										</a>
										</td>
									</tr>
								</c:forEach>
								</table>
							<div class="hot_1_1_3">
								<a></a>
							</div>
						</div>
						</div>
					</div>
				</div>
				<div class="hot_2">
					<div class="hot_2_1">
						<h4>�����׷�</h4>
					</div>
					<div class="hot_2_2">
						<ul>
							<li class="hot_2_2_1">
								<a href="#" title="������2����Ӱԭ����">
									<img src="images/20130717135149161722.jpg" />
									<span class="hot_2_2_1_1"></span>
									<i>������2����Ӱԭ
									<br />
									����
									<br />
										�����׷�
									</i>
								</a>
							</li>
							<li class="hot_2_2_1">
								<a href="#" title="��³��׿�����һ�����ɡ�">
									<img src="images/20130717114143612635.jpg"/>
									<span class="hot_2_2_1_1"></span>
									<i>��³��׿����ɽ
									<br />
									��һ�����ɡ�
									<br />
										�����׷�
									</i>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- ����ʢ�� -->
			<div class="party">
				<div class="party_1">
					<div class="party_1_1">
						<div class="party_1_1_1">����ʢ��</div>
						<div class="party_1_1_2"><a href="#" title="��̨">��̨</a></div>
						<div class="party_1_1_3"><a href="#" title="��ѡ��">��ѡ��</a></div>
						<div class="party_1_1_4"><a href="#" title="�ṷ���ֺ�2013�ٷ��������">�ṷ���ֺ�2013�ٷ��������</a></div>
						<div class="party_1_1_5"><a href="#" title="����">����</a></div>
					</div>
					<div class="party_1_2">
						<div class="party_1_2_1">
							<ul>
								<c:forEach items="${songRadio }" var="song" begin="0"  end="14" varStatus="status">
								
									<li>
									
										<a href="#" title="${song.songWords }">
											<div class="party_1_2_1_1">
												<img src="${song.songImg }"/>
											</div>
											<em>${song.songName }
												<b></b>
											</em>
											<div class="party_1_2_1_2">
												${song.songSinger }
											</div>
										</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="party_2">
					<div class="party_2_1">
						<div class="party_2_1_1">
							<a href="#" title="ԭ������">ԭ������</a>
						</div>
						<div class="party_2_1_2">
							<a href="#" title="��Ů����">��Ů����</a>
						</div>
						<div class="party_2_1_3">
							<a href="#" title="����">����</a>
						</div>
					</div>
					<div  class="party_2_2">
					<div class="party_2_2_1">
						<ul>
							<c:forEach items="${songOriginal}" var="original" begin="0" end="0" varStatus="status">
								<li class="party_2_2_1_1">
									<span class="party_2_2_1_1_1"></span>
									<span class="party_2_2_1_1_2">
										<a href="#" title="${original.songName }">
											<img src="${original.songImg }"/>
										</a>
									</span>
									<span class="party_2_2_1_1_3">
										<i>${original.songName }</i>
									</span>
									<span class="party_2_2_1_1_4">
										<i>${original.songWords }</i>
									</span>
									<div class="party_2_2_1_1_5">
										<span class="party_2_2_1_1_5_1">
											${original.songSinger }
										</span>
										<span class="party_2_2_1_1_5_2">
											<a href="#" title="����">����</a>
										</span>
									</div>
									<div class="party_2_2_1_1_6">
										<a href="#" title="${original.songURL }">${original.songURL }</a>
										<span></span>
									</div>
								</li>
							</c:forEach>
							<c:forEach items="${songOriginal}" var="original" begin="1" end="4" varStatus="status">
								<li class="party_2_2_1_2">
									<span>
										${status.index+1 }
									</span>
									<a href="#" title="${original.songName }">
										<img src="${original.songImg }"/>
									</a>
									<div class="party_2_2_1_2_1">
										<a href="#" title="${original.songName }">${original.songName }</a>
										<div>
											${original.songWords }
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					</div>
				</div>
			</div>
			<!-- MV�Ȳ� -->
			<div class="MV">
				<div class="MV_1">
					<div class="MV_1_1">
						<div class="MV_1_1_1">MV�Ȳ�</div>
						<div class="MV_1_1_2"><a href="#" title="�ṷ���ֺ�2013�ٷ��������">�ṷ���ֺ�2013�ٷ��������</a></div>
						<div class="MV_1_1_3"><a href="#" title="����">����</a></div>
					</div>
					<div class="MV_1_2">
						<c:forEach items="${songMV }" var="MV" varStatus="status">
							<div class="MV_1_2_1">
								<a class="MV_1_2_1_1">
									<img src="${MV.songImg }"/>
									<b></b>
									<i></i>
								</a>
								<a class="MV_1_2_1_2">${MV.songName }</a>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="MV_2">
					<div class="MV_2_1">
						<div class="MV_2_1_1">�����Ƽ�</div>
						<div class="MV_2_1_2"><a href="#" title="����">����</a>
						</div>
					</div>
					<div class="MV_2_2">
						<div class="MV_2_2_1">
							<a href="#" title="ɽ�����ӡ��й��������������δ�ʹ">
								<img src="images/20130711103847125899.jpg" />
							</a>
						</div>
						<div class="MV_2_2_2">
							<a title="ɽ�����ӡ��й��������������δ�ʹ" href="#">ɽ�����ӡ��й��������������δ�ʹ</a>
						</div>
					</div>
					<div class="MV_2_3">
						<a title="�������Ӵ���ż��ѡ���������й���֮����" href="#">�������Ӵ���ż��ѡ���������й���֮����</a>
						<a title="��ӥ��ͨ��ʽ�Ƴ��ٶ��桶���Ǹ��֡�" href="#">��ӥ��ͨ��ʽ�Ƴ��ٶ��桶���Ǹ��֡�</a>
					</div>
				</div>
			</div>
			<!-- ������� -->
			<div class="partner">
				<div class="partner_1">
					<div class="partner_1_1">
						�������
					</div>
					<div class="partner_1_2">
						<a href="#" title="����">����</a>
					</div>
				</div>
				<div class="partner_2">
					<c:forEach items = "${cooperate }" var="co" varStatus="status">
						<a href="${co.cooperateURL }" title="${co.cooperateName }">${co.cooperateName }</a>
					</c:forEach>
				</div>
			</div>
			<!-- ���� -->
			<div class="foot">
				<p>����������������ͨ��P2P���繲����վδ��һһ��ˣ������ַ���Ȩ�뼰ʱ����market@kugou.com����ʾ��Ȩ֤�������ǽ���24Сʱ��ɾ����</p>	
			</div>
			<!-- �ṷ�ײ� -->
			<div style = "width:960px;height:110px;">
				<div class="links">
				  <div class="kugou"></div>
					  <a href="#" >���ڿṷ</a> |
					  <a href="#" >������</a> |
					  <a href="#" >��������</a> |
					  <a href="#" >��Ƹ��Ϣ</a> |
					  <a href="#" >�ͷ�����</a> | 
					  <a href="#" >�û����������ƻ�</a>
					  <strong>
						 <a href="#">�ṷ2013�ٷ��������</a>
					  </strong>
				  <br />
					<span>�����������֤1910564�� ������[2010]175�� Copyright (C) 2004-2013 KuGou-Inc.All Rights Reserved</span>
				  <br />
					 <span>��ֵ����ҵ��Ӫ���֤��B2-20060339 ��ICP��09017694��-2 &nbsp;
						<a href="#">
							 <img alt="" src="images/logo_down.jpg" style="width:20px;height:20px" />
						</a>
				  </span>
				</div>
			</div>
		</div> 
		<script type="text/javascript" src="js/jquery-1.9.js"></script>
		<script type="text/javascript" src="js/test.js"></script>
		<!-- ��͸������ -->
		<div class="mask" id="mask" style="display:none;"></div>
		<!-- ��½ -->
		<div class="login" id="login" style="display: none;">
			<div class="login_1">
				<a title="�ر�" onclick="EscInfo()">
					<img src="images/logo-2-2.jpg" />
				</a>
			</div>
			<div class="login_2"></div>
			<!--<form action="LoginDo" method="post" onsubmit="return confirmation()">-->
			<script type="text/javascript" src="js/common.js"></script>
			<script type="text/javascript">
				$(function(){
					$("#commit").click(function(){
						if($("#loginName").val() == null || $("#loginName").val() == "�������˺���������" || $("#loginName").val() == ""){
							$("#login_1_1").html("�˺Ų���Ϊ�գ�");
						}else if($("#loginPwd").val() == null || $("#loginPwd").val() == ""){
							$("#login_1_1").html("���벻��Ϊ�գ�")
						}else{
							$.ajax({dataType: "text",type: "get",url: "LoginDo",data: "name="+$("#loginName").val()+"&"+"pwd="+$("#loginPwd").val(),success: function(msg){
							    if(msg.trim() == "true"){
									location.reload();
									}else{
										$("#login_1_1").html("�˺Ż��������")
									}
							   }
							});
						}
					});
				});
				
			</script>
				<div class="login_3">
					<div class="login_3_0">
						<p id="login_1_1"></p>
					</div>
					<div class="login_3_1">
						<label>�ʺţ�</label>
						<input type="text" value="�������˺���������" maxlength="15" id="loginName" name="loginName" onclick="clickLogin()" onblur="mouserLogin()" />
					</div>
					<br />
					<div class="login_3_1">
						<label>���룺</label>
						<input type="password" maxlength="25" value="" id="loginPwd" name="loginPwd"/>
					</div>
					<div class="login_3_2">
						<div class="login_3_2_1">
							<input type="submit" value="" id = "commit" />
						</div>
						<div class="login_3_2_2">
							<a href="#" title="��������">��������</a>
							<a href="sonclass/Register.jsp" title="ע���û�">ע���û�</a>
							<span class="login_3_2_2_1">������ʽ��¼��</span>
							<span class="login_3_2_2_2">
								<a href="#" title="" class="login_3_2_2_2_1" ></a>
								<a href="#" title="" class="login_3_2_2_2_2" ></a>
								<a href="#" title="" class="login_3_2_2_2_3" ></a>
								<a href="#" title="" class="login_3_2_2_2_4" ></a>
							</span>
						</div>
					</div>
				</div>
			<!-- </form> -->
		</div>
	</body>
</html>
