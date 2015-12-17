package com.tian.cotrller;

import java.io.IOException;
import java.io.PrintWriter;

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

public class AdminLogin extends HttpServlet {

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
		response.setCharacterEncoding("gbk");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String ip = request.getRemoteAddr();
		
		Record r = new Record(ip,name);
		
		RecordService rs = new RecordServiceImpl();
		rs.recordInfo(r);
		
		
		AdminService adminService = new AdminServiceImpl();
		Admins admins = adminService.getAllAdminInfo(name, pwd);
		boolean result = false;
		if(admins != null){
			session.setAttribute("admins", admins);
			result = true;
			out.print(result);
			out.close();
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
