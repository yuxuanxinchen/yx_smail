package com.tian.cotrller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.impl.interceptors.PINoOpHandlerImpl;
import com.sun.java.swing.plaf.windows.resources.windows;
import com.tian.entity.Users;
import com.tian.service.UserService;
import com.tian.service.impl.UserServiceImpl;

public class ProvingDo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			String name = request.getParameter("name");
			UserService uService = new UserServiceImpl();
			boolean user = uService.getAllUserInfoById(name);
				PrintWriter out = response.getWriter();
				response.setCharacterEncoding("gbk");
				out.print(user);
				out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
