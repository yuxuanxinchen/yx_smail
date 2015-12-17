package com.tian.cotrller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tian.entity.Users;
import com.tian.service.UserService;
import com.tian.service.impl.UserServiceImpl;

/**
 * 注册用户
 * @author Administrator
 *
 */
public class insertDo extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		//获取信息
		String name = request.getParameter("userName");
		String email = request.getParameter("userEmail");
		String pwd = request.getParameter("userPassword");
		//创建Usreservice对象
		UserService uService = new UserServiceImpl();
		//生成用户信息
		Users us = new Users(name,email,pwd);
		//创建对象存入数据库
		if(uService.insertUserInfo(us)){
			request.setAttribute("name", name);
			request.getRequestDispatcher("Succeed.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}
		
	}
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
