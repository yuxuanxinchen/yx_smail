﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.io.OutputStream"%>
<%@ page import="java.awt.Color"%>
<%@ page import="java.awt.Font"%>
<%@ page import="java.awt.Graphics"%>
<%@ page import="java.awt.image.BufferedImage"%>
<%@ page import="javax.imageio.ImageIO"%>
<%
	int width = 60;
	int height = 32;
	BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);//创建图片
	Graphics g = image.getGraphics(); //创建画笔
	g.setColor(new Color(0xDCDCDC));//设置颜色
	g.fillRect(0, 0, width, height);
	g.setColor(Color.black);
	g.drawRect(0, 0, width - 1, height - 1);
	Random rdm = new Random();
	String hash1 = Integer.toHexString(rdm.nextInt());
	System.out.print(hash1);
	for (int i = 0; i < 50; i++) {
		int x = rdm.nextInt(width);
		int y = rdm.nextInt(height);
		g.drawOval(x, y, 0, 0);
	}
	String capstr = hash1.substring(0, 4);
	session.setAttribute("validateCode", capstr);
	g.setColor(new Color(0, 100, 0));
	g.setFont(new Font("Candara", Font.BOLD, 24));
	g.drawString(capstr, 8, 24);
	g.dispose();
	response.setContentType("image/jpeg");
	out.clear();
	out = pageContext.pushBody();
	OutputStream strm = response.getOutputStream();
	ImageIO.write(image, "jpeg", strm);
	strm.close();
%>