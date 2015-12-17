package com.tian.cotrller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tian.entity.Admins;
import com.tian.entity.Record;
import com.tian.service.AdminService;
import com.tian.service.RecordService;
import com.tian.service.impl.AdminServiceImpl;
import com.tian.service.impl.RecordServiceImpl;

public class indexDo extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("gbk");
		

		HttpSession session = request.getSession();

		//PrintWriter out = response.getWriter();
		//查询登录信息操作
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		AdminService adminService = new AdminServiceImpl();
		Admins admins = adminService.getAllAdminInfo(name, pwd);
		session.setAttribute("admins", admins);
		//查询管理员信息操作
		RecordService rService = new RecordServiceImpl();
		List<Record> record = rService.getAllRecordInfo();
		session.setAttribute("record", record);
		
		//查询管理员登录次数
		int re = rService.getAllRecordcount(name);
		session.setAttribute("re", re);
		
		//session.setAttribute("re",re);
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
