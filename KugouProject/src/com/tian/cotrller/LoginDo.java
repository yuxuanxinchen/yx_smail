package com.tian.cotrller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tian.entity.Users;
import com.tian.service.UserService;
import com.tian.service.impl.UserServiceImpl;

/**
 * 登陆业务逻辑类
 * @author Administrator
 *
 */
public class LoginDo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("gbk");
		//创建session对象
		HttpSession session  = request.getSession();
		//创建out对象
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		UserService uService = new UserServiceImpl();
		Users user = uService.getAllUserInfoByName(name, pwd);
		boolean result = false;
		if(user != null){
			result = true;
		}
		session.setAttribute("user", user);
			out.println(result);
			out.close();
		
		
		
		
//		if(user != null){
//			Cookie cookie = new Cookie("user", user.getUserName());
//			cookie.setMaxAge(360*24*1000*30);
//			response.addCookie(cookie);
//			session.setAttribute("user", new Users(name, pwd));
//			if(user.getUserPower() == 1){
//				out.print("<script>location.href='Backstage.jsp';</script>");
//			}else{
//			out.print("<script>location.href='WinLoad';</script>");
//			}
//		}else{
//			out.println(user);
//			out.close();
//		}
		
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
	
}
